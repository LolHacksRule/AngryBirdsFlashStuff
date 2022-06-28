package §0o§
{
   import § !k§.§%N§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §'H§.§9!f§;
   import §06§.§#_§;
   import §1!T§.§6!H§;
   import §1n§.dynamic;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §9!Q§.§&!a§;
   import §9!Q§.§7o§;
   import §=R§.§7!"§;
   import §[a§.UserProgressEvent;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §^!p§ extends §%N§
   {
       
      
      private var §>!5§:§&!a§;
      
      private var §^!f§:String;
      
      private var §]k§:String;
      
      protected var §#N§:Boolean = false;
      
      private var §5<§:Boolean = false;
      
      public function §^!p§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
         §4!]§.§8C§.background.§&[§();
         if(LevelManager.§5!K§().name == "1000")
         {
            §`-§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§#N§)
         {
            this.§7t§();
         }
      }
      
      override public function deActivate() : void
      {
         §`-§.getItemByName("Button_Share_Default").setVisibility(false);
         §`-§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`-§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§5<§ = false;
         super.deActivate();
      }
      
      protected function §7t§() : void
      {
         §`-§.getItemByName("Button_Share_Default").setVisibility(false);
         §`-§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`-§.getItemByName("Button_Share_Stars").setVisibility(false);
         §`-§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §9!f§).§while§(LevelManager.§^!F§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §9!f§).getEagleScoreForLevel(LevelManager.§^!F§);
         if(!this.§#N§)
         {
            if(§3_§ && _loc1_ == 1)
            {
               this.§]k§ = "crown";
               §`-§.getItemByName("Button_Share_Default").setVisibility(false);
               §`-§.getItemByName("Button_Share_Crown").setVisibility(true);
               §`-§.getItemByName("Button_Share_Stars").setVisibility(false);
               _loc3_ = §`-§.getItemByName("Button_Share_Crown").x + §`-§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §`-§.getItemByName("Button_Share_Crown").y + §`-§.getItemByName("Container_LevelEndStripe").y;
               §7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc3_,_loc4_,§#_§.§'!+§,20);
               §`-§.addChild(§7<§);
               §5!4§.push(§7<§);
               §6!H§.playSound("Hiscore_Star_Splash1",§5!o§);
            }
            else if(§[G§)
            {
               this.§]k§ = "stars";
               §`-§.getItemByName("Button_Share_Default").setVisibility(false);
               §`-§.getItemByName("Button_Share_Crown").setVisibility(false);
               §`-§.getItemByName("Button_Share_Stars").setVisibility(true);
               _loc3_ = §`-§.getItemByName("Button_Share_Stars").x + §`-§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §`-§.getItemByName("Button_Share_Stars").y + §`-§.getItemByName("Container_LevelEndStripe").y;
               §7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc3_,_loc4_,§#_§.§'!+§,20);
               §`-§.addChild(§7<§);
               §5!4§.push(§7<§);
               §6!H§.playSound("Hiscore_Star_Splash1",§5!o§);
            }
            else
            {
               this.§]k§ = "";
               §`-§.getItemByName("Button_Share_Default").setVisibility(true);
               §`-§.getItemByName("Button_Share_Crown").setVisibility(false);
               §`-§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§7t§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §9!f§).§29§ && _loc4_.indexOf(param2) != -1)
         {
            this.§>!5§ = §7o§.§=E§();
            this.§^!f§ = param2;
            (AngryBirdsFP11.sUserProgress as §9!f§).addEventListener(UserProgressEvent.§&!R§,this.§#!O§);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §]V§.§ 4§(_loc5_);
               §[!m§.§1H§.§2!3§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§`!c§.§2!3§();
               _loc7_ = (AngryBirdsFP11.sUserProgress as §9!f§).§while§(LevelManager.§^!F§);
               §1?§.§>!X§("shareCrown",LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),_loc7_,§4!]§.§=`§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§`!c§.§2!3§();
               §1?§.§>!X§("shareThreeStars",LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),§4!]§.§=`§.getScore());
               break;
            case "SHARE_DEFAULT":
               §1?§.§>!X§("shareDefault",LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),§4!]§.§=`§.getScore(),true);
               break;
            case "EMBED":
               §7o§.§`J§(LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),§4!]§.§=`§.getScore(),this.§]k§);
         }
      }
      
      protected function §#!O§(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §9!f§).removeEventListener(UserProgressEvent.§&!R§,this.§#!O§);
         if(this.§>!5§)
         {
            this.§>!5§.close();
            this.§>!5§ = null;
         }
         this.uiInteractionHandler(-1,this.§^!f§,null);
         this.§^!f§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§4!]§.§7!G§ as §[!m§).newUserScore(LevelManager.§^!F§);
         (AngryBirdsFP11.sUserProgress as §9!f§).saveLevelProgress(LevelManager.§^!F§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§^!F§);
         var _loc3_:int = §4!]§.§=`§.getScore();
         §3_§ = _loc3_ > _loc2_;
         §2z§(_loc3_,_loc2_);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§^!F§,_loc3_);
         (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(false);
         (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.gotoAndStop("UnLit");
         (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.gotoAndStop("UnLit");
         (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.gotoAndStop("UnLit");
         if(§3_§)
         {
            this.saveLevelProgress();
         }
         (§4!]§.§7!G§ as §[!m§).§7!6§.§?0§ = false;
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_CutScene") as §,c§).setComponentVisualState(param1);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §#A§.push((§`-§.getItemByName("Button_Menu") as §,c§).x);
         §#A§.push((§`-§.getItemByName("Button_Replay") as §,c§).x);
         §#A§.push((§`-§.getItemByName("Button_NextLevel") as §,c§).x);
         §#A§.push((§`-§.getItemByName("Button_CutScene") as §,c§).x);
      }
      
      override protected function getViewXML() : XML
      {
         return dynamic.§[6§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§+G§(LevelManager.§^!F§))
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Replay") as §,c§).x = §#A§[0] + Math.abs(§#A§[1] - §#A§[0]) / 2;
            (§`-§.getItemByName("Button_CutScene") as §,c§).x = §#A§[1] + Math.abs(§#A§[2] - §#A§[1]) / 2;
         }
         else
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = §#A§[0];
            (§`-§.getItemByName("Button_Replay") as §,c§).x = §#A§[1];
            (§`-§.getItemByName("Button_CutScene") as §,c§).x = §#A§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
         (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
         (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
         if(LevelManager.§=L§())
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = §#A§[0];
            (§`-§.getItemByName("Button_Replay") as §,c§).x = §#A§[1];
            (§`-§.getItemByName("Button_NextLevel") as §,c§).x = §#A§[2];
         }
         else
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = §#A§[0] + Math.abs(§#A§[1] - §#A§[0]) / 2;
            (§`-§.getItemByName("Button_Replay") as §,c§).x = §#A§[1] + Math.abs(§#A§[2] - §#A§[1]) / 2;
         }
      }
   }
}
