package §@z§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateLevelEndFailRio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §<?§ extends StateLevelEndFailRio
   {
       
      
      private var §0!Z§:Array;
      
      public function §<?§(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         this.§0!Z§ = [];
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§0!Z§.push((§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§0!Z§.push((§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         §]!B§.§>F§.background.§"d§();
         if(LevelManager.§&!e§().name == "1000")
         {
            §5!M§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§>!1§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§7n§(LevelManager.§var§))
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else if(LevelManager.§>s§())
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
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
               §+!N§.§;7§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§"§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§>!2§("shareDefault",LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),0,false);
               break;
            case "EMBED":
               §]!e§.§<!5§(LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),§]!B§.controller.getScore(),"");
         }
      }
   }
}
