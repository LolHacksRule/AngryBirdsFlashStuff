package §[v§
{
   public class §1!2§ extends §7e§
   {
       
      
      public function §1!2§(param1:§0&§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §'j§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §'j§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §'j§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §'j§("LASER_DOT",["LASER_DOT"]);
         §'j§("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         §=!#§("MISC_FAIRY_BLOCK_4X4",[["normal",["MISC_WONDERLAND_GLOBE_1"]],["special",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"]]]);
         §'j§("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §=!#§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
   }
}
