package §"a§
{
   public class §=!,§ extends §8P§
   {
       
      
      public function §=!,§(param1:§>X§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §"N§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §"N§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §"N§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §"N§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializePigAnimations() : void
      {
         super.initializePigAnimations();
         §'U§("PIGLETTE_TRECOOL",[["normal",["PIGLETTE_TRECOOL_01","PIGLETTE_TRECOOL_02","PIGLETTE_TRECOOL_03"]],["blink",["PIGLETTE_TRECOOL_01_BLINK","PIGLETTE_TRECOOL_02_BLINK","PIGLETTE_TRECOOL_03_BLINK"]],["yell",["PIGLETTE_TRECOOL_01_SMILE","PIGLETTE_TRECOOL_02_SMILE","PIGLETTE_TRECOOL_03_SMILE"]]]);
         §'U§("PIGLETTE_BILLIEJOE",[["normal",["PIGLETTE_BILLIEJOE_01","PIGLETTE_BILLIEJOE_02","PIGLETTE_BILLIEJOE_03"]],["blink",["PIGLETTE_BILLIEJOE_01_BLINK","PIGLETTE_BILLIEJOE_02_BLINK","PIGLETTE_BILLIEJOE_03_BLINK"]],["yell",["PIGLETTE_BILLIEJOE_01_SMILE","PIGLETTE_BILLIEJOE_02_SMILE","PIGLETTE_BILLIEJOE_03_SMILE"]]]);
         §'U§("PIGLETTE_MIKE",[["normal",["PIGLETTE_MIKE_01","PIGLETTE_MIKE_02","PIGLETTE_MIKE_03"]],["blink",["PIGLETTE_MIKE_01_BLINK","PIGLETTE_MIKE_02_BLINK","PIGLETTE_MIKE_03_BLINK"]],["yell",["PIGLETTE_MIKE_01_SMILE","PIGLETTE_MIKE_02_SMILE","PIGLETTE_MIKE_03_SMILE"]]]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
   }
}
