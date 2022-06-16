package §,!=§
{
   import §!!B§.UserProgressEvent;
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §#v§.§=!Z§;
   import §%$!§.§+3§;
   import §%$!§.§?i§;
   import §&#S§.§""Z§;
   import §&#S§.§^#[§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §'z§.§4!x§;
   import §+"%§.§6X§;
   import §,n§.§`"d§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §52§.§#%§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §;!H§.§;!W§;
   import §;!Q§.§^"!§;
   import §<!=§.§#!A§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.AvatarCreatorPopup;
   import §?"R§.EmbedPopup;
   import §?"R§.FirstTimePayerPopup;
   import §?"R§.SyncingPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §,"M§ extends §3"%§ implements § 1§, §@#@§
   {
       
      
      private var §;#A§:String;
      
      private var §1>§:String;
      
      protected var §5]§:Boolean = false;
      
      private var §9"=§:Boolean = false;
      
      private var §?#D§:§^"!§;
      
      private var §1!$§:Array;
      
      private var §'7§:§+3§;
      
      private var §<j§:FirstTimePayerPopup;
      
      private var §>"N§:Object;
      
      public function §,"M§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
         §!$§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §@#`§.§#!c§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§'7§ = §+3§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§=$8§);
         §>"$§.§3#'§.background.stopAmbientSound();
         §!$§.getItemByName("Button_FreePowerups").setVisibility(§8G§.§%#S§.§+T§.§""O§);
         if(this.§5]§)
         {
            this.§&j§();
         }
         §,"W§.trackPageView(this,this.§7">§(),§,"W§.§6#[§);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §!$§.getItemByName("Button_NextLevel").setVisibility(false);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = §1#Q§[0] + Math.abs(§1#Q§[1] - §1#Q§[0]) / 2;
            (§!$§.getItemByName("Button_Replay") as §=O§).x = §1#Q§[1] + Math.abs(§1#Q§[2] - §1#Q§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.§3"v§();
         §!$§.getItemByName("Button_Share_Default").setVisibility(false);
         §!$§.getItemByName("Button_Share_Crown").setVisibility(false);
         §!$§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§>#w§();
         this.§9"=§ = false;
         if(this.§<j§)
         {
            this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         }
         super.deActivate();
      }
      
      protected function §&j§() : void
      {
         §!$§.getItemByName("Button_Share_Default").setVisibility(false);
         §!$§.getItemByName("Button_Share_Crown").setVisibility(false);
         §!$§.getItemByName("Button_Share_Stars").setVisibility(false);
         §!$§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §1"F§() : void
      {
         §!$§.getItemByName("Button_NextLevel").setVisibility(false);
         §!$§.getItemByName("Button_CutScene").setVisibility(false);
         §!$§.getItemByName("Button_Menu").setVisibility(false);
         §!$§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      protected function §""a§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§-a§(mLevelManager.currentLevel);
         int((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).getEagleScoreForLevel(mLevelManager.currentLevel));
         if(§ 7§ && _loc1_ == 1)
         {
            this.§1>§ = "crown";
            §!$§.getItemByName("Button_Share_Default").setVisibility(false);
            §!$§.getItemByName("Button_Share_Crown").setVisibility(true);
            §!$§.getItemByName("Button_Share_Stars").setVisibility(false);
            _loc3_ = §!$§.getItemByName("Button_Share_Crown").x + §!$§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §!$§.getItemByName("Button_Share_Crown").y + §!$§.getItemByName("Container_LevelEndStripe").y;
            §^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§#!A§.§&$<§,20);
            §!$§.addChild(§^!F§);
            §'#X§.push(§^!F§);
            §#$+§.playSound("Hiscore_Star_Splash1",§]$-§);
         }
         else if(§@c§)
         {
            this.§1>§ = "stars";
            §!$§.getItemByName("Button_Share_Default").setVisibility(false);
            §!$§.getItemByName("Button_Share_Crown").setVisibility(false);
            §!$§.getItemByName("Button_Share_Stars").setVisibility(true);
            _loc3_ = §!$§.getItemByName("Button_Share_Stars").x + §!$§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §!$§.getItemByName("Button_Share_Stars").y + §!$§.getItemByName("Container_LevelEndStripe").y;
            §^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§#!A§.§&$<§,20);
            §!$§.addChild(§^!F§);
            §'#X§.push(§^!F§);
            §#$+§.playSound("Hiscore_Star_Splash1",§]$-§);
         }
         else
         {
            this.§1>§ = "";
            §!$§.getItemByName("Button_Share_Default").setVisibility(true);
            §!$§.getItemByName("Button_Share_Crown").setVisibility(false);
            §!$§.getItemByName("Button_Share_Stars").setVisibility(false);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§5]§)
         {
            this.§&j§();
         }
         else
         {
            this.§""a§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§,#I§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc5_:§8!H§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§`#I§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§[W§.§5Z§,§<d§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§;#A§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).addEventListener(UserProgressEvent.§5"!§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#$+§.playSound("Menu_Confirm",§=!-§.§%d§);
               break;
            case "OPEN_AVATAR":
               this.§[#N§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.addCallback("permissionRequestComplete",this.§3_§);
               §6X§.§3U§("askForPublishStreamPermission");
               break;
            case "SHARE_STARS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.addCallback("permissionRequestComplete",this.§'L§);
               §6X§.§3U§("askForPublishStreamPermission");
               break;
            case "SHARE_DEFAULT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §6X§.addCallback("permissionRequestComplete",this.§2"1§);
               §6X§.§3U§("askForPublishStreamPermission");
               break;
            case "EMBED":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§4G§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§[!2§(mLevelManager.currentLevel),§>"$§.§#0§.getScore(),this.§1>§);
               break;
            case "FREE_POWERUPS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§?#X§();
         }
      }
      
      protected function §3_§(param1:String) : void
      {
         var _loc2_:int = 0;
         §6X§.§5!3§("permissionRequestComplete",this.§3_§);
         if(param1 == "true")
         {
            _loc2_ = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§-a§(mLevelManager.currentLevel);
            §6X§.§3U§("shareCrown",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§[!2§(mLevelManager.currentLevel),_loc2_,§>"$§.§#0§.getScore());
         }
      }
      
      protected function §'L§(param1:String) : void
      {
         §6X§.§5!3§("permissionRequestComplete",this.§'L§);
         if(param1 == "true")
         {
            §6X§.§3U§("shareThreeStars",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§[!2§(mLevelManager.currentLevel),§>"$§.§#0§.getScore());
         }
      }
      
      protected function §2"1§(param1:String) : void
      {
         §6X§.§5!3§("permissionRequestComplete",this.§2"1§);
         if(param1 == "true")
         {
            §6X§.§3U§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§[!2§(mLevelManager.currentLevel),§>"$§.§#0§.getScore(),true);
         }
      }
      
      protected function §<#<§(param1:String) : void
      {
         §6X§.§5!3§("permissionRequestComplete",this.§<#<§);
         if(param1 == "true" && this.§>"N§)
         {
            §6X§.§3U§("shareBrag",this.§>"N§.friendId,this.§>"N§.bragPhotoId,this.§>"N§.bragTitle,this.§>"N§.bragText,this.§>"N§.bragCaption,this.§>"N§.levelId);
         }
      }
      
      protected function §[#N§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §4G§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§[W§.NORMAL,§<d§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §?#X§() : void
      {
         this.§<j§ = new FirstTimePayerPopup(§[W§.NORMAL,§<d§.TOP);
         this.§<j§.addEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§<j§);
      }
      
      protected function §8"@§(param1:Event) : void
      {
         this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         §!$§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §[!2§(param1:String) : String
      {
         return (mLevelManager as §6^§).§[!2§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §=!-§.§]#o§)
         {
            _loc1_ = §!a§.STATE_NAME;
         }
         else if(_loc2_.name == §5#J§.§2#W§)
         {
            _loc1_ = §5#J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §<!B§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).removeEventListener(UserProgressEvent.§5"!§,this.onUserProgressSaved);
         var _loc2_:§#9§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.closePopupById(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§;#A§,null);
         this.§;#A§ = null;
      }
      
      private function §>#w§() : void
      {
         §!$§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §!$§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §!$§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §!$§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§>"$§.§<_§ as §8G§).§ "q§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§0"9§();
         this.§5]§ = false;
      }
      
      protected function §0"9§() : void
      {
         (§!$§.getItemByName("Textfield_SharingText") as §]$!§).setVisibility(false);
         §!$§.getItemByName("ButtonBrag").setVisibility(false);
         §!$§.getItemByName("ButtonShare").setVisibility(false);
         §!$§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§!$§.getItemByName("BragFramePlayer") as §="T§).setVisibility(false);
         (§!$§.getItemByName("BragFrameFriend") as §="T§).setVisibility(false);
         (§!$§.getItemByName("ShareCrowns") as §="T§).setVisibility(false);
         (§!$§.getItemByName("ShareThreeStars") as §="T§).setVisibility(false);
         if(mLevelManager.isCutSceneNext())
         {
            §2!u§();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      private function §0N§() : void
      {
         if(this.§'7§.§&!?§)
         {
            if(this.§'7§.§&!?§.§=#t§())
            {
               this.§="?§();
            }
         }
      }
      
      private function §="?§() : void
      {
         var _loc6_:String = null;
         var _loc8_:MovieClip = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§^#[§ = null;
         this.§1!$§ = [];
         var _loc1_:Array = (§>"$§.§#0§ as §4!x§).§=!$§();
         var _loc2_:MovieClip = §!$§.getItemByName("eggMovieClip").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         if(this.dataModel.§&!?§.§=#t§() && mLevelManager.currentLevel.indexOf(§,#?§.§;s§) != -1)
         {
            this.§?#D§ = new §^"!§(this.dataModel.§&!?§.§?!>§,"",false,false);
            this.§?#D§.§4"E§ = this.§'7§.§&!?§.§ #g§;
            this.§?#D§.x = -70;
            this.§?#D§.y = -70;
            §!$§.getItemByName("EggRaffleBasketContainer").mClip.addChild(this.§?#D§);
         }
         var _loc3_:int = _loc1_.length - 1;
         var _loc12_:int = 0;
         var _loc13_:* = _loc1_;
         while(§§hasnext(_loc13_,_loc12_))
         {
            (_loc8_ = new §@`§.§4!i§("Wonderland_Egg" + _loc6_)()).gotoAndStop(1);
            _loc8_.x = _loc2_.numChildren * _loc8_.width;
            _loc2_.addChild(_loc8_);
            _loc9_ = §>"$§.§="§() - 140;
            _loc10_ = 1.5 + _loc3_ * 0.5;
            (_loc11_ = §""Z§.§3!]§.§5"0§(_loc8_,{
               "x":_loc9_,
               "alpha":0.8
            },{
               "x":_loc8_.x,
               "alpha":1
            },_loc10_,§""Z§.§[$1§)).onComplete = this.§"#S§;
            _loc11_.play();
            this.§1!$§.push(_loc11_);
            _loc3_--;
         }
         if(_loc1_.length > 0)
         {
            this.§'7§.§&!?§.§-"r§(this.§'7§.§&!?§.email,_loc1_.length);
         }
      }
      
      private function §"#S§() : void
      {
         if(this.§?#D§)
         {
            this.§?#D§.§7Z§();
            this.§?#D§.§4"E§ = Math.min(this.§'7§.§&!?§.§null§,this.§?#D§.§4"E§ + 1);
         }
      }
      
      private function §3"v§() : void
      {
         var _loc1_:§^#[§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§1!$§)
         {
            _loc1_.stop();
         }
         _loc2_ = §!$§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         var _loc3_:MovieClip = §!$§.getItemByName("eggMovieClip").mClip;
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         this.§1!$§ = null;
      }
      
      override protected function setScoreData() : void
      {
         var _loc7_:String = null;
         var _loc8_:§=O§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§ 7§)
         {
            this.saveLevelProgress();
         }
         this.§0N§();
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §-#A§.§6$2§().§?!5§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§(),§>"$§.§3#'§.slingshot.§`b§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§>"$§.§3#'§ as §#%§).§[5§(),§>"$§.§#0§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §;!W§.§%2§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §!$§.getItemByName("Button_Unlocked_Bronze") as §=O§;
                     break;
                  case "B20008":
                     _loc8_ = §!$§.getItemByName("Button_Unlocked_Silver") as §=O§;
                     break;
                  case "B20009":
                     _loc8_ = §!$§.getItemByName("Button_Unlocked_Gold") as §=O§;
                     break;
                  case "B20010":
                     _loc8_ = §!$§.getItemByName("Button_Unlocked_Diamond") as §=O§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §2$<§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§<4§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §-#A§.§6$2§().§>!`§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§9"H§;
      }
      
      public function §7">§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      private function §>$,§(param1:§?i§) : Boolean
      {
         return §`"d§.§0Y§(param1.userId);
      }
   }
}
