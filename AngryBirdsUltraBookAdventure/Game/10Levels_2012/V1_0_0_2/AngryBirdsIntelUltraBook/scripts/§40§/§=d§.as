package §40§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§[!'§;
   import §4L§.§3!J§;
   import §4e§.§=!p§;
   import §9!5§.§'!>§;
   import §9!y§.§%g§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §?!7§.§5!I§;
   import §?!7§.§[I§;
   import §@i§.§=r§;
   import §]!§.UserProgressEvent;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §=d§ extends §'!>§
   {
       
      
      private var §[h§:§%g§;
      
      private var §[@§:String;
      
      private var §=!7§:String;
      
      protected var §6!e§:Boolean = false;
      
      private var §@Y§:Boolean = false;
      
      public function §=d§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
         § _§.§!6§.background.§>G§();
         if(LevelManager.§0v§().name == "1000")
         {
            §5!P§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§6!e§)
         {
            this.§<E§();
         }
      }
      
      override public function deActivate() : void
      {
         §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
         §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
         §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§@Y§ = false;
         super.deActivate();
      }
      
      protected function §<E§() : void
      {
         §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
         §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
         §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
         §5!P§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §<[§).§,!l§(LevelManager.§4Y§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §<[§).getEagleScoreForLevel(LevelManager.§4Y§);
         if(!this.§6!e§)
         {
            if(§[!a§ && _loc1_ == 1)
            {
               this.§=!7§ = "crown";
               §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
               §5!P§.getItemByName("Button_Share_Crown").setVisibility(true);
               §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
               _loc3_ = §5!P§.getItemByName("Button_Share_Crown").x + §5!P§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §5!P§.getItemByName("Button_Share_Crown").y + §5!P§.getItemByName("Container_LevelEndStripe").y;
               include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc3_,_loc4_,§3!J§.§2q§,20);
               §5!P§.addChild(include);
               §0!7§.push(include);
               § !Q§.playSound("Hiscore_Star_Splash1",§catch§);
            }
            else if(§3"§)
            {
               this.§=!7§ = "stars";
               §5!P§.getItemByName("Button_Share_Default").setVisibility(false);
               §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
               §5!P§.getItemByName("Button_Share_Stars").setVisibility(true);
               _loc3_ = §5!P§.getItemByName("Button_Share_Stars").x + §5!P§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §5!P§.getItemByName("Button_Share_Stars").y + §5!P§.getItemByName("Container_LevelEndStripe").y;
               include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc3_,_loc4_,§3!J§.§2q§,20);
               §5!P§.addChild(include);
               §0!7§.push(include);
               § !Q§.playSound("Hiscore_Star_Splash1",§catch§);
            }
            else
            {
               this.§=!7§ = "";
               §5!P§.getItemByName("Button_Share_Default").setVisibility(true);
               §5!P§.getItemByName("Button_Share_Crown").setVisibility(false);
               §5!P§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§<E§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §<[§).§'!n§ && _loc4_.indexOf(param2) != -1)
         {
            this.§[h§ = §@M§.§?!K§();
            this.§[@§ = param2;
            (AngryBirdsFP11.sUserProgress as §<[§).addEventListener(UserProgressEvent.§3P§,this.§'!$§);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §'N§.§`I§(_loc5_);
               §@!9§.§6!f§.§5C§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§3!a§.§5C§();
               _loc7_ = (AngryBirdsFP11.sUserProgress as §<[§).§,!l§(LevelManager.§4Y§);
               §=r§.§[!3§("shareCrown",LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),_loc7_,§ _§.§?!]§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§3!a§.§5C§();
               §=r§.§[!3§("shareThreeStars",LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),§ _§.§?!]§.getScore());
               break;
            case "SHARE_DEFAULT":
               §=r§.§[!3§("shareDefault",LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),§ _§.§?!]§.getScore(),true);
               break;
            case "EMBED":
               §@M§.§'t§(LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),§ _§.§?!]§.getScore(),this.§=!7§);
         }
      }
      
      protected function §'!$§(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §<[§).removeEventListener(UserProgressEvent.§3P§,this.§'!$§);
         if(this.§[h§)
         {
            this.§[h§.close();
            this.§[h§ = null;
         }
         this.uiInteractionHandler(-1,this.§[@§,null);
         this.§[@§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§ _§.§1s§ as §@!9§).newUserScore(LevelManager.§4Y§);
         (AngryBirdsFP11.sUserProgress as §<[§).saveLevelProgress(LevelManager.§4Y§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§);
         var _loc3_:int = § _§.§?!]§.getScore();
         §[!a§ = _loc3_ > _loc2_;
         §<U§(_loc3_,_loc2_);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§4Y§,_loc3_);
         (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
         (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("UnLit");
         (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("UnLit");
         (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("UnLit");
         if(§[!a§)
         {
            this.saveLevelProgress();
         }
         (§ _§.§1s§ as §@!9§).§6!H§.§default§ = false;
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §+!s§.push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
         §+!s§.push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
         §+!s§.push((§5!P§.getItemByName("Button_NextLevel") as §5!I§).x);
         §+!s§.push((§5!P§.getItemByName("Button_CutScene") as §5!I§).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[0] + Math.abs(§+!s§[1] - §+!s§[0]) / 2;
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = §+!s§[1] + Math.abs(§+!s§[2] - §+!s§[1]) / 2;
         }
         else
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0];
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1];
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = §+!s§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
         if(LevelManager.§9!j§())
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0];
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1];
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).x = §+!s§[2];
         }
         else
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = §+!s§[0] + Math.abs(§+!s§[1] - §+!s§[0]) / 2;
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = §+!s§[1] + Math.abs(§+!s§[2] - §+!s§[1]) / 2;
         }
      }
   }
}
