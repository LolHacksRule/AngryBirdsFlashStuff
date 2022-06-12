package §<H§
{
   import §&#k§.§2$ §;
   import §'"-§.§`j§;
   import flash.display.MovieClip;
   
   public class §#"L§ extends §2$ §
   {
       
      
      public function §#"L§()
      {
         super();
      }
      
      protected function §<#5§(param1:String) : String
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
            case §`j§.§5"j§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case §`j§.§6#z§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case §`j§.§-"f§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case §`j§.§-"5§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case §`j§.§+"4§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case §`j§.§?O§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case §`j§.§="-§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case §`j§.§@!V§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§<#5§(param1);
         return §>!'§(_loc2_);
      }
   }
}
