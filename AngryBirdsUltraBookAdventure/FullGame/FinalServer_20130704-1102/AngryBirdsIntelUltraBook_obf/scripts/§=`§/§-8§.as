package §=`§
{
   public class §-8§ extends §7!V§
   {
       
      
      public function §-8§(param1:§6!I§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §0+§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §0+§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §0+§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §0+§("INTEL_SLINGSHOT",["INTEL_SLING_SHOT_01_BACK","INTEL_SLING_SHOT_01_FRONT"]);
         §0+§("LASER_DOT",["LASER_DOT"]);
         §0+§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override protected function initializePigAnimations() : void
      {
         super.initializePigAnimations();
         §%!2§("PIG_INTEL_PIGLETTE_SMALL",[["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]],["blink",["PIG_INTEL_PIGLETTE_SMALL_01_BLINK","PIG_INTEL_PIGLETTE_SMALL_02_BLINK","PIG_INTEL_PIGLETTE_SMALL_02_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_SMALL_01_SMILE","PIG_INTEL_PIGLETTE_SMALL_02_SMILE","PIG_INTEL_PIGLETTE_SMALL_03_SMILE"]]]);
         §%!2§("PIG_INTEL_PIGLETTE_MEDIUM",[["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]],["blink",["PIG_INTEL_PIGLETTE_MEDIUM_01_BLINK","PIG_INTEL_PIGLETTE_MEDIUM_02_BLINK","PIG_INTEL_PIGLETTE_MEDIUM_03_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_MEDIUM_01_SMILE","PIG_INTEL_PIGLETTE_MEDIUM_02_SMILE","PIG_INTEL_PIGLETTE_MEDIUM_03_SMILE"]]]);
         §%!2§("PIG_INTEL_PIGLETTE_BIG",[["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]],["blink",["PIG_INTEL_PIGLETTE_BIG_01_BLINK","PIG_INTEL_PIGLETTE_BIG_02_BLINK","PIG_INTEL_PIGLETTE_BIG_03_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_BIG_01_SMILE","PIG_INTEL_PIGLETTE_BIG_02_SMILE","PIG_INTEL_PIGLETTE_BIG_03_SMILE"]]]);
         §%!2§("PIG_INTEL_PIGLETTE_HELMET",[["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]],["blink",["PIG_INTEL_PIGLETTE_HELMET_01_BLINK","PIG_INTEL_PIGLETTE_HELMET_02_BLINK","PIG_INTEL_PIGLETTE_HELMET_03_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_HELMET_01_SMILE","PIG_INTEL_PIGLETTE_HELMET_02_SMILE","PIG_INTEL_PIGLETTE_HELMET_03_SMILE"]]]);
         §%!2§("PIG_INTEL_PIGLETTE_GRANDPA",[["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]],["blink",["PIG_INTEL_PIGLETTE_GRANDPA_01_BLINK","PIG_INTEL_PIGLETTE_GRANDPA_02_BLINK","PIG_INTEL_PIGLETTE_GRANDPA_03_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_GRANDPA_01_SMILE","PIG_INTEL_PIGLETTE_GRANDPA_02_SMILE","PIG_INTEL_PIGLETTE_GRANDPA_03_SMILE"]]]);
         §%!2§("PIG_INTEL_PIGLETTE_KING",[["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]],["blink",["PIG_INTEL_PIGLETTE_KING_01_BLINK","PIG_INTEL_PIGLETTE_KING_02_BLINK","PIG_INTEL_PIGLETTE_KING_03_BLINK"]],["yell",["PIG_INTEL_PIGLETTE_KING_01_SMILE","PIG_INTEL_PIGLETTE_KING_02_SMILE","PIG_INTEL_PIGLETTE_KING_03_SMILE"]]]);
      }
   }
}
