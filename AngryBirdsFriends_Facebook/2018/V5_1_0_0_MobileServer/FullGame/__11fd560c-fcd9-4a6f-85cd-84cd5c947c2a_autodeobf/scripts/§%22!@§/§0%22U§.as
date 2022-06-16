package §"!@§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §'",§.§8$7§;
   import §+$?§.§%!k§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1!=§.§%#;§;
   import §1!=§.§["+§;
   import §1!=§.§^"U§;
   import §1"N§.§""-§;
   import §2G§.§#"8§;
   import §2G§.§@#P§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<G§.UserProgressEvent;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §?P§.AvatarCreatorPopup;
   import §?P§.EmbedPopup;
   import §?P§.FirstTimePayerPopup;
   import §?P§.SyncingPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0"U§ extends §["F§ implements §7E§, §8#§, §9#a§
   {
       
      
      private var §-$9§:String;
      
      private var §2"h§:String;
      
      protected var §>#N§:Boolean = false;
      
      private var §>e§:Boolean = false;
      
      private var §%$9§:Array;
      
      private var §#A§:§#"8§;
      
      private var §!$%§:FirstTimePayerPopup;
      
      private var §'#-§:Object;
      
      protected var §&"K§:Wallet;
      
      public function §0"U§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §1Q§.§5T§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§#A§ = §#"8§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§0"H§);
         §3#U§.§#$4§.background.stopAmbientSound();
         §`!H§.getItemByName("Button_FreePowerups").setVisibility(§,A§.§2#O§.§7#M§.§3!v§);
         if(this.§>#N§)
         {
            this.§+!X§();
         }
         §`"x§.trackPageView(this,this.§0'§(),§`"x§.§4$#§);
         §^!K§.§+"D§("trackFBPixelEvent","level_complete");
         this.§[?§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§`!H§.getItemByName("Button_NextLevel_Orange") as §>"0§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §`!H§.getItemByName("Button_NextLevel").setVisibility(false);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = §5!h§[0] + Math.abs(§5!h§[1] - §5!h§[0]) / 2;
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = §5!h§[1] + Math.abs(§5!h§[2] - §5!h§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
         §`!H§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`!H§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§,l§();
         this.§>e§ = false;
         if(this.§!$%§)
         {
            this.§!$%§.removeEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         }
         super.deActivate();
         this.§8!3§(this.§&"K§);
      }
      
      protected function §+!X§() : void
      {
         §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
         §`!H§.getItemByName("Button_Share_Crown").setVisibility(false);
         §`!H§.getItemByName("Button_Share_Stars").setVisibility(false);
         §`!H§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §<+§() : void
      {
         §`!H§.getItemByName("Button_NextLevel").setVisibility(false);
         §`!H§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §`!H§.getItemByName("Button_CutScene").setVisibility(false);
         §`!H§.getItemByName("Button_Menu").setVisibility(false);
         §`!H§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      protected function §0!k§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§,C§(mLevelManager.currentLevel);
         var _loc2_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).getEagleScoreForLevel(mLevelManager.currentLevel);
         if(§>n§ && _loc1_ == 1)
         {
            this.§2"h§ = "crown";
            §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
            §`!H§.getItemByName("Button_Share_Crown").setVisibility(true);
            §`!H§.getItemByName("Button_Share_Stars").setVisibility(false);
            _loc3_ = §`!H§.getItemByName("Button_Share_Crown").x + §`!H§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §`!H§.getItemByName("Button_Share_Crown").y + §`!H§.getItemByName("Container_LevelEndStripe").y;
            §!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§8$7§.§-"4§,20);
            §`!H§.addChild(§!$9§);
            §;!g§.push(§!$9§);
            §!"p§.playSound("star_1_coins",§0#b§);
         }
         else if(§-#2§)
         {
            this.§2"h§ = "stars";
            §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
            §`!H§.getItemByName("Button_Share_Crown").setVisibility(false);
            §`!H§.getItemByName("Button_Share_Stars").setVisibility(true);
            _loc3_ = §`!H§.getItemByName("Button_Share_Stars").x + §`!H§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §`!H§.getItemByName("Button_Share_Stars").y + §`!H§.getItemByName("Container_LevelEndStripe").y;
            §!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§8$7§.§-"4§,20);
            §`!H§.addChild(§!$9§);
            §;!g§.push(§!$9§);
            §!"p§.playSound("star_1_coins",§0#b§);
         }
         else
         {
            this.§2"h§ = "";
            §`!H§.getItemByName("Button_Share_Default").setVisibility(true);
            §`!H§.getItemByName("Button_Share_Crown").setVisibility(false);
            §`!H§.getItemByName("Button_Share_Stars").setVisibility(false);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§>#N§)
         {
            this.§+!X§();
         }
         else
         {
            this.§0!k§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§0"7§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc5_:§%#;§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§<>§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§]"$§.§[#=§,§^"U§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§-$9§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).addEventListener(UserProgressEvent.§1"P§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               §!"p§.§>#p§();
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§5!g§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.exitFullScreen();
               §^!K§.addCallback("permissionRequestComplete",this.§6"7§);
               §^!K§.§+"D§("askForPublishStreamPermission");
               break;
            case "SHARE_STARS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.exitFullScreen();
               §^!K§.addCallback("permissionRequestComplete",this.§%$§);
               §^!K§.§+"D§("askForPublishStreamPermission");
               break;
            case "SHARE_DEFAULT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §^!K§.addCallback("permissionRequestComplete",this.§1h§);
               §^!K§.§+"D§("askForPublishStreamPermission");
               break;
            case "EMBED":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§?!4§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§7#J§(mLevelManager.currentLevel),§3#U§.§8I§.getScore(),this.§2"h§);
               break;
            case "FREE_POWERUPS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§'!M§();
         }
      }
      
      protected function §6"7§(param1:String) : void
      {
         var _loc2_:int = 0;
         §^!K§.§,"i§("permissionRequestComplete",this.§6"7§);
         if(param1 == "true")
         {
            _loc2_ = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§,C§(mLevelManager.currentLevel);
            §^!K§.§+"D§("shareCrown",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§7#J§(mLevelManager.currentLevel),_loc2_,§3#U§.§8I§.getScore());
         }
      }
      
      protected function §%$§(param1:String) : void
      {
         §^!K§.§,"i§("permissionRequestComplete",this.§%$§);
         if(param1 == "true")
         {
            §^!K§.§+"D§("shareThreeStars",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§7#J§(mLevelManager.currentLevel),§3#U§.§8I§.getScore());
         }
      }
      
      protected function §1h§(param1:String) : void
      {
         §^!K§.§,"i§("permissionRequestComplete",this.§1h§);
         if(param1 == "true")
         {
            §^!K§.§+"D§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§7#J§(mLevelManager.currentLevel),§3#U§.§8I§.getScore(),true);
         }
      }
      
      protected function §&k§(param1:String) : void
      {
         §^!K§.§,"i§("permissionRequestComplete",this.§&k§);
         if(param1 == "true" && this.§'#-§)
         {
            §^!K§.§+"D§("shareBrag",this.§'#-§.friendId,this.§'#-§.bragPhotoId,this.§'#-§.bragTitle,this.§'#-§.bragText,this.§'#-§.bragCaption,this.§'#-§.levelId);
         }
      }
      
      protected function §5!g§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§]"$§.NORMAL,§^"U§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §?!4§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§]"$§.NORMAL,§^"U§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §'!M§() : void
      {
         this.§!$%§ = new FirstTimePayerPopup(§]"$§.NORMAL,§^"U§.TOP);
         this.§!$%§.addEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§!$%§);
      }
      
      protected function §&$;§(param1:Event) : void
      {
         this.§!$%§.removeEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         §`!H§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §7#J§(param1:String) : String
      {
         return (mLevelManager as §?!0§).§7#J§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§"m§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §false§.§2"O§)
         {
            _loc1_ = § !v§.STATE_NAME;
         }
         else if(_loc2_.name == §>N§.§]$+§)
         {
            _loc1_ = §>N§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §1S§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).removeEventListener(UserProgressEvent.§1"P§,this.onUserProgressSaved);
         var _loc2_:§["+§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§""^§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§-$9§,null);
         this.§-$9§ = null;
      }
      
      private function §,l§() : void
      {
         §`!H§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §`!H§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §`!H§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §`!H§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§3#U§.§9#^§ as §,A§).§%o§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§`Q§();
         this.§>#N§ = false;
      }
      
      protected function §`Q§() : void
      {
         (§`!H§.getItemByName("Textfield_SharingText") as §%M§).setVisibility(false);
         §`!H§.getItemByName("ButtonBrag").setVisibility(false);
         §`!H§.getItemByName("ButtonShare").setVisibility(false);
         §`!H§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§`!H§.getItemByName("BragFramePlayer") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("BragFrameFriend") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("ShareCrowns") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("ShareThreeStars") as §@N§).setVisibility(false);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc7_:String = null;
         var _loc8_:§>"0§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§>n§)
         {
            this.saveLevelProgress();
         }
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         § try§.§!!t§().§+" §(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§(),§3#U§.§#$4§.slingshot.§`!R§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§3#U§.§#$4§ as §2$2§).§<Q§(),§3#U§.§8I§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §""-§.§<W§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §`!H§.getItemByName("Button_Unlocked_Bronze") as §>"0§;
                     break;
                  case "B20008":
                     _loc8_ = §`!H§.getItemByName("Button_Unlocked_Silver") as §>"0§;
                     break;
                  case "B20009":
                     _loc8_ = §`!H§.getItemByName("Button_Unlocked_Gold") as §>"0§;
                     break;
                  case "B20010":
                     _loc8_ = §`!H§.getItemByName("Button_Unlocked_Diamond") as §>"0§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §8# § = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§"!u§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               § try§.§!!t§().§5#F§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §#"8§
      {
         return §#"8§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §!3§() : String
      {
         return §`"x§.§2$,§;
      }
      
      public function §0'§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      private function §0#G§(param1:§@#P§) : Boolean
      {
         return §%!k§.§@#A§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            _loc1_ = §>"c§.§ "'§;
         }
         if(this.§&"K§)
         {
            this.§&"K§.§=#-§.scaleX = _loc1_;
            this.§&"K§.§=#-§.scaleY = _loc1_;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(this.§&"K§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§`!H§.getItemByName("Button_NextLevel_Orange") as §>"0§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§`!H§.getItemByName("Button_NextLevel_Orange") as §>"0§).setComponentVisualState(param1);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
