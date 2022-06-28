package §#!2§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §#!X§.LevelManager;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §8T§.FacebookUserProgress;
   import §9!!§.§85§;
   import §9c§.StateLevelEndRio;
   import §9v§.§4!c§;
   import §9v§.SyncingPopup;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§3!5§;
   import §[g§.FacebookLevelManager;
   import §^!i§.UserProgressEvent;
   import §^h§.StarSplash;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEnd extends StateLevelEndRio
   {
       
      
      private var §;!Z§:SyncingPopup;
      
      private var §,N§:String;
      
      private var §#!,§:String;
      
      protected var §3a§:Boolean = false;
      
      private var §&K§:Boolean = false;
      
      public function StateFacebookLevelEnd(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
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
         if(this.§3a§)
         {
            this.§[J§();
         }
      }
      
      override public function deActivate() : void
      {
         §^,§.getItemByName("Button_Share_Default").setVisibility(false);
         §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
         §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§&K§ = false;
         super.deActivate();
      }
      
      protected function §[J§() : void
      {
         §^,§.getItemByName("Button_Share_Default").setVisibility(false);
         §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
         §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
         §^,§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         super.onBadgeLanded();
         var rank:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"!d§(LevelManager.§!=§);
         var eagle:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).getEagleScoreForLevel(LevelManager.§!=§);
         if(!this.§3a§)
         {
            if(§#!5§ && rank == 1)
            {
               this.§#!,§ = "crown";
               §^,§.getItemByName("Button_Share_Default").setVisibility(false);
               §^,§.getItemByName("Button_Share_Crown").setVisibility(true);
               §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
               posX = §^,§.getItemByName("Button_Share_Crown").x + §^,§.getItemByName("Container_LevelEndStripe").x;
               posY = §^,§.getItemByName("Button_Share_Crown").y + §^,§.getItemByName("Container_LevelEndStripe").y;
               §,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §^,§.addChild(§,Y§);
               §'z§.push(§,Y§);
               SoundEngine.§`B§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else if(§%#§)
            {
               this.§#!,§ = "stars";
               §^,§.getItemByName("Button_Share_Default").setVisibility(false);
               §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
               §^,§.getItemByName("Button_Share_Stars").setVisibility(true);
               posX = §^,§.getItemByName("Button_Share_Stars").x + §^,§.getItemByName("Container_LevelEndStripe").x;
               posY = §^,§.getItemByName("Button_Share_Stars").y + §^,§.getItemByName("Container_LevelEndStripe").y;
               §,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_BADGE,20);
               §^,§.addChild(§,Y§);
               §'z§.push(§,Y§);
               SoundEngine.§`B§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            }
            else
            {
               this.§#!,§ = "";
               §^,§.getItemByName("Button_Share_Default").setVisibility(true);
               §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
               §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§[J§();
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         var rank:int = 0;
         var eventNamesToBlock:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§0x§ && eventNamesToBlock.indexOf(eventName) != -1)
         {
            this.§;!Z§ = §4!c§.§6F§();
            this.§,N§ = eventName;
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).addEventListener(UserProgressEvent.§>?§,this.§"6§);
            return;
         }
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
            case "SHARE_CROWN":
               AngryBirdsFP11.§8R§.§!!'§();
               rank = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"!d§(LevelManager.§!=§);
               ExternalInterfaceHandler.§!!@§("shareCrown",LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),rank,§4!T§.controller.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§8R§.§!!'§();
               ExternalInterfaceHandler.§!!@§("shareThreeStars",LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),§4!T§.controller.getScore());
               break;
            case "SHARE_DEFAULT":
               ExternalInterfaceHandler.§!!@§("shareDefault",LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),§4!T§.controller.getScore(),true);
               break;
            case "EMBED":
               §4!c§.§4!]§(LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§),§4!T§.controller.getScore(),this.§#!,§);
         }
      }
      
      protected function §"6§(e:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).removeEventListener(UserProgressEvent.§>?§,this.§"6§);
         if(this.§;!Z§)
         {
            this.§;!Z§.close();
            this.§;!Z§ = null;
         }
         this.uiInteractionHandler(-1,this.§,N§,null);
         this.§,N§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§4!T§.§%!K§ as AngryBirdsUltraBook).newUserScore(LevelManager.§!=§);
         (AngryBirdsFP11.sUserProgress as FacebookUserProgress).saveLevelProgress(LevelManager.§!=§);
      }
      
      override protected function setScoreData() : void
      {
         var oldStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§!=§);
         var newScore:int = §4!T§.controller.getScore();
         §#!5§ = newScore > highScore;
         §<j§(newScore,highScore);
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§!=§,newScore);
         (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(false);
         (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.gotoAndStop("UnLit");
         (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.gotoAndStop("UnLit");
         (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.gotoAndStop("UnLit");
         if(§#!5§)
         {
            this.saveLevelProgress();
         }
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = false;
         var newStars:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(state:String) : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §2R§.push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
         §2R§.push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
         §2R§.push((§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         §2R§.push((§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §3!5§.§4@§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§))
         {
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[0] + Math.abs(§2R§[1] - §2R§[0]) / 2;
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = §2R§[1] + Math.abs(§2R§[2] - §2R§[1]) / 2;
         }
         else
         {
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = §2R§[0];
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[1];
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = §2R§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§`l§())
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = §2R§[0];
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[1];
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x = §2R§[2];
         }
         else
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = §2R§[0] + Math.abs(§2R§[1] - §2R§[0]) / 2;
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[1] + Math.abs(§2R§[2] - §2R§[1]) / 2;
         }
      }
   }
}
