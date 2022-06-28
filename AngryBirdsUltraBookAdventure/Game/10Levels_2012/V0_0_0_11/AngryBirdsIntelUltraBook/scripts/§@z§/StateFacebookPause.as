package §@z§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StatePause;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class StateFacebookPause extends StatePause
   {
       
      
      public function StateFacebookPause(initState:Boolean = false, name:String = "PauseState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         §'n§ = true;
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_FacebookLevelPause[0]);
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
         var chapterTextField:UITextFieldRovio = §5!M§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
         chapterTextField.§24§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      protected function §&3§(levelid:String) : String
      {
         return FacebookLevelManager.§%!P§(levelid);
      }
      
      override protected function openPauseMenu() : void
      {
         var chapterTextField:UITextFieldRovio = null;
         if(LevelManager.§var§ != null)
         {
            chapterTextField = §5!M§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
            chapterTextField.§24§.text = LevelManager.§&!e§().writtenName;
            (§5!M§.getItemByName("TextField_LevelName") as UITextFieldRovio).§24§.text = this.§&3§(LevelManager.§var§);
         }
         (§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = StatePause.OFFSCREEN_X;
         §?!5§(false);
         §]!B§.pause();
         if(§9q§ != null)
         {
            §9q§.stop();
         }
         §9q§ = TweenManager.§8!X§.§`!6§(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":1},{"alpha":0},0.25));
         §9q§.onComplete = §[%§;
         §9q§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §5!M§.getItemByName("Button_Help").setVisibility(false);
         §5!M§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§9q§ != null)
         {
            §9q§.stop();
         }
         §9q§ = TweenManager.§8!X§.§`!6§(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":0},{"alpha":1},0.25));
         §9q§.onComplete = § var§;
         §9q§.play();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var soundsEnabled:Boolean = false;
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         switch(eventName)
         {
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§+i§();
               AngryBirdsFP11.§72§(soundsEnabled);
               break;
            case "LEARN_MORE":
               ultrabookURL = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §+!N§.§;7§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§"§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            default:
               super.uiInteractionHandler(eventIndex,eventName,component);
         }
      }
   }
}
