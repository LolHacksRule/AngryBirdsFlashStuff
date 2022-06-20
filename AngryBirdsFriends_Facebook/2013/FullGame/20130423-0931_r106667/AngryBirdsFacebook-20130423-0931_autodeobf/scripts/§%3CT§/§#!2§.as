package §<T§
{
   public class §#!2§ extends §^!Y§
   {
       
      
      public function §#!2§(param1:§`m§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         super.initializeAnimations(param1);
         §-x§("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
         §-x§("POWERUP_BOMB",["POWERUP_GIFT"]);
         §-x§("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
         §-x§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §-x§("LASER_DOT",["LASER_DOT"]);
         §-x§("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
         §-x§("SMOKE_CANNONCLOUD",["SMOKE_CANNONCLOUD_1","SMOKE_CANNONCLOUD_2","SMOKE_CANNONCLOUD_3","SMOKE_CANNONCLOUD_4","SMOKE_CANNONCLOUD_5","SMOKE_CANNONCLOUD_6"]);
         §-x§("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         §-x§("POWERUP_SLINGSHOT_LIGHTNING",["POWERUP_EFFECT_LIGHTNING_1","POWERUP_EFFECT_LIGHTNING_2","POWERUP_EFFECT_LIGHTNING_3","POWERUP_EFFECT_LIGHTNING_4","POWERUP_EFFECT_LIGHTNING_5","POWERUP_EFFECT_LIGHTNING_6","POWERUP_EFFECT_LIGHTNING_7","POWERUP_EFFECT_LIGHTNING_8","POWERUP_EFFECT_LIGHTNING_9","POWERUP_EFFECT_LIGHTNING_10"]);
         §-x§("BLAST_EFFECT",["POWERUP_EFFECT_BLAST_1","POWERUP_EFFECT_BLAST_2","POWERUP_EFFECT_BLAST_3","POWERUP_EFFECT_BLAST_4"]);
         §-x§("STAR_PARTICLE",["POWERUP_EFFECT_STAR_1","POWERUP_EFFECT_STAR_2","POWERUP_EFFECT_STAR_3","POWERUP_EFFECT_STAR_4","POWERUP_EFFECT_STAR_5","POWERUP_EFFECT_STAR_6"]);
         §-x§("TELESCOPE_MOUNT",["POWERUP_EFFECT_TELESCOPE_1"]);
         §-x§("TELESCOPE_TUBE",["POWERUP_EFFECT_TELESCOPE_2"]);
         §-x§("EARTHQUAKE_DUST_CLOUD",["POWERUP_EFFECT_DUST_CLOUD_1"]);
         §-x§("EARTHQUAKE_PARTICLE_1",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_1"]);
         §-x§("EARTHQUAKE_PARTICLE_2",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_2"]);
         §-x§("EARTHQUAKE_PARTICLE_3",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_3"]);
         §-x§("EARTHQUAKE_PARTICLE_4",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_4"]);
         §-x§("EARTHQUAKE_PARTICLE_5",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_5"]);
         §-x§("EARTHQUAKE_PARTICLE_6",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_6"]);
         §-x§("WINGMAN_EFFECT_1",["WINGMAN_EFFECTS_1"]);
         §-x§("WINGMAN_EFFECT_2",["WINGMAN_EFFECTS_2"]);
         §-x§("WINGMAN_EFFECT_3",["WINGMAN_EFFECTS_3"]);
         §-x§("WINGMAN_EFFECT_4",["WINGMAN_EFFECTS_4"]);
         §-x§("WINGMAN_EFFECT_5",["WINGMAN_EFFECTS_5"]);
         §-x§("WINGMAN_EFFECT_6",["WINGMAN_EFFECTS_6"]);
         §-x§("WINGMAN_EFFECT_7",["WINGMAN_EFFECTS_7"]);
         §-x§("SMOKE_CANNONCLOUD_VALENTINE",["SMOKE_HEARTCANNONCLOUD_1","SMOKE_HEARTCANNONCLOUD_2","SMOKE_HEARTCANNONCLOUD_3","SMOKE_HEARTCANNONCLOUD_4","SMOKE_HEARTCANNONCLOUD_5"]);
         §&"0§("MISC_FAIRY_BLOCK_4X4",[["normal",["MISC_WONDERLAND_GLOBE_1"]],["special",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"]]]);
         §-x§("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
         for each(_loc2_ in [{
            "name":"PARTICLE_CHROME_GREEN_",
            "count":3
         },{
            "name":"PARTICLE_CHROME_RED_",
            "count":3
         }])
         {
            _loc3_ = 1;
            while(_loc3_ <= _loc2_.count)
            {
               §-x§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
               _loc3_++;
            }
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         super.initializePigAnimations();
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §&"0§("BIRD_VANTERRENCE",[["normal",["BIRD_VANTERENCE_1"]],["blink",["BIRD_VANTERENCE_BLINK"]],["fly",["BIRD_VANTERENCE_FLYING"]],["yell",["BIRD_VANTERENCE_YELL"]],["fly_yell",["BIRD_VANTERENCE_FLYING_YELL"]]]);
         §&"0§("BIRD_WINGMAN",[["normal",["BIRD_WINGMAN_1"]],["blink",["BIRD_WINGMAN_BLINK"]],["fly",["BIRD_WINGMAN_FLYING_1"]],["yell",["BIRD_WINGMAN_YELL"]],["fly_yell",["BIRD_WINGMAN_FLYING_YELL_1"]]]);
         §&"0§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
   }
}
