package §,6§
{
   public class §]!D§ extends §>N§
   {
       
      
      public function §]!D§(param1:§!o§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §,!x§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               while(true)
               {
                  §,!x§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
                  while(!_loc2_)
                  {
                     §,!x§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,!x§("LASER_DOT",["LASER_DOT"]);
            while(_loc3_)
            {
               §,!x§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
            §§goto(addr74);
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.initializePigAnimations();
         }
         while(true)
         {
            §§push(§§findproperty(§?!%§));
            §§push("PIG_INTEL_PIGLETTE_SMALL");
            §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
            }
            §§pop().§?!%§(§§pop(),§§pop());
            loop1:
            while(true)
            {
               §§push(§§findproperty(§?!%§));
               §§push("PIG_INTEL_PIGLETTE_MEDIUM");
               §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
               if(!(_loc1_ && this))
               {
                  §§push(null);
               }
               §§pop().§?!%§(§§pop(),§§pop());
               loop2:
               while(true)
               {
                  §§push(§§findproperty(§?!%§));
                  §§push("PIG_INTEL_PIGLETTE_BIG");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§?!%§(§§pop(),§§pop());
                  while(_loc2_)
                  {
                     §§push(§§findproperty(§?!%§));
                     §§push("PIG_INTEL_PIGLETTE_HELMET");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
                     if(_loc2_ || this)
                     {
                        §§push(null);
                     }
                     §§pop().§?!%§(§§pop(),§§pop());
                     loop4:
                     while(_loc2_)
                     {
                        §§push(§§findproperty(§?!%§));
                        §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                        §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                        if(_loc2_)
                        {
                           §§push(null);
                        }
                        §§pop().§?!%§(§§pop(),§§pop());
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc2_ || _loc1_)
            {
               return;
            }
         }
      }
   }
}
