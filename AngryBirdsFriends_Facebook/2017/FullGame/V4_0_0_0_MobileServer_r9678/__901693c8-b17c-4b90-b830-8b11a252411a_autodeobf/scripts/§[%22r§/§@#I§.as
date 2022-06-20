package §["r§
{
   import §#"H§.§^5§;
   import §;P§.§super§;
   import flash.display.MovieClip;
   
   public class §@#I§ extends §^5§
   {
       
      
      public function §@#I§()
      {
         super();
      }
      
      protected function §-!T§(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case "BIRD_BLACK":
               _loc2_ = "TUTORIAL_BOMB";
               break;
            case "BIRD_BLUE":
               _loc2_ = "TUTORIAL_BLUES";
               break;
            case "BIRD_RED":
               _loc2_ = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               _loc2_ = "TUTORIAL_MATILDA";
               break;
            case "BIRD_YELLOW":
               _loc2_ = "TUTORIAL_CHUCK";
               break;
            case "BIRD_GREEN":
               _loc2_ = "TUTORIAL_HAL";
               break;
            case "BIRD_ORANGE":
               _loc2_ = "TUTORIAL_ORANGE";
               break;
            case "BIRD_REDBIG":
               _loc2_ = "TUTORIAL_TERENCE";
               break;
            case §super§.§+!d§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case §super§.§@"B§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case §super§.§&"l§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case §super§.§!!y§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case §super§.§9!T§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case §super§.§%#[§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case §super§.§#"[§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case §super§.§["0§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§-!T§(param1);
         return §;^§(_loc2_);
      }
   }
}
