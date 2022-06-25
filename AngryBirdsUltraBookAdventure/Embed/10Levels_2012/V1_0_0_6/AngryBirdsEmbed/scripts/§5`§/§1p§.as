package §5`§
{
   public class §1p§ extends §+q§
   {
       
      
      public function §1p§(param1:§?y§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
            if(_loc3_)
            {
               §+"§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               §+"§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
               if(!(_loc2_ && param1))
               {
                  addr66:
                  §+"§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                  §+"§("LASER_DOT",["LASER_DOT"]);
                  if(_loc3_ || param1)
                  {
                     addr84:
                     §+"§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
                  }
               }
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr84);
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
            if(!_loc2_)
            {
               §§push(§§findproperty(§%Y§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(_loc1_ || _loc2_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               if(_loc1_)
               {
                  §§push(§§findproperty(§%Y§));
                  §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                  if(!_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
                  if(!_loc2_)
                  {
                     addr79:
                     §§push(§§findproperty(§%Y§));
                     §§push("PIG_INTEL_PIGLETTE_BIG");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                     if(_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§%Y§(§§pop(),§§pop());
                  }
                  §§push(§§findproperty(§%Y§));
                  §§push("PIG_INTEL_PIGLETTE_HELMET");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
                  §§push(§§findproperty(§%Y§));
                  §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
                  addr176:
                  §§push(§§findproperty(§%Y§));
                  §§push("PIG_INTEL_PIGLETTE_KING");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]]);
                  if(!_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
               }
               return;
            }
            §§goto(addr176);
         }
         §§goto(addr79);
      }
   }
}
