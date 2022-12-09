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

int num_prompt_bc = 0;
int num_prompt_ac = 0;
int num_2Gamma_bc = 0;
int num_2Gamma_ac = 0;
int num_3Gamma_bc = 0;
int num_3Gamma_ac = 0;
int num_scattered_bc = 0;
int num_scattered_ac = 0;
int num_1Gamma = 0;


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
  cout<<"Number of 2 Gamma before cut: "<<num_2Gamma_bc<<"\nNumber of 2 Gamma after cut: "<<num_2Gamma_ac<<endl;
  cout<<"Number of 3 Gamma before cut: "<<num_3Gamma_bc<<"\nNumber of 3 Gamma after cut: "<<num_3Gamma_ac<<endl;
  cout<<"Number of prompt before cut: "<<num_prompt_bc<<"\nNumber of prompt after cut: "<<num_prompt_ac<<endl;
  cout<<"Number of scatter before cut: "<<num_scattered_bc<<"\nNumber of scatter after cut: "<<num_scattered_ac<<endl;
  cout<<"Number of 1 Gamma: "<<num_1Gamma<<endl;
  cout<<"Efficiency: "<<float(num_1Gamma)/float(num_2Gamma_ac)<<endl;
  return EXIT_SUCCESS;
}
