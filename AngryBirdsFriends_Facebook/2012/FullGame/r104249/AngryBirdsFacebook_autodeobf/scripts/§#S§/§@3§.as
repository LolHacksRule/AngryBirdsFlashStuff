package §#S§
{
   public class §@3§ extends §+!;§
   {
       
      
      public function §@3§(param1:§?!?§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         super.initializeAnimations(param1);
         §`9§("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
         §`9§("POWERUP_BOMB",["POWERUP_GIFT"]);
         §`9§("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
         §`9§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §`9§("LASER_DOT",["LASER_DOT"]);
         §`9§("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
         §`9§("SMOKE_CANNONCLOUD",["SMOKE_CANNONCLOUD_1","SMOKE_CANNONCLOUD_2","SMOKE_CANNONCLOUD_3","SMOKE_CANNONCLOUD_4","SMOKE_CANNONCLOUD_5","SMOKE_CANNONCLOUD_6"]);
         §`9§("POWERUP_SLINGSHOT_LIGHTNING",["POWERUP_EFFECT_LIGHTNING_1","POWERUP_EFFECT_LIGHTNING_2","POWERUP_EFFECT_LIGHTNING_3","POWERUP_EFFECT_LIGHTNING_4","POWERUP_EFFECT_LIGHTNING_5","POWERUP_EFFECT_LIGHTNING_6","POWERUP_EFFECT_LIGHTNING_7","POWERUP_EFFECT_LIGHTNING_8","POWERUP_EFFECT_LIGHTNING_9","POWERUP_EFFECT_LIGHTNING_10"]);
         §`9§("BLAST_EFFECT",["POWERUP_EFFECT_BLAST_1","POWERUP_EFFECT_BLAST_2","POWERUP_EFFECT_BLAST_3","POWERUP_EFFECT_BLAST_4"]);
         §`9§("STAR_PARTICLE",["POWERUP_EFFECT_STAR_1","POWERUP_EFFECT_STAR_2","POWERUP_EFFECT_STAR_3","POWERUP_EFFECT_STAR_4","POWERUP_EFFECT_STAR_5","POWERUP_EFFECT_STAR_6"]);
         §`9§("TELESCOPE_MOUNT",["POWERUP_EFFECT_TELESCOPE_1"]);
         §`9§("TELESCOPE_TUBE",["POWERUP_EFFECT_TELESCOPE_2"]);
         §`9§("EARTHQUAKE_DUST_CLOUD",["POWERUP_EFFECT_DUST_CLOUD_1"]);
         §`9§("EARTHQUAKE_PARTICLE_1",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_1"]);
         §`9§("EARTHQUAKE_PARTICLE_2",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_2"]);
         §`9§("EARTHQUAKE_PARTICLE_3",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_3"]);
         §`9§("EARTHQUAKE_PARTICLE_4",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_4"]);
         §`9§("EARTHQUAKE_PARTICLE_5",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_5"]);
         §`9§("EARTHQUAKE_PARTICLE_6",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_6"]);
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
               §`9§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
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
         §>!^§("BIRD_VANTERRENCE",[["normal",["BIRD_VANTERENCE_1"]],["blink",["BIRD_VANTERENCE_BLINK"]],["fly",["BIRD_VANTERENCE_FLYING"]],["yell",["BIRD_VANTERENCE_YELL"]],["fly_yell",["BIRD_VANTERENCE_FLYING_YELL"]]]);
         §>!^§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
   }
}
