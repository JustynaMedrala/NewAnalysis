/**
 *  @copyright Copyright 2020 The J-PET Framework Authors. All rights reserved.
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may find a copy of the License in the LICENCE file.
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 *  @file EventCategorizer.cpp
 */

#include <JPetOptionsTools/JPetOptionsTools.h>
#include <JPetWriter/JPetWriter.h>
#include "EventCategorizerTools.h"
#include "EventCategorizer.h"
#include <iostream>

using namespace jpet_options_tools;
using namespace std;

EventCategorizer::EventCategorizer(const char* name): JPetUserTask(name) {}

EventCategorizer::~EventCategorizer() {}

bool EventCategorizer::init()
{
  INFO("Event categorization started.");
  // Parameter for back to back categorization
  if (isOptionSet(fParams.getOptions(), kBack2BackSlotThetaDiffParamKey)){
    fB2BSlotThetaDiff = getOptionAsFloat(fParams.getOptions(), kBack2BackSlotThetaDiffParamKey);
  } else {
    WARNING(Form(
      "No value of the %s parameter provided by the user. Using default value of %lf.",
      kBack2BackSlotThetaDiffParamKey.c_str(), fB2BSlotThetaDiff
    ));
  }
  // Parameter for scattering determination
  if (isOptionSet(fParams.getOptions(), kScatterTOFTimeDiffParamKey)) {
    fScatterTOFTimeDiff = getOptionAsFloat(fParams.getOptions(), kScatterTOFTimeDiffParamKey);
  } else {
    WARNING(Form(
      "No value of the %s parameter provided by the user. Using default value of %lf.",
      kScatterTOFTimeDiffParamKey.c_str(), fScatterTOFTimeDiff
    ));
  }
  // Parameters for deexcitation TOT cut
  if (isOptionSet(fParams.getOptions(), kDeexTOTCutMinParamKey)) {
    fDeexTOTCutMin = getOptionAsFloat(fParams.getOptions(), kDeexTOTCutMinParamKey);
  } else {
    WARNING(Form(
      "No value of the %s parameter provided by the user. Using default value of %lf.",
      kDeexTOTCutMinParamKey.c_str(), fDeexTOTCutMin
    ));
  }
  if (isOptionSet(fParams.getOptions(), kDeexTOTCutMaxParamKey)) {
    fDeexTOTCutMax = getOptionAsFloat(fParams.getOptions(), kDeexTOTCutMaxParamKey);
  } else {
    WARNING(Form(
      "No value of the %s parameter provided by the user. Using default value of %lf.",
      kDeexTOTCutMaxParamKey.c_str(), fDeexTOTCutMax
    ));
  }
  if (isOptionSet(fParams.getOptions(), kMaxTimeDiffParamKey)) {
    fMaxTimeDiff = getOptionAsFloat(fParams.getOptions(), kMaxTimeDiffParamKey);
  } else {
    WARNING(Form("No value of the %s parameter provided by the user. Using default value of %lf.", kMaxTimeDiffParamKey.c_str(), fMaxTimeDiff));
  }
  // Getting bool for saving histograms
  if (isOptionSet(fParams.getOptions(), kSaveControlHistosParamKey)) {
    fSaveControlHistos = getOptionAsBool(fParams.getOptions(), kSaveControlHistosParamKey);
  }
  if (isOptionSet(fParams.getOptions(), kTOTCalculationType)) {
    fTOTCalculationType = getOptionAsString(fParams.getOptions(), kTOTCalculationType);
  } else {
    WARNING("No TOT calculation option given by the user. Using standard sum.");
  }


  // Input events type
  fOutputEvents = new JPetTimeWindow("JPetEvent");
  // Initialise hisotgrams
  if(fSaveControlHistos) initialiseHistograms();
  return true;
}

bool EventCategorizer::exec()
{
  if (auto timeWindow = dynamic_cast<const JPetTimeWindow* const>(fEvent)) {
    vector<JPetEvent> events;
    for (uint i = 0; i < timeWindow->getNumberOfEvents(); i++) {
      const auto& event = dynamic_cast<const JPetEvent&>(timeWindow->operator[](i));

      // Check types of current event
      bool is2Gamma = EventCategorizerTools::checkFor2Gamma(
        event, getStatistics(), fSaveControlHistos, fB2BSlotThetaDiff, fMaxTimeDiff
      );
      bool is3Gamma = EventCategorizerTools::checkFor3Gamma(
        event, getStatistics(), fSaveControlHistos
      );
      bool isPrompt = EventCategorizerTools::checkForPrompt(
        event, getStatistics(), fSaveControlHistos, fDeexTOTCutMin, fDeexTOTCutMax, fTOTCalculationType
      );
      bool isScattered = EventCategorizerTools::checkForScatter(
        event, getStatistics(), fSaveControlHistos, fScatterTOFTimeDiff, fTOTCalculationType
      );
      bool is1Gamma = EventCategorizerTools::checkFor1Gamma(
	event, fDeexTOTCutMin, fDeexTOTCutMax, getStatistics(), fSaveControlHistos
      );
      int whichIsPrompt = 1000;
      if(isPrompt) whichIsPrompt = EventCategorizerTools::checkWhichIsPrompt(
        event, getStatistics(), fSaveControlHistos, fDeexTOTCutMin, fDeexTOTCutMax, fTOTCalculationType
      );
      int whichIsPhoton1 = 0;
      int whichIsPhoton2 = 0;
      int whichIsPhoton3 = 0;
      double xi, yi, zi, Li, ti = 0;
      double kLightVelocity_cm_ps = 0.0299792458;

      JPetEvent newEvent = event;
      if(is2Gamma) newEvent.addEventType(JPetEventType::k2Gamma);
      if(is3Gamma) newEvent.addEventType(JPetEventType::k3Gamma);
      if(isPrompt) newEvent.addEventType(JPetEventType::kPrompt);
      if(isScattered) newEvent.addEventType(JPetEventType::kScattered);

      if(fSaveControlHistos){
	if(!isScattered&&is1Gamma&&isPrompt){
          if(event.getHits().size()==2&&whichIsPrompt != 1000){
       	    if(whichIsPrompt==0){ whichIsPhoton1=1;}
 	    else{whichIsPhoton1 = 0;}
            getStatistics().fillHistogram("Lifetime 1 Gamma", event.getHits().at(whichIsPrompt).getTime() - event.getHits().at(whichIsPhoton1).getTime());
	    getStatistics().fillHistogram("1Gamma_energy new", event.getHits().at(whichIsPhoton1).getEnergy());
            getStatistics().fillHistogram("1Gamma_time new", event.getHits().at(whichIsPhoton1).getTime());
	    ti = event.getHits().at(whichIsPhoton1).getTime();
	    xi = event.getHits().at(whichIsPhoton1).getPosX()*event.getHits().at(whichIsPhoton1).getPosX();
            yi = event.getHits().at(whichIsPhoton1).getPosY()*event.getHits().at(whichIsPhoton1).getPosY();
	    zi = event.getHits().at(whichIsPhoton1).getPosX()*event.getHits().at(whichIsPhoton1).getPosX();
            Li = sqrt(xi + yi + zi);
	    getStatistics().fillHistogram("ti*c-Li", abs(ti)*kLightVelocity_cm_ps-Li);
	  }
	}
	if(isPrompt&&whichIsPrompt != 1000){
	  getStatistics().fillHistogram("Prompt_energy new", event.getHits().at(whichIsPrompt).getEnergy());
          getStatistics().fillHistogram("Prompt_time new", event.getHits().at(whichIsPrompt).getTime());}
	if(is2Gamma&&!isScattered) num_2gamma_no_scatter += 1;
	if(is2Gamma&&isPrompt) num_2gamma_prompt += 1;
	if(is2Gamma&&!isScattered&&isPrompt&&whichIsPrompt != 1000) num_2gamma_no_scatter_prompt += 1;
	if(is3Gamma&&!isScattered) num_3gamma_no_scatter += 1;
        if(is3Gamma&&isPrompt) num_3gamma_prompt += 1;
        if(is3Gamma&&!isScattered&&isPrompt&&whichIsPrompt != 1000) num_3gamma_no_scatter_prompt += 1;

	if(isPrompt&&whichIsPrompt == 1000) num_improper_prompt += 1;
	if(is2Gamma&&isPrompt){
	  if(event.getHits().size()==3&&whichIsPrompt != 1000){
	    whichIsPhoton1 = (whichIsPrompt+1)%3; 
       	    whichIsPhoton2 = (whichIsPrompt+2)%3;
            getStatistics().fillHistogram("Lifetime 2 Gamma", event.getHits().at(whichIsPrompt).getTime()-(event.getHits().at(whichIsPhoton1).getTime()+event.getHits().at(whichIsPhoton2).getTime())/2.);}
	}
        if(is3Gamma&&isPrompt&&!isScattered){
          if(event.getHits().size()==4&&whichIsPrompt != 1000){
            whichIsPhoton1 = (whichIsPrompt+1)%4;
            whichIsPhoton2 = (whichIsPrompt+2)%4;
	    whichIsPhoton3 = (whichIsPrompt+3)%4;
	    double time = event.getHits().at(whichIsPhoton1).getTime()+event.getHits().at(whichIsPhoton2).getTime()+event.getHits().at(whichIsPhoton3).getTime();
            getStatistics().fillHistogram("Lifetime 3 Gamma", event.getHits().at(whichIsPrompt).getTime()-(time/3.));}
        }

	if(is2Gamma){
	  for(auto hit : event.getHits()){ 
	    getStatistics().fillHistogram("2Gamma_energy", hit.getEnergy());
            getStatistics().fillHistogram("2Gamma_time", hit.getTime());
	    if(isPrompt==0){
	      //num_2gamma_prompt += 1;
	      //cout<<hit.getEnergy()<<endl;
	      getStatistics().fillHistogram("2Gamma_energy new", hit.getEnergy());
              getStatistics().fillHistogram("2Gamma_time new", hit.getTime());}
	  }
	}
	for(auto hit : event.getHits()){
          getStatistics().fillHistogram("All_XYpos", hit.getPosX(), hit.getPosY());
	  getStatistics().fillHistogram("All_energy", hit.getEnergy());
	  getStatistics().fillHistogram("All_time", hit.getTime());
	  if(is3Gamma){
		getStatistics().fillHistogram("3Gamma_energy", hit.getEnergy());
		getStatistics().fillHistogram("3Gamma_time", hit.getTime());}
	  if(isPrompt){
		getStatistics().fillHistogram("Prompt_energy", hit.getEnergy());
		getStatistics().fillHistogram("Prompt_time", hit.getTime());}
	  if(isScattered){
		getStatistics().fillHistogram("Scattered_energy", hit.getEnergy());
		getStatistics().fillHistogram("Scattered_time", hit.getTime());}
	  if(is1Gamma&&!isScattered){
		getStatistics().fillHistogram("1Gamma_energy", hit.getEnergy());
                getStatistics().fillHistogram("1Gamma_time", hit.getTime());}
        }
      }
      events.push_back(newEvent);
    }
    saveEvents(events);
  } else { return false; }
  return true;
}

bool EventCategorizer::terminate()
{
  INFO("Event categorization completed.");
  return true;
}

void EventCategorizer::saveEvents(const vector<JPetEvent>& events)
{
  for (const auto& event : events) { fOutputEvents->add<JPetEvent>(event); }
}

void EventCategorizer::initialiseHistograms(){

  // General histograms
  getStatistics().createHistogramWithAxes(
    new TH2D("All_XYpos", "Hit position XY", 240, -60.25, 59.75, 240, -60.25, 59.75),
    "Hit X position [cm]", "Hit Y position [cm]"
  );
  getStatistics().createHistogramWithAxes(
    new TH1D("All_energy", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("All_time", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );

  // Histograms for 2Gamma category
  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_Zpos", "Z-axis position of 2 gamma hits", 201, -50.25, 50.25),
    "Z axis position [cm]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_DLOR", "Delta LOR distance", 100, -0.25, 49.25),
    "Delta LOR [cm]", "Counts"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_ThetaDiff", "Angle difference of 2 gamma hits ", 181, -0.5, 180.5),
    "Hits theta diff [deg]", "Counts"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_TimeDiff", "Time difference of 2 gamma hits", 200, -10100.0, 99900.0),
    "Time Difference [ps]", "Number of Hit Pairs"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_EnergyDiff", "Energy difference of 2 gamma hits", 200, 0, 2000),
    "Energy Difference [keV]", "Number of Hit Pairs"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_Dist", "B2B hits distance", 150, -0.5, 149.5),
    "Distance [cm]", "Number of Hit Pairs"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Annih_TOF", "Annihilation pairs Time of Flight", 201, -3015.0, 3015.0),
    "Time of Flight [ps]", "Number of Annihilation Pairs"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("AnnihPoint_XY", "XY position of annihilation point", 240, -60.25, 59.75, 240, -60.25, 59.75),
    "X position [cm]", "Y position [cm]"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("AnnihPoint_ZX", "ZX position of annihilation point", 240, -60.25, 59.75, 240, -60.25, 59.75),
    "Z position [cm]", "X position [cm]"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("AnnihPoint_ZY", "ZY position of annihilation point", 240, -60.25, 59.75, 240, -60.25, 59.75),
    "Z position [cm]", "Y position [cm]"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Annih_DLOR", "Delta LOR distance of annihilation photons", 100, -0.25, 49.25),
    "Delta LOR [cm]", "Counts"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_energy", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_time", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_energy new", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("2Gamma_time new", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Lifetime 2 Gamma", "Lifeime", 200, -5e3, 5e3),
    "Time [ps]", "Number of Hits"
  );

  // Histograms for 3Gamama category
  getStatistics().createHistogramWithAxes(
    new TH2D("3Gamma_Angles", "Relative angles - transformed", 250, -0.5, 249.5, 20, -0.5, 199.5),
    "Relative angle 1-2", "Relative angle 2-3"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("3Gamma_energy", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("3Gamma_time", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Lifetime 3 Gamma", "Lifeime", 200, -5e3, 5e3),
    "Time [ps]", "Number of Hits"
  );

  // Histograms for scattering category
  getStatistics().createHistogramWithAxes(
    new TH1D("ScatterTOF_TimeDiff", "Difference of Scatter TOF and hits time difference",
    3.0*fScatterTOFTimeDiff, -0.5, 3.0*fScatterTOFTimeDiff-0.5),
    "Scat_TOF - time diff [ps]", "Number of Hit Pairs"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("ScatterAngle_PrimaryTOT_before_cut", "Angle of scattering vs. TOT of primary hits before cut",
    200, -0.5, 199.5, 100, -0, 2e3),
    "Scattering Angle", "TOT of primary hit [ps]"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("ScatterAngle_ScatterTOT_before_cut", "Angle of scattering vs. TOT of scattered hits before cut",
    200, -0.5, 199.5, 100, -0, 2e3),
    "Scattering Angle", "TOT of scattered hit [ps]"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("ScatterAngle_PrimaryTOT", "Angle of scattering vs. TOT of primary hits",
    200, -0.5, 199.5, 100, -0, 2e3),
    "Scattering Angle", "TOT of primary hit [ps]"
  );

  getStatistics().createHistogramWithAxes(
    new TH2D("ScatterAngle_ScatterTOT", "Angle of scattering vs. TOT of scattered hits",
    200, -0.5, 199.5, 100, -0, 2e3),
    "Scattering Angle", "TOT of scattered hit [ps]"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Scattered_energy", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Scattered_time", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hit"
  );


  getStatistics().createHistogramWithAxes(
    new TH1D("Prompt_time new", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );


  // Histograms for deexcitation
  getStatistics().createHistogramWithAxes(
    new TH1D("Deex_TOT_cut", "TOT of all hits with deex cut (30,50) ns", 200, 500.0, 1500.0),
    "TOT [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Deex_TOT_anticut", "TOT of all hits without deex cut (30, 50)  ns", 200, -10.0,700.0),
    "TOT [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("Counter 1 Gamma distribution", "Counter 1 Gamma distribution", 10, -0.5,9.5),
    "Counter", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("1Gamma_energy", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("1Gamma_time", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("1Gamma_energy new", "Energy", 200, 0, 2000),
    "Energy [keV]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("1Gamma_time new", "Time", 200, -60e6, 10e6),
    "Time [ps]", "Number of Hits"
  );


  getStatistics().createHistogramWithAxes(
    new TH1D("Lifetime 1 Gamma", "Lifeime", 200, -5e3, 5e3),
    "Time [ps]", "Number of Hits"
  );

  getStatistics().createHistogramWithAxes(
    new TH1D("ti*c-Li", "|ti|c-Li", 200, -50, 1.7e6),
    "[cm]", "Number of Hits"
  );

}
