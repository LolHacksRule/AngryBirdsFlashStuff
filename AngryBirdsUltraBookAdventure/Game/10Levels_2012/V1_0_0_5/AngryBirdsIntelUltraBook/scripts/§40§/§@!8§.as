package §40§
{
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4e§.§=!p§;
   import §57§.§,!b§;
   import §9!5§.§%@§;
   import §9Y§.§6!8§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   import §true§.§ _§;
   
   public class §@!8§ extends §%@§
   {
       
      
      public function §@!8§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §<"§ = true;
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_FacebookLevelPause[0]);
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
         var _loc1_:§"j§ = §5!P§.getItemByName("TextField_ChapterName") as §"j§;
         _loc1_.§"E§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
      }
      
      protected function §"w§(param1:String) : String
      {
         return §=!p§.§1!j§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§"j§ = null;
         if(LevelManager.§4Y§ != null)
         {
            _loc1_ = §5!P§.getItemByName("TextField_ChapterName") as §"j§;
            _loc1_.§"E§.text = LevelManager.§0v§().writtenName;
            (§5!P§.getItemByName("TextField_LevelName") as §"j§).§"E§.text = this.§"w§(LevelManager.§4Y§);
         }
         (§5!P§.getItemByName("Container_PauseMenu") as §8;§).x = §%@§.OFFSCREEN_X;
         §`!^§(false);
         § _§.pause();
         if(§74§ != null)
         {
            §74§.stop();
         }
         §74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":0},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":1},{"alpha":0},0.25));
         §74§.onComplete = §]Z§;
         §74§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §5!P§.getItemByName("Button_Help").setVisibility(false);
         §5!P§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§74§ != null)
         {
            §74§.stop();
         }
         §74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":OFFSCREEN_X},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":0},{"alpha":1},0.25));
         §74§.onComplete = §8w§;
         §74§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         switch(param2)
         {
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"!u§();
               AngryBirdsFP11.§-#§(_loc4_);
               break;
            case "LEARN_MORE":
               _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §'N§.§`I§(_loc5_);
               §@!9§.§6!f§.§5C§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
