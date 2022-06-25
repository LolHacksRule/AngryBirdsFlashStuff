package §^!Y§
{
   public class §^!'§ extends §else §
   {
       
      
      public function §^!'§(param1:§'R§)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §,!m§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               loop1:
               while(true)
               {
                  §,!m§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
                  while(true)
                  {
                     §,!m§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     while(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           §,!m§("INTEL_SLINGSHOT",["INTEL_SLING_SHOT_01_BACK","INTEL_SLING_SHOT_01_FRONT"]);
                           continue loop1;
                        }
                        continue loop0;
                        addr65:
                        if(_loc2_ || this)
                        {
                           loop6:
                           while(true)
                           {
                              §,!m§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr58:
                              while(!(_loc3_ && this))
                              {
                                 §§goto(addr65);
                                 continue loop6;
                              }
                              continue loop1;
                           }
                           return;
                           addr72:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.initializePigAnimations();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§>_§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§>_§(§§pop(),§§pop());
               while(true)
               {
                  §§push(§§findproperty(§>_§));
                  §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§>_§(§§pop(),§§pop());
                  continue loop0;
                  addr55:
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr138);
      }
   }
}
