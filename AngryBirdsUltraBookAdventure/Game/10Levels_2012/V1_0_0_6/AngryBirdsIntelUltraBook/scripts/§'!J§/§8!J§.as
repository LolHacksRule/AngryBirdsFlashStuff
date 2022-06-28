package §'!J§
{
   import §#!H§.§#p§;
   import §'!Q§.§ §;
   import §,!§.§![§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §;!o§.§>!l§;
   import §;H§.§%!D§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§?1§;
   import §?N§.§]!e§;
   import §[!+§.§ !I§;
   import §]+§.§@!J§;
   import §^!W§.UserProgressEvent;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §8!J§ extends §%!D§
   {
       
      
      private var §<K§:§?1§;
      
      private var §>!6§:String;
      
      private var §,!&§:String;
      
      protected var §,0§:Boolean = false;
      
      private var §"5§:Boolean = false;
      
      public function §8!J§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
         §^!c§.§5!Y§.background.§5!e§();
         if(LevelManager.§];§().name == "1000")
         {
            §&!m§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§,0§)
         {
            this.§4^§();
         }
      }
      
      override public function deActivate() : void
      {
         §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
         §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
         §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§"5§ = false;
         super.deActivate();
      }
      
      protected function §4^§() : void
      {
         §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
         §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
         §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
         §&!m§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §![§).§<y§(LevelManager.§%n§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §![§).getEagleScoreForLevel(LevelManager.§%n§);
         if(!this.§,0§)
         {
            if(§%!#§ && _loc1_ == 1)
            {
               this.§,!&§ = "crown";
               §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
               §&!m§.getItemByName("Button_Share_Crown").setVisibility(true);
               §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
               _loc3_ = §&!m§.getItemByName("Button_Share_Crown").x + §&!m§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §&!m§.getItemByName("Button_Share_Crown").y + §&!m§.getItemByName("Container_LevelEndStripe").y;
               §4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc3_,_loc4_,§#p§.§8!C§,20);
               §&!m§.addChild(§4!y§);
               §=K§.push(§4!y§);
               §9'§.playSound("Hiscore_Star_Splash1",§!!>§);
            }
            else if(§3!h§)
            {
               this.§,!&§ = "stars";
               §&!m§.getItemByName("Button_Share_Default").setVisibility(false);
               §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
               §&!m§.getItemByName("Button_Share_Stars").setVisibility(true);
               _loc3_ = §&!m§.getItemByName("Button_Share_Stars").x + §&!m§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §&!m§.getItemByName("Button_Share_Stars").y + §&!m§.getItemByName("Container_LevelEndStripe").y;
               §4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc3_,_loc4_,§#p§.§8!C§,20);
               §&!m§.addChild(§4!y§);
               §=K§.push(§4!y§);
               §9'§.playSound("Hiscore_Star_Splash1",§!!>§);
            }
            else
            {
               this.§,!&§ = "";
               §&!m§.getItemByName("Button_Share_Default").setVisibility(true);
               §&!m§.getItemByName("Button_Share_Crown").setVisibility(false);
               §&!m§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§4^§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §![§).§0m§ && _loc4_.indexOf(param2) != -1)
         {
            this.§<K§ = §]!e§.§>§();
            this.§>!6§ = param2;
            (AngryBirdsFP11.sUserProgress as §![§).addEventListener(UserProgressEvent.§^!k§,this.§`!8§);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §@!J§.§!v§(_loc5_);
               §[!P§.§;!K§.§&2§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§3l§.§&2§();
               _loc7_ = (AngryBirdsFP11.sUserProgress as §![§).§<y§(LevelManager.§%n§);
               §>!l§.§ a§("shareCrown",LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),_loc7_,§^!c§.§-U§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§3l§.§&2§();
               §>!l§.§ a§("shareThreeStars",LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),§^!c§.§-U§.getScore());
               break;
            case "SHARE_DEFAULT":
               §>!l§.§ a§("shareDefault",LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),§^!c§.§-U§.getScore(),true);
               break;
            case "EMBED":
               §]!e§.§@!'§(LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),§^!c§.§-U§.getScore(),this.§,!&§);
         }
      }
      
      protected function §`!8§(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §![§).removeEventListener(UserProgressEvent.§^!k§,this.§`!8§);
         if(this.§<K§)
         {
            this.§<K§.close();
            this.§<K§ = null;
         }
         this.uiInteractionHandler(-1,this.§>!6§,null);
         this.§>!6§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§^!c§.§2!w§ as §[!P§).newUserScore(LevelManager.§%n§);
         (AngryBirdsFP11.sUserProgress as §![§).saveLevelProgress(LevelManager.§%n§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§);
         var _loc3_:int = §^!c§.§-U§.getScore();
         §%!#§ = _loc3_ > _loc2_;
         §[!3§(_loc3_,_loc2_);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§%n§,_loc3_);
         (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
         (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("UnLit");
         (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("UnLit");
         (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("UnLit");
         if(§%!#§)
         {
            this.saveLevelProgress();
         }
         (§^!c§.§2!w§ as §[!P§).§99§.§&§ = false;
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_CutScene") as §==§).setComponentVisualState(param1);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §=U§.push((§&!m§.getItemByName("Button_Menu") as §==§).x);
         §=U§.push((§&!m§.getItemByName("Button_Replay") as §==§).x);
         §=U§.push((§&!m§.getItemByName("Button_NextLevel") as §==§).x);
         §=U§.push((§&!m§.getItemByName("Button_CutScene") as §==§).x);
      }
      
      override protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[0] + Math.abs(§=U§[1] - §=U§[0]) / 2;
            (§&!m§.getItemByName("Button_CutScene") as §==§).x = §=U§[1] + Math.abs(§=U§[2] - §=U§[1]) / 2;
         }
         else
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = §=U§[0];
            (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1];
            (§&!m§.getItemByName("Button_CutScene") as §==§).x = §=U§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
         (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
         (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
         if(LevelManager.§7!X§())
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = §=U§[0];
            (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1];
            (§&!m§.getItemByName("Button_NextLevel") as §==§).x = §=U§[2];
         }
         else
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = §=U§[0] + Math.abs(§=U§[1] - §=U§[0]) / 2;
            (§&!m§.getItemByName("Button_Replay") as §==§).x = §=U§[1] + Math.abs(§=U§[2] - §=U§[1]) / 2;
         }
      }
   }
}
