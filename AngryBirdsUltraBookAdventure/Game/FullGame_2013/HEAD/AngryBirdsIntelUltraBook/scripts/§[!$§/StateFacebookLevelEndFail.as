package §[!$§
{
   import §&"§.ExternalInterfaceHandler;
   import §'8§.FacebookLevelManager;
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §6a§.UIButtonRovio;
   import §7t§.StateLevelEndFailRio;
   import §;!1§.§9u§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEndFail extends StateLevelEndFailRio
   {
       
      
      private var §`$§:Array;
      
      private var §9$§:Boolean = false;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      public function StateFacebookLevelEndFail(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         this.§`$§ = [];
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§`$§.push((§`=§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§`$§.push((§`=§.getItemByName("Button_Replay") as UIButtonRovio).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         §`S§.§[o§.background.§^&§();
         if(LevelManager.§!]§().name == "1000")
         {
            §`=§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§8!I§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§ R§(LevelManager.§1m§))
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else if(LevelManager.§%!M§())
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
         }
         else
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §0p§(tmc:MovieClip) : void
      {
         var tFrame:int = tmc.currentFrame + 1;
         if(tFrame > tmc.totalFrames)
         {
            tFrame = 1;
         }
         tmc.gotoAndStop(tFrame);
      }
      
      override public function run(deltaTime:Number) : int
      {
         this.§4c§ += deltaTime;
         if(this.§4c§ >= this.§,!1§)
         {
            this.§0p§(§`=§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
            this.§4c§ = 0;
         }
         return super.run(deltaTime);
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
               §9F§.§+3§(ultrabookURL);
               AngryBirdsUltraBook.sSingleton.§?]§();
               urlReq = new URLRequest(ultrabookURL);
               navigateToURL(urlReq,"_blank");
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§`F§("shareDefault",LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),0,false);
               break;
            case "EMBED":
               §9u§.§'!e§(LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),§`S§.controller.getScore(),"");
         }
      }
   }
}
