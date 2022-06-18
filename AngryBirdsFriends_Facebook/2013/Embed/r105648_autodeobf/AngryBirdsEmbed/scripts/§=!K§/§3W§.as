package §=!K§
{
   public class §3W§ extends §]!%§
   {
       
      
      public function §3W§(param1:§^Q§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §'!G§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §'!G§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §'!G§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §'!G§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
   }
}
