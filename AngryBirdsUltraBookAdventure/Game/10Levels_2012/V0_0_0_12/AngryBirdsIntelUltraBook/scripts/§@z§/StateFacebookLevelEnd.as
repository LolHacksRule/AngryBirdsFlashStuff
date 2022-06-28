package §@z§
{
   import § D§.§]!B§;
   import §"!@§.StarSplash;
   import §"L§.LevelManager;
   import §%!4§.SyncingPopup;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §4!9§.§>!^§;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateLevelEndRio;
   import §=?§.SoundEngine;
   import §>!-§.UIEventListenerRovio;
   import §?!O§.UserProgressEvent;
   import §?j§.FacebookUserProgress;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEnd extends StateLevelEndRio
   {
       
      
      private var §6F§:SyncingPopup;
      
      private var §'!&§:String;
      
      private var §[y§:String;
      
      protected var §@T§:Boolean = false;
      
      private var §7!_§:Boolean = false;
      
      public function StateFacebookLevelEnd(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
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
         if(this.§@T§)
         {
            this.§^&§();
         }
      }
      
      override public function deActivate() : void
      {
         §5!M§.getItemByName("Button_Share_Default").setVisibility(false);
         §5!M§.getItemByName("Button_Share_Crown").setVisibility(false);
         §5!M§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§7!_§ = false;
         super.deActivate();
      }
      
      protected function §^&§() : void
      {
         §5!M§.getItemByName("Button_Share_Default").setVisibility(false);
         §5!M§.getItemByName("Button_Share_Crown").setVisibility(false);
         §5!M§.getItemByName("Button_Share_Stars").setVisibility(false);
         §5!M§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         super.onBadgeLanded();
         var rank:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§`q§(LevelManager.§var§);
         var eagle:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).getEagleScoreForLevel(LevelManager.§var§);
         if(!this.§@T§)
         {
            if(§]u§ && rank == 1)
            {
               this.§[y§ = "crown";
               §5!M§.getItemByName("Button_Share_Default").setVisibility(false);
               §5!M§.getItemByName("Button_Share_Crown").setVisibility(true);
               §5!M§.getItemByName("Button_Share_Stars").setVisibility(false);
               posX = §5!M§.getItemByName("Button_Share_Crown").x + §5!M§.getItemByName("Container_LevelEndStripe").x;
               posY = §5!M§.getItemByName("Button_Share_Crown").y + §5!M§.getItemByName("Container_LevelEndStripe").y;
               §7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §5!M§.addChild(§7!`§);
               §[w§.push(§7!`§);
               SoundEngine.§9!X§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else if(§#A§)
            {
               this.§[y§ = "stars";
               §5!M§.getItemByName("Button_Share_Default").setVisibility(false);
               §5!M§.getItemByName("Button_Share_Crown").setVisibility(false);
               §5!M§.getItemByName("Button_Share_Stars").setVisibility(true);
               posX = §5!M§.getItemByName("Button_Share_Stars").x + §5!M§.getItemByName("Container_LevelEndStripe").x;
               posY = §5!M§.getItemByName("Button_Share_Stars").y + §5!M§.getItemByName("Container_LevelEndStripe").y;
               §7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §5!M§.addChild(§7!`§);
               §[w§.push(§7!`§);
               SoundEngine.§9!X§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else
            {
               this.§[y§ = "";
               §5!M§.getItemByName("Button_Share_Default").setVisibility(true);
               §5!M§.getItemByName("Button_Share_Crown").setVisibility(false);
               §5!M§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§^&§();
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         var rank:int = 0;
         var eventNamesToBlock:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§`! § && eventNamesToBlock.indexOf(eventName) != -1)
         {
            this.§6F§ = §]!e§.§6&§();
            this.§'!&§ = eventName;
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).addEventListener(UserProgressEvent.§7o§,this.§1!3§);
            return;
         }
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
            case "SHARE_CROWN":
               AngryBirdsFP11.§5V§.§"§();
               rank = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§`q§(LevelManager.§var§);
               ExternalInterfaceHandler.§>!2§("shareCrown",LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),rank,§]!B§.controller.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§5V§.§"§();
               ExternalInterfaceHandler.§>!2§("shareThreeStars",LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),§]!B§.controller.getScore());
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§>!2§("shareDefault",LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),§]!B§.controller.getScore(),true);
               break;
            case "EMBED":
               §]!e§.§<!5§(LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§),§]!B§.controller.getScore(),this.§[y§);
         }
      }
      
      protected function §1!3§(e:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).removeEventListener(UserProgressEvent.§7o§,this.§1!3§);
         if(this.§6F§)
         {
            this.§6F§.close();
            this.§6F§ = null;
         }
         this.uiInteractionHandler(-1,this.§'!&§,null);
         this.§'!&§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§]!B§.§%h§ as AngryBirdsUltraBook).newUserScore(LevelManager.§var§);
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).saveLevelProgress(LevelManager.§var§);
      }
      
      override protected function setScoreData() : void
      {
         var oldStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§var§);
         var newScore:int = §]!B§.controller.getScore();
         §]u§ = newScore > highScore;
         §<!X§(newScore,highScore);
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§var§,newScore);
         (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(false);
         (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.gotoAndStop("UnLit");
         (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.gotoAndStop("UnLit");
         (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.gotoAndStop("UnLit");
         if(§]u§)
         {
            this.saveLevelProgress();
         }
         (§]!B§.§%h§ as AngryBirdsUltraBook).§56§.§5^§ = false;
         var newStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §0!Z§.push((§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x);
         §0!Z§.push((§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x);
         §0!Z§.push((§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         §0!Z§.push((§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §>!^§.§8'§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§7n§(LevelManager.§var§))
         {
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = §0!Z§[0] + Math.abs(§0!Z§[1] - §0!Z§[0]) / 2;
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = §0!Z§[1] + Math.abs(§0!Z§[2] - §0!Z§[1]) / 2;
         }
         else
         {
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = §0!Z§[0];
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = §0!Z§[1];
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = §0!Z§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§>!1§())
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = §0!Z§[0];
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = §0!Z§[1];
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).x = §0!Z§[2];
         }
         else
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = §0!Z§[0] + Math.abs(§0!Z§[1] - §0!Z§[0]) / 2;
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = §0!Z§[1] + Math.abs(§0!Z§[2] - §0!Z§[1]) / 2;
         }
      }
   }
}
