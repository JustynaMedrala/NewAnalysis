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
 *  @file main.cpp
 */

#include "Downscaler.h"
#include "EventCategorizer.h"
#include "EventFinder.h"
#include "HitFinder.h"
#include "SignalFinder.h"
#include "SignalTransformer.h"
#include "TimeWindowCreator.h"
#include <JPetManager/JPetManager.h>

using namespace std;

int num_prompt_bc		 = 0;
int num_prompt_ac		 = 0;
int num_2Gamma_bc		 = 0;
int num_2Gamma_ac		 = 0;
int num_3Gamma_bc		 = 0;
int num_3Gamma_ac		 = 0;
int num_scattered_bc		 = 0;
int num_scattered_ac		 = 0;
int num_1Gamma			 = 0;
int num_2gamma_no_scatter 	 = 0;
int num_2gamma_prompt 		 = 0;
int num_2gamma_no_scatter_prompt = 0;
int num_3gamma_no_scatter 	 = 0;
int num_3gamma_prompt		 = 0;
int num_3gamma_no_scatter_prompt = 0;
int num_improper_prompt 	 = 0;

int main(int argc, const char* argv[])
{
  try
  {
    JPetManager& manager = JPetManager::getManager();

    //manager.registerTask<TimeWindowCreator>("TimeWindowCreator");
    //manager.registerTask<SignalFinder>("SignalFinder");
    //manager.registerTask<SignalTransformer>("SignalTransformer");
    //manager.registerTask<HitFinder>("HitFinder");
    manager.registerTask<EventFinder>("EventFinder");
    //manager.registerTask<Downscaler>("Downscaler");
    manager.registerTask<EventCategorizer>("EventCategorizer");

    //manager.useTask("TimeWindowCreator", "hld", "tslot.calib");
    //manager.useTask("SignalFinder", "tslot.calib", "raw.sig");
    //manager.useTask("SignalTransformer", "raw.sig", "phys.sig");
    //manager.useTask("HitFinder", "phys.sig", "hits");
    manager.useTask("EventFinder", "hits", "unk.evt");
    //manager.useTask("Downscaler", "unk.evt", "presel.evt");
    manager.useTask("EventCategorizer", "unk.evt", "cat.evt");

    manager.run(argc, argv);
  }
  catch (const std::exception& except)
  {
    std::cerr << "Unrecoverable error occured:" << except.what() << "Exiting the program!" << std::endl;
    return EXIT_FAILURE;
  }
  cout<<"Number of 2 Gamma before cut: "<<num_2Gamma_bc<<" Number of 2 Gamma after cut: "<<num_2Gamma_ac<<" Efficiency: "<<num_2Gamma_ac/double(num_2Gamma_bc)<<endl;
  cout<<"Number of 3 Gamma before cut: "<<num_3Gamma_bc<<" Number of 3 Gamma after cut: "<<num_3Gamma_ac<<" Efficiency: "<<num_3Gamma_ac/double(num_3Gamma_bc)<<endl;
  cout<<"Number of prompt before cut: "<<num_prompt_bc<<" Number of prompt after cut: "<<num_prompt_ac<<" Efficiency: "<<num_prompt_ac/double(num_prompt_bc)<<endl;
  cout<<"Number of scattered before cut: "<<num_scattered_bc<<"Number of scattered after cut: "<<num_scattered_ac<<" Efficiency: "<<num_scattered_ac/double(num_scattered_bc)<<endl;
  cout<<"Number of 1 Gamma: "<<num_1Gamma<<endl;
  cout<<"Efficiency (1 gamma/ 2 gamma): "<<float(num_1Gamma)/float(num_2Gamma_ac)<<endl;
  cout<<"is2Gamma&&!isScattered: "<<num_2gamma_no_scatter<<" is2Gamma&&isPrompt: "<<num_2gamma_prompt<<" is2Gamma&&isPrompt&&!isScattered: "<<num_2gamma_no_scatter_prompt<<endl;
  cout<<"is3Gamma&&!isScattered: "<<num_3gamma_no_scatter<<" is3Gamma&&isPrompt: "<<num_3gamma_prompt<<" is3Gamma&&isPrompt&&!isScattered: "<<num_3gamma_no_scatter_prompt<<endl;
  cout<<"More that 1 prompt: "<<num_improper_prompt<<endl;
  return EXIT_SUCCESS; 
}


