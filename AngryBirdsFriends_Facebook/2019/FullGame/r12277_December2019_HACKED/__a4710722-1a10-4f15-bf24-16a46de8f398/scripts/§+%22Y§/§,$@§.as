package §+"Y§
{
   import § h§.ErrorPopup;
   import §<"I§.§<$B§;
   import §`!u§.§?!4§;
   import flash.display.MovieClip;
   
   public class §,$@§ extends §?!4§
   {
       
      
      public function §,$@§()
      {
         super();
      }
      
      protected function §>#S§(param1:String) : String
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
            case §<$B§.§5#J§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case §<$B§.§+"4§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case §<$B§.§<$§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case §<$B§.§ !n§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case §<$B§.§[D§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_BOOMBOX";
               break;
            case §<$B§.§!"C§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case §<$B§.§^!n§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case §<$B§.§0"s§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case §<$B§.§`"K§.eventName:
               _loc2_ = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            case "BIRD_PINK":
               _loc2_ = "TUTORIAL_STELLA";
               break;
            default:
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Tutorial linkage solver error\nTutorial linkage not found with tutorial name: " + param1));
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§>#S§(param1);
         return §8!T§(_loc2_);
      }
   }
}
