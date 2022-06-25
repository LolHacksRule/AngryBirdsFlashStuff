package §=`§
{
   public class §-8§ extends §7!V§
   {
       
      
      public function §-8§(param1:§6!I§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.initializeAnimations(param1);
            while(true)
            {
               §0+§("POWERUP_BOMB",["POWERUP_DROP_01"]);
            }
            addr118:
         }
         loop1:
         while(true)
         {
            §0+§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
            loop2:
            while(true)
            {
               §0+§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
               while(true)
               {
                  §0+§("INTEL_SLINGSHOT",["INTEL_SLING_SHOT_01_BACK","INTEL_SLING_SHOT_01_FRONT"]);
                  for(; !(_loc2_ && _loc2_); §0+§("LASER_DOT",["LASER_DOT"]),do
                  {
                     §0+§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
                  }
                  while(_loc2_);
                  ,if(!_loc2_)
                  {
                     continue loop1;
                  })
                  {
                     if(_loc2_)
                     {
                        continue loop2;
                     }
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr118);
                  }
               }
            }
            if(!(_loc2_ && this))
            {
               return;
            }
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.initializePigAnimations();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§%!2§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(_loc2_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§%!2§));
                  §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§%!2§(§§pop(),§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§%!2§));
                     §§push("PIG_INTEL_PIGLETTE_BIG");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                     if(_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     loop3:
                     while(!_loc1_)
                     {
                        §§push(§§findproperty(§%!2§));
                        §§push("PIG_INTEL_PIGLETTE_HELMET");
                        §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
                        if(_loc2_)
                        {
                           §§push(null);
                        }
                        §§pop().§%!2§(§§pop(),§§pop());
                        loop4:
                        while(_loc2_)
                        {
                           §§push(§§findproperty(§%!2§));
                           §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                           §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                           if(!_loc1_)
                           {
                              §§push(null);
                           }
                           §§pop().§%!2§(§§pop(),§§pop());
                           loop5:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(§%!2§));
                                 §§push("PIG_INTEL_PIGLETTE_KING");
                                 §§push(["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]]);
                                 if(_loc2_)
                                 {
                                    §§push(null);
                                 }
                                 §§pop().§%!2§(§§pop(),§§pop());
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr88);
      }
   }
}
