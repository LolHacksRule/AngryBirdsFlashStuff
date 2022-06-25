package §=`§
{
   public class §-8§ extends §7!V§
   {
       
      
      public function §-8§(param1:§6!I§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.initializeAnimations(param1);
         }
         while(true)
         {
            §0+§("POWERUP_BOMB",["POWERUP_DROP_01"]);
            loop1:
            while(true)
            {
               §0+§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
               addr122:
               while(true)
               {
                  §0+§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                  continue loop1;
               }
            }
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.initializePigAnimations();
            while(true)
            {
               §§push(§§findproperty(§%!2§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(_loc1_ || _loc2_)
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               while(_loc1_ || _loc2_)
               {
                  §§push(§§findproperty(§%!2§));
                  §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§%!2§(§§pop(),§§pop());
                  loop5:
                  while(!(_loc2_ && this))
                  {
                     §§push(§§findproperty(§%!2§));
                     §§push("PIG_INTEL_PIGLETTE_KING");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]]);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr60:
                     if(!(_loc2_ && _loc1_))
                     {
                        addr67:
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§%!2§));
                              §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                              §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                              if(!_loc2_)
                              {
                                 §§push(null);
                              }
                              §§pop().§%!2§(§§pop(),§§pop());
                              while(true)
                              {
                                 §§push(§§findproperty(§%!2§));
                                 §§push("PIG_INTEL_PIGLETTE_BIG");
                                 §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                                 if(_loc1_ || this)
                                 {
                                    §§push(null);
                                 }
                                 §§pop().§%!2§(§§pop(),§§pop());
                                 addr186:
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§findproperty(§%!2§));
                                       §§push("PIG_INTEL_PIGLETTE_HELMET");
                                       §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(null);
                                       }
                                       §§pop().§%!2§(§§pop(),§§pop());
                                       break loop5;
                                    }
                                    break;
                                    §§goto(addr60);
                                 }
                              }
                              §§goto(addr67);
                           }
                           addr260:
                        }
                        return;
                     }
                     §§goto(addr186);
                  }
               }
            }
         }
         §§goto(addr260);
      }
   }
}
