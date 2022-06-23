package §9K§
{
   public class §9!E§ extends §"!?§
   {
       
      
      public function §9!E§(param1:§5!H§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.initializeAnimations(param1);
            if(_loc3_ || _loc2_)
            {
               §]! §("POWERUP_BOMB",["POWERUP_DROP_01"]);
               if(!_loc2_)
               {
                  §§goto(addr51);
               }
               §§goto(addr86);
            }
            §§goto(addr68);
         }
         addr51:
         §]! §("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         if(!_loc2_)
         {
            addr68:
            §]! §("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
            if(!(_loc2_ && _loc2_))
            {
               §]! §("LASER_DOT",["LASER_DOT"]);
               addr86:
               §]! §("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
            }
            §§goto(addr86);
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.initializePigAnimations();
            §§push(§§findproperty(§2]§));
            §§push("PIG_INTEL_PIGLETTE_SMALL");
            §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
            if(_loc2_ || this)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            §§push(§§findproperty(§2]§));
            §§push("PIG_INTEL_PIGLETTE_MEDIUM");
            §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
            if(_loc2_ || this)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            §§push(§§findproperty(§2]§));
            §§push("PIG_INTEL_PIGLETTE_BIG");
            §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            if(!_loc1_)
            {
               §§push(§§findproperty(§2]§));
               §§push("PIG_INTEL_PIGLETTE_HELMET");
               §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§2]§(§§pop(),§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  addr146:
                  §§push(§§findproperty(§2]§));
                  §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§2]§(§§pop(),§§pop());
                  §§push(§§findproperty(§2]§));
                  §§push("PIG_INTEL_PIGLETTE_KING");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]]);
                  if(!(_loc1_ && this))
                  {
                     §§push(null);
                  }
                  §§pop().§2]§(§§pop(),§§pop());
               }
               return;
            }
         }
         §§goto(addr146);
      }
   }
}
