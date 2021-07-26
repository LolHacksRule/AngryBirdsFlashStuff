package §]§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§7`§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.§=!C§;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §#g§.§!P§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §,#,§.§[!V§;
   import §2G§.§"A§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7#$§.§3!,§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §>#q§.§?V§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.AvatarCreatorPopup;
   import §?Q§.EmbedPopup;
   import §?Q§.FirstTimePayerPopup;
   import §?Q§.SyncingPopup;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`#c§.UserProgressEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%q§ extends §+!F§ implements §2"M§, §1k§, §+#?§
   {
       
      
      private var §2#^§:String;
      
      private var §4z§:String;
      
      protected var §"!]§:Boolean = false;
      
      private var §4"c§:Boolean = false;
      
      private var §+#0§:Array;
      
      private var §#!h§:§=#o§;
      
      private var §?#O§:FirstTimePayerPopup;
      
      private var §8"i§:Object;
      
      protected var §"#W§:Wallet;
      
      public function §%q§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §false§.§4#;§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§#!h§ = §=#o§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§,$5§);
         §]$?§.§2#§.background.stopAmbientSound();
         §;!w§.getItemByName("Button_FreePowerups").setVisibility(§@z§.§ !D§.§0x§.§##[§);
         if(this.§"!]§)
         {
            this.§["b§();
         }
         §<"G§.trackPageView(this,this.§4!G§(),§<"G§.§>"7§);
         §7!b§.§7@§("trackFBPixelEvent","level_complete");
         this.§6"h§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§;!w§.getItemByName("Button_NextLevel_Orange") as §1"r§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §;!w§.getItemByName("Button_NextLevel").setVisibility(false);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = §<"#§[0] + Math.abs(§<"#§[1] - §<"#§[0]) / 2;
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = §<"#§[1] + Math.abs(§<"#§[2] - §<"#§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.§&!;§();
         this.§4"c§ = false;
         if(this.§?#O§)
         {
            this.§?#O§.removeEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         }
         super.deActivate();
         this.§7=§(this.§"#W§);
      }
      
      protected function §["b§() : void
      {
         §;!w§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §!Y§() : void
      {
         §;!w§.getItemByName("Button_NextLevel").setVisibility(false);
         §;!w§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §;!w§.getItemByName("Button_CutScene").setVisibility(false);
         §;!w§.getItemByName("Button_Menu").setVisibility(false);
         §;!w§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§"!]§)
         {
            this.§["b§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§1#O§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc5_:§,#@§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§;w§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§@#D§.§,"4§,§5R§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§2#^§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).addEventListener(UserProgressEvent.§!"z§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               § b§.§#! §();
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§=V§("CATEGORYBACKGROUNDS");
               break;
            case "EMBED":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§9!%§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§0"<§(mLevelManager.currentLevel),§]$?§.§;r§.getScore(),this.§4z§);
               break;
            case "FREE_POWERUPS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§2!w§();
         }
      }
      
      protected function §#"]§(param1:String) : void
      {
         §7!b§.§&#&§("permissionRequestComplete",this.§#"]§);
         if(param1 == "true" && this.§8"i§)
         {
            §7!b§.§7@§("shareBrag",this.§8"i§.friendId,this.§8"i§.bragPhotoId,this.§8"i§.bragTitle,this.§8"i§.bragText,this.§8"i§.bragCaption,this.§8"i§.levelId);
         }
      }
      
      protected function §=V§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§@#D§.NORMAL,§5R§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §9!%§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§@#D§.NORMAL,§5R§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §2!w§() : void
      {
         this.§?#O§ = new FirstTimePayerPopup(§@#D§.NORMAL,§5R§.TOP);
         this.§?#O§.addEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§?#O§);
      }
      
      protected function §7"m§(param1:Event) : void
      {
         this.§?#O§.removeEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         §;!w§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §0"<§(param1:String) : String
      {
         return (mLevelManager as §8$%§).§0"<§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3!,§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §!=§.§!^§)
         {
            _loc1_ = §4#§.STATE_NAME;
         }
         else if(_loc2_.name == §,x§.§0Y§)
         {
            _loc1_ = §,x§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §#!$§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).removeEventListener(UserProgressEvent.§!"z§,this.onUserProgressSaved);
         var _loc2_:§=!C§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§0"O§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§2#^§,null);
         this.§2#^§ = null;
      }
      
      private function §&!;§() : void
      {
         §;!w§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §;!w§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §;!w§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §;!w§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§]$?§.§;u§ as §@z§).§1s§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§>#P§();
         this.§"!]§ = false;
      }
      
      protected function §>#P§() : void
      {
         (§;!w§.getItemByName("Textfield_SharingText") as §7`§).setVisibility(false);
         §;!w§.getItemByName("ButtonBrag").setVisibility(false);
         §;!w§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§;!w§.getItemByName("BragFramePlayer") as §"!A§).setVisibility(false);
         (§;!w§.getItemByName("BragFrameFriend") as §"!A§).setVisibility(false);
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
         var _loc8_:§1"r§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§`"e§)
         {
            this.saveLevelProgress();
         }
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §3";§.§#"'§().§7g§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§(),§]$?§.§2#§.slingshot.§^"]§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§]$?§.§2#§ as §!P§).§-!3§(),§]$?§.§;r§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §?V§.§,$,§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §;!w§.getItemByName("Button_Unlocked_Bronze") as §1"r§;
                     break;
                  case "B20008":
                     _loc8_ = §;!w§.getItemByName("Button_Unlocked_Silver") as §1"r§;
                     break;
                  case "B20009":
                     _loc8_ = §;!w§.getItemByName("Button_Unlocked_Gold") as §1"r§;
                     break;
                  case "B20010":
                     _loc8_ = §;!w§.getItemByName("Button_Unlocked_Diamond") as §1"r§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §6!&§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§6#x§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §3";§.§#"'§().§,h§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §=#o§
      {
         return §=#o§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§-m§;
      }
      
      public function §4!G§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      private function §#"b§(param1:§[!V§) : Boolean
      {
         return §"A§.§<$!§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            _loc1_ = §3"E§.§3$0§;
         }
         if(this.§"#W§)
         {
            this.§"#W§.§`#8§.scaleX = _loc1_;
            this.§"#W§.§`#8§.scaleY = _loc1_;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(this.§"#W§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§;!w§.getItemByName("Button_NextLevel_Orange") as §1"r§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§;!w§.getItemByName("Button_NextLevel_Orange") as §1"r§).setComponentVisualState(param1);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
