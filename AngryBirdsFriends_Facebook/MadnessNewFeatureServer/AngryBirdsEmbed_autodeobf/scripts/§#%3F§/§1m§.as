package §#?§
{
   public class §1m§ extends §=E§
   {
       
      
      public function §1m§(param1:§6!4§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §0!N§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §0!N§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §0!N§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §0!N§("LASER_DOT",["LASER_DOT"]);
         §0!N§("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         §"W§("MISC_FAIRY_BLOCK_4X4",[["normal",["MISC_WONDERLAND_GLOBE_1"]],["special",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"]]]);
         §0!N§("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §"W§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
   }
}
