package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§=<§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>!q§.§;!J§;
   import §>L§.§+!i§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!1§.UserProgressEvent;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import §^!m§.§4!i§;
   import §^!m§.§`8§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §?c§ extends §=<§
   {
       
      
      private var §"" §:§`8§;
      
      private var §;!6§:String;
      
      private var §`K§:String;
      
      protected var §^8§:Boolean = false;
      
      private var §6f§:Boolean = false;
      
      public function §?c§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
         §,!s§.§=!I§.background.§4!=§();
         if(LevelManager.§+!$§().name == "1000")
         {
            §'!Q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§^8§)
         {
            this.§`!5§();
         }
      }
      
      override public function deActivate() : void
      {
         §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
         §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
         §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§6f§ = false;
         super.deActivate();
      }
      
      protected function §`!5§() : void
      {
         §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
         §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
         §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
         §'!Q§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §#!6§).§@z§(LevelManager.§"L§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §#!6§).getEagleScoreForLevel(LevelManager.§"L§);
         if(!this.§^8§)
         {
            if(§=P§ && _loc1_ == 1)
            {
               this.§`K§ = "crown";
               §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
               §'!Q§.getItemByName("Button_Share_Crown").setVisibility(true);
               §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
               _loc3_ = §'!Q§.getItemByName("Button_Share_Crown").x + §'!Q§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §'!Q§.getItemByName("Button_Share_Crown").y + §'!Q§.getItemByName("Container_LevelEndStripe").y;
               §`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc3_,_loc4_,§;!J§.§8o§,20);
               §'!Q§.addChild(§`!_§);
               §5!x§.push(§`!_§);
               §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
            }
            else if(§ P§)
            {
               this.§`K§ = "stars";
               §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
               §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
               §'!Q§.getItemByName("Button_Share_Stars").setVisibility(true);
               _loc3_ = §'!Q§.getItemByName("Button_Share_Stars").x + §'!Q§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §'!Q§.getItemByName("Button_Share_Stars").y + §'!Q§.getItemByName("Container_LevelEndStripe").y;
               §`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc3_,_loc4_,§;!J§.§8o§,20);
               §'!Q§.addChild(§`!_§);
               §5!x§.push(§`!_§);
               §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
            }
            else
            {
               this.§`K§ = "";
               §'!Q§.getItemByName("Button_Share_Default").setVisibility(true);
               §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
               §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§`!5§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §#!6§).§;!1§ && _loc4_.indexOf(param2) != -1)
         {
            this.§"" § = §4!i§.§+!+§();
            this.§;!6§ = param2;
            (AngryBirdsFP11.sUserProgress as §#!6§).addEventListener(UserProgressEvent.§ ?§,this.§>!T§);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §!!K§.§%$§(_loc5_);
               §<t§.§`n§.§5!M§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§'!g§.§5!M§();
               _loc7_ = (AngryBirdsFP11.sUserProgress as §#!6§).§@z§(LevelManager.§"L§);
               §+!i§.§>!y§("shareCrown",LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),_loc7_,§,!s§.§ Q§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§'!g§.§5!M§();
               §+!i§.§>!y§("shareThreeStars",LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),§,!s§.§ Q§.getScore());
               break;
            case "SHARE_DEFAULT":
               §+!i§.§>!y§("shareDefault",LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),§,!s§.§ Q§.getScore(),true);
               break;
            case "EMBED":
               §4!i§.§4!x§(LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),§,!s§.§ Q§.getScore(),this.§`K§);
         }
      }
      
      protected function §>!T§(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §#!6§).removeEventListener(UserProgressEvent.§ ?§,this.§>!T§);
         if(this.§"" §)
         {
            this.§"" §.close();
            this.§"" § = null;
         }
         this.uiInteractionHandler(-1,this.§;!6§,null);
         this.§;!6§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§,!s§.§]!J§ as §<t§).newUserScore(LevelManager.§"L§);
         (AngryBirdsFP11.sUserProgress as §#!6§).saveLevelProgress(LevelManager.§"L§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§);
         var _loc3_:int = §,!s§.§ Q§.getScore();
         §=P§ = _loc3_ > _loc2_;
         §"!m§(_loc3_,_loc2_);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§"L§,_loc3_);
         (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
         (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("UnLit");
         (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("UnLit");
         (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("UnLit");
         if(§=P§)
         {
            this.saveLevelProgress();
         }
         (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = false;
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §@X§.push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
         §@X§.push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
         §@X§.push((§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x);
         §@X§.push((§'!Q§.getItemByName("Button_CutScene") as §[!i§).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[0] + Math.abs(§@X§[1] - §@X§[0]) / 2;
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = §@X§[1] + Math.abs(§@X§[2] - §@X§[1]) / 2;
         }
         else
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0];
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1];
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = §@X§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
         if(LevelManager.§8`§())
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0];
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1];
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x = §@X§[2];
         }
         else
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0] + Math.abs(§@X§[1] - §@X§[0]) / 2;
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1] + Math.abs(§@X§[2] - §@X§[1]) / 2;
         }
      }
   }
}
