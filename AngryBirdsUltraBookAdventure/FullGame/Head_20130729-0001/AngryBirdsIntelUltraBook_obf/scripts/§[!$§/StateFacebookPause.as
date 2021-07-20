package §[!$§
{
   import §'8§.FacebookLevelManager;
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §6a§.§=D§;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §7t§.StatePause;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
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
         §&!C§ = true;
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_FacebookLevelPause[0]);
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
         var chapterTextField:UITextFieldRovio = §`=§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
         chapterTextField.§,![§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      protected function §1!C§(levelid:String) : String
      {
         return FacebookLevelManager.§5j§(levelid);
      }
      
      override protected function openPauseMenu() : void
      {
         var chapterTextField:UITextFieldRovio = null;
         if(LevelManager.§1m§ != null)
         {
            chapterTextField = §`=§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
            chapterTextField.§,![§.text = LevelManager.§!]§().writtenName;
            (§`=§.getItemByName("TextField_LevelName") as UITextFieldRovio).§,![§.text = this.§1!C§(LevelManager.§1m§);
         }
         (§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = StatePause.OFFSCREEN_X;
         §+!7§(false);
         §`S§.pause();
         if(§ j§ != null)
         {
            § j§.stop();
         }
         § j§ = TweenManager.§7!E§.§7f§(TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§7!E§.§5§((§`=§.getItemByName("MovieClip_DarkBG") as §=D§).mClip,{"alpha":1},{"alpha":0},0.25));
         § j§.onComplete = §@C§;
         § j§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §`=§.getItemByName("Button_Help").setVisibility(false);
         §`=§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§ j§ != null)
         {
            § j§.stop();
         }
         § j§ = TweenManager.§7!E§.§7f§(TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§7!E§.§5§((§`=§.getItemByName("MovieClip_DarkBG") as §=D§).mClip,{"alpha":0},{"alpha":1},0.25));
         § j§.onComplete = §38§;
         § j§.play();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var soundsEnabled:Boolean = false;
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         switch(eventName)
         {
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§4!M§();
               AngryBirdsFP11.§0!§(soundsEnabled);
               break;
            case "LEARN_MORE":
               ultrabookURL = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §9F§.§+3§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§?]§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            default:
               super.uiInteractionHandler(eventIndex,eventName,component);
         }
      }
   }
}
