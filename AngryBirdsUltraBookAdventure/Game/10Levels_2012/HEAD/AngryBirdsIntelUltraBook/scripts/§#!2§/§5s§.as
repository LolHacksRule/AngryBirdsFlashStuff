package §#!2§
{
   import §"!2§.UIButtonRovio;
   import §#!X§.LevelManager;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StateLevelEndFailRio;
   import §9v§.§4!c§;
   import §>!<§.UIEventListenerRovio;
   import §[g§.FacebookLevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5s§ extends StateLevelEndFailRio
   {
       
      
      private var §2R§:Array;
      
      public function §5s§(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         this.§2R§ = [];
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§2R§.push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§2R§.push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         §4!T§.§1t§.background.§1r§();
         if(LevelManager.§7+§().name == "1000")
         {
            §^,§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§`l§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§))
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else if(LevelManager.§2! §())
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         super.uiInteractionHandler(eventIndex,eventName,component);
         switch(eventName)
         {
            case "FRIENDS_BUTTON":
               ultrabookURL = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §85§.§"!,§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§!!'§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§!!@§("shareDefault",LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),0,false);
               break;
            case "EMBED":
               §4!c§.§4!]§(LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),§4!T§.controller.getScore(),"");
         }
      }
   }
}
