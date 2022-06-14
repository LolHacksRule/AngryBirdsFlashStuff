package §6!D§
{
   public class §7"?§ extends §[t§
   {
       
      
      public function §7"?§(param1:§0Y§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         super.initializeAnimations(param1);
         §<!=§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §<!=§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §<!=§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §<!=§("LASER_DOT",["LASER_DOT"]);
         §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_1",["PARTICLE_HALLOWEEN_STONE_1"]);
         §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_2",["PARTICLE_HALLOWEEN_STONE_2"]);
         §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_3",["PARTICLE_HALLOWEEN_STONE_3"]);
         §<!=§("HALLOWEEN_ZOMBIE_SMOKE",["PARTICLE_HALLOWEEN_SMOKE_1","PARTICLE_HALLOWEEN_SMOKE_2","PARTICLE_HALLOWEEN_SMOKE_3","PARTICLE_HALLOWEEN_SMOKE_4","PARTICLE_HALLOWEEN_SMOKE_5"]);
         §<!=§("HALLOWEEN_EXTRABIRD_SPARKLE",["PARTICLE_HALLOWEEN_SPARKLE_1","PARTICLE_HALLOWEEN_SPARKLE_2","PARTICLE_HALLOWEEN_SPARKLE_3","PARTICLE_HALLOWEEN_SPARKLE_4","PARTICLE_HALLOWEEN_SPARKLE_5"]);
         §<!=§("HALLOWEEN_SLINGSHOT",["BONE_SLINGSHOT_BACK","BONE_SLINGSHOT_FRONT"]);
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
               §<!=§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
               _loc3_++;
            }
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         super.initializePigAnimations();
         §"@§("PIGLETTE_TRECOOL",[["normal",["PIGLETTE_TRECOOL_01","PIGLETTE_TRECOOL_02","PIGLETTE_TRECOOL_03"]],["blink",["PIGLETTE_TRECOOL_01_BLINK","PIGLETTE_TRECOOL_02_BLINK","PIGLETTE_TRECOOL_03_BLINK"]],["yell",["PIGLETTE_TRECOOL_01_SMILE","PIGLETTE_TRECOOL_02_SMILE","PIGLETTE_TRECOOL_03_SMILE"]]]);
         §"@§("PIGLETTE_BILLIEJOE",[["normal",["PIGLETTE_BILLIEJOE_01","PIGLETTE_BILLIEJOE_02","PIGLETTE_BILLIEJOE_03"]],["blink",["PIGLETTE_BILLIEJOE_01_BLINK","PIGLETTE_BILLIEJOE_02_BLINK","PIGLETTE_BILLIEJOE_03_BLINK"]],["yell",["PIGLETTE_BILLIEJOE_01_SMILE","PIGLETTE_BILLIEJOE_02_SMILE","PIGLETTE_BILLIEJOE_03_SMILE"]]]);
         §"@§("PIGLETTE_MIKE",[["normal",["PIGLETTE_MIKE_01","PIGLETTE_MIKE_02","PIGLETTE_MIKE_03"]],["blink",["PIGLETTE_MIKE_01_BLINK","PIGLETTE_MIKE_02_BLINK","PIGLETTE_MIKE_03_BLINK"]],["yell",["PIGLETTE_MIKE_01_SMILE","PIGLETTE_MIKE_02_SMILE","PIGLETTE_MIKE_03_SMILE"]]]);
         §"@§("PIG_BASIC_SMALL_INFECTED",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         §"@§("PIG_BASIC_MEDIUM_INFECTED",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         §"@§("PIG_BASIC_BIG_INFECTED",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         §"@§("PIG_HELMET_INFECTED",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         §"@§("PIG_MUSTACHE_INFECTED",[["normal",["PIG_FRANKENSWINE_01","PIG_FRANKENSWINE_02","PIG_FRANKENSWINE_03"]],["blink",["PIG_FRANKENSWINE_01_BLINK","PIG_FRANKENSWINE_02_BLINK","PIG_FRANKENSWINE_03_BLINK"]],["yell",["PIG_FRANKENSWINE__01_SMILE","PIG_FRANKENSWINE_02_SMILE","PIG_FRANKENSWINE_03_SMILE"]]]);
         §"@§("PIG_BASIC_SMALL_ZOMBIE",[["normal",["PIG_ZOMBIE_SMALL_01"]]]);
         §"@§("PIG_BASIC_MEDIUM_ZOMBIE",[["normal",["PIG_ZOMBIE_MEDIUM_01"]]]);
         §"@§("PIG_BASIC_BIG_ZOMBIE",[["normal",["PIG_ZOMBIE_BIG_01"]]]);
         §"@§("PIG_HELMET_ZOMBIE",[["normal",["PIG_ZOMBIE_HELMET_01"]]]);
         §"@§("PIG_MUSTACHE_ZOMBIE",[["normal",["PIG_ZOMBIE_FRANKENSWINE_01"]]]);
         §"@§("HALLOWEEN_ABOMINATION_PIG",[["normal",["PIG_HALLOWEEN_BOSS_1"]]]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §"@§("BIRD_VANTERRENCE",[["normal",["BIRD_VANTERENCE_1"]],["blink",["BIRD_VANTERENCE_BLINK"]],["fly",["BIRD_VANTERENCE_FLYING"]],["yell",["BIRD_VANTERENCE_YELL"]],["fly_yell",["BIRD_VANTERENCE_FLYING_YELL"]]]);
         §"@§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
   }
}
