package §%J§
{
   import §&$!§.§%#k§;
   import §2I§.§@S§;
   import §?P§.ErrorPopup;
   import flash.display.MovieClip;
   
   public class §]$9§ extends §@S§
   {
       
      
      public function §]$9§()
      {
         super();
      }
      
      protected function §6!J§(param1:String) : String
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
            case §%#k§.§6`§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case §%#k§.§""z§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case §%#k§.§'"!§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case §%#k§.§0"W§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case §%#k§.§'!N§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BOOMBOX";
               break;
            case §%#k§.§@#l§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case §%#k§.§>#Z§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case §%#k§.§6"t§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case §%#k§.§]k§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            case "BIRD_PINK":
               _loc2_ = "TUTORIAL_STELLA";
               break;
            default:
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Tutorial linkage solver error\nTutorial linkage not found with tutorial name: " + param1));
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§6!J§(param1);
         return §!$8§(_loc2_);
      }
   }
}
