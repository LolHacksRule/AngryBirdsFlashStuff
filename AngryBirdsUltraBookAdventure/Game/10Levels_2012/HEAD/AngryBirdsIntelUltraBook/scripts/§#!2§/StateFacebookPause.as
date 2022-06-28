package §#!2§
{
   import §"!2§.§+,§;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StatePause;
   import §<!G§.TweenManager;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[g§.FacebookLevelManager;
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
         §"=§ = true;
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_FacebookLevelPause[0]);
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
         var chapterTextField:UITextFieldRovio = §^,§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
         chapterTextField.§ ^§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      protected function §0![§(levelid:String) : String
      {
         return FacebookLevelManager.§else§(levelid);
      }
      
      override protected function openPauseMenu() : void
      {
         var chapterTextField:UITextFieldRovio = null;
         if(LevelManager.§!=§ != null)
         {
            chapterTextField = §^,§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
            chapterTextField.§ ^§.text = LevelManager.§7+§().writtenName;
            (§^,§.getItemByName("TextField_LevelName") as UITextFieldRovio).§ ^§.text = this.§0![§(LevelManager.§!=§);
         }
         (§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = StatePause.OFFSCREEN_X;
         § 9§(false);
         §4!T§.pause();
         if(§ in§ != null)
         {
            § in§.stop();
         }
         § in§ = TweenManager.§&!'§.§+!^§(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":1},{"alpha":0},0.25));
         § in§.onComplete = §'u§;
         § in§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §^,§.getItemByName("Button_Help").setVisibility(false);
         §^,§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§ in§ != null)
         {
            § in§.stop();
         }
         § in§ = TweenManager.§&!'§.§+!^§(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":0},{"alpha":1},0.25));
         § in§.onComplete = §,J§;
         § in§.play();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var soundsEnabled:Boolean = false;
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         switch(eventName)
         {
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§%!D§();
               AngryBirdsFP11.§ !@§(soundsEnabled);
               break;
            case "LEARN_MORE":
               ultrabookURL = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §85§.§"!,§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§!!'§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            default:
               super.uiInteractionHandler(eventIndex,eventName,component);
         }
      }
   }
}
