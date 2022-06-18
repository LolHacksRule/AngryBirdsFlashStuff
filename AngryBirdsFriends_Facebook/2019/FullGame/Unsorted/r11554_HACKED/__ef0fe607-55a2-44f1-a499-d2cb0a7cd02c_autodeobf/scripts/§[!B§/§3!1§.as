package §[!B§
{
   import §-#R§.§0!w§;
   import §6W§.§=#x§;
   import §?!N§.ErrorPopup;
   import flash.display.MovieClip;
   
   public class §3!1§ extends §=#x§
   {
       
      
      public function §3!1§()
      {
         super();
      }
      
      protected function §3#P§(param1:String) : String
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
            case §0!w§.§%#p§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case §0!w§.§3#D§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case §0!w§.§ #;§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case §0!w§.§,"w§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case §0!w§.§<L§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BOOMBOX";
               break;
            case §0!w§.§<!y§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case §0!w§.§8$B§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case §0!w§.§2$?§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case §0!w§.§'!z§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            case "BIRD_PINK":
               _loc2_ = "TUTORIAL_STELLA";
               break;
            default:
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Tutorial linkage solver error\nTutorial linkage not found with tutorial name: " + param1));
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§3#P§(param1);
         return §2#W§(_loc2_);
      }
   }
}
