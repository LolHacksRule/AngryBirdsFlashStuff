package §[!$§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §&"§.ExternalInterfaceHandler;
   import §'8§.FacebookLevelManager;
   import §,!J§.UserProgressEvent;
   import §0!Q§.UIEventListenerRovio;
   import §5!3§.StarSplash;
   import §5=§.§9F§;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §7t§.StateLevelEndRio;
   import §;!1§.§9u§;
   import §;!1§.SyncingPopup;
   import §=!5§.§+q§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEnd extends StateLevelEndRio
   {
       
      
      private var §0u§:SyncingPopup;
      
      private var §%!X§:String;
      
      private var § !<§:String;
      
      protected var §!k§:Boolean = false;
      
      private var §0q§:Boolean = false;
      
      public function StateFacebookLevelEnd(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
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
         if(this.§!k§)
         {
            this.§,!O§();
         }
      }
      
      override public function deActivate() : void
      {
         §`=§.getItemByName("Button_Share_Default").setVisibility(false);
         §`=§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`=§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§0q§ = false;
         super.deActivate();
      }
      
      protected function §,!O§() : void
      {
         §`=§.getItemByName("Button_Share_Default").setVisibility(false);
         §`=§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`=§.getItemByName("Button_Share_Stars").setVisibility(false);
         §`=§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         super.onBadgeLanded();
         var rank:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"8§(LevelManager.§1m§);
         var eagle:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).getEagleScoreForLevel(LevelManager.§1m§);
         if(!this.§!k§)
         {
            if(§6!%§ && rank == 1)
            {
               this.§ !<§ = "crown";
               §`=§.getItemByName("Button_Share_Default").setVisibility(false);
               §`=§.getItemByName("Button_Share_Crown").setVisibility(true);
               §`=§.getItemByName("Button_Share_Stars").setVisibility(false);
               posX = §`=§.getItemByName("Button_Share_Crown").x + §`=§.getItemByName("Container_LevelEndStripe").x;
               posY = §`=§.getItemByName("Button_Share_Crown").y + §`=§.getItemByName("Container_LevelEndStripe").y;
               §,O§ = new StarSplash(AngryBirdsFP11.§@]§,AngryBirdsFP11.§!3§,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §`=§.addChild(§,O§);
               §5o§.push(§,O§);
               SoundEngine.§-!h§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else if(§2!L§)
            {
               this.§ !<§ = "stars";
               §`=§.getItemByName("Button_Share_Default").setVisibility(false);
               §`=§.getItemByName("Button_Share_Crown").setVisibility(false);
               §`=§.getItemByName("Button_Share_Stars").setVisibility(true);
               posX = §`=§.getItemByName("Button_Share_Stars").x + §`=§.getItemByName("Container_LevelEndStripe").x;
               posY = §`=§.getItemByName("Button_Share_Stars").y + §`=§.getItemByName("Container_LevelEndStripe").y;
               §,O§ = new StarSplash(AngryBirdsFP11.§@]§,AngryBirdsFP11.§!3§,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §`=§.addChild(§,O§);
               §5o§.push(§,O§);
               SoundEngine.§-!h§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else
            {
               this.§ !<§ = "";
               §`=§.getItemByName("Button_Share_Default").setVisibility(true);
               §`=§.getItemByName("Button_Share_Crown").setVisibility(false);
               §`=§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§,!O§();
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         var rank:int = 0;
         var eventNamesToBlock:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§1U§ && eventNamesToBlock.indexOf(eventName) != -1)
         {
            this.§0u§ = §9u§.§+!<§();
            this.§%!X§ = eventName;
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).addEventListener(UserProgressEvent.§[Y§,this.§5F§);
            return;
         }
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
            case "SHARE_CROWN":
               AngryBirdsFP11.§'t§.§?]§();
               rank = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"8§(LevelManager.§1m§);
               ExternalInterfaceHandler.§`F§("shareCrown",LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),rank,§`S§.controller.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§'t§.§?]§();
               ExternalInterfaceHandler.§`F§("shareThreeStars",LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),§`S§.controller.getScore());
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§`F§("shareDefault",LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),§`S§.controller.getScore(),true);
               break;
            case "EMBED":
               §9u§.§'!e§(LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§),§`S§.controller.getScore(),this.§ !<§);
         }
      }
      
      protected function §5F§(e:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).removeEventListener(UserProgressEvent.§[Y§,this.§5F§);
         if(this.§0u§)
         {
            this.§0u§.close();
            this.§0u§ = null;
         }
         this.uiInteractionHandler(-1,this.§%!X§,null);
         this.§%!X§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§`S§.§=F§ as AngryBirdsUltraBook).newUserScore(LevelManager.§1m§);
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).saveLevelProgress(LevelManager.§1m§);
      }
      
      override protected function setScoreData() : void
      {
         var oldStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§1m§);
         var newScore:int = §`S§.controller.getScore();
         §6!%§ = newScore > highScore;
         §3?§(newScore,highScore);
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§1m§,newScore);
         (§`=§.getItemByName("MovieClip_NewHighScoreBadge") as §=D§).setVisibility(false);
         (§`=§.getItemByName("MovieClip_StarLeft") as §=D§).mClip.gotoAndStop("UnLit");
         (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).mClip.gotoAndStop("UnLit");
         (§`=§.getItemByName("MovieClip_StarRight") as §=D§).mClip.gotoAndStop("UnLit");
         if(§6!%§)
         {
            this.saveLevelProgress();
         }
         (§`S§.§=F§ as AngryBirdsUltraBook).§^!c§.§8!k§ = false;
         var newStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §`$§.push((§`=§.getItemByName("Button_Menu") as UIButtonRovio).x);
         §`$§.push((§`=§.getItemByName("Button_Replay") as UIButtonRovio).x);
         §`$§.push((§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         §`$§.push((§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §+q§.§%M§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§ R§(LevelManager.§1m§))
         {
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = §`$§[0] + Math.abs(§`$§[1] - §`$§[0]) / 2;
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x = §`$§[1] + Math.abs(§`$§[2] - §`$§[1]) / 2;
         }
         else
         {
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = §`$§[0];
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = §`$§[1];
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x = §`$§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§8!I§())
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = §`$§[0];
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = §`$§[1];
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).x = §`$§[2];
         }
         else
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = §`$§[0] + Math.abs(§`$§[1] - §`$§[0]) / 2;
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = §`$§[1] + Math.abs(§`$§[2] - §`$§[1]) / 2;
         }
      }
   }
}
