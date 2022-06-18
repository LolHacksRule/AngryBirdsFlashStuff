package §3=§
{
   import § !D§.§4B§;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§[§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §'#g§.§&L§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §7#j§.§@"F§;
   import §;$5§.§8"6§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §=!2§.§%"T§;
   import §=#§.§0"V§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.AvatarCreatorPopup;
   import §?!N§.EmbedPopup;
   import §?!N§.FirstTimePayerPopup;
   import §?!N§.SyncingPopup;
   import §]"'§.§+!!§;
   import §]"'§.§@"%§;
   import §`D§.UserProgressEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §5r§ extends §>#r§ implements §0"+§, §="D§, §["b§
   {
       
      
      private var §]!,§:String;
      
      private var §+M§:String;
      
      protected var §"'§:Boolean = false;
      
      private var §2"t§:Boolean = false;
      
      private var §?!U§:Array;
      
      private var §]!v§:§@"%§;
      
      private var §9<§:FirstTimePayerPopup;
      
      private var §!!Z§:Object;
      
      protected var §?3§:Wallet;
      
      public function §5r§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §0"j§.§-i§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§]!v§ = §@"%§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§=`§);
         §%"T§.§;`§.background.stopAmbientSound();
         §<"`§.getItemByName("Button_FreePowerups").setVisibility(§'"a§.§!!8§.§+!N§.§>_§);
         if(this.§"'§)
         {
            this.§5!T§();
         }
         §5"w§.trackPageView(this,this.§5!R§(),§5"w§.§"$?§);
         §@"F§.§^$#§("trackFBPixelEvent","level_complete");
         this.§[D§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§<"`§.getItemByName("Button_NextLevel_Orange") as §"S§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §<"`§.getItemByName("Button_NextLevel").setVisibility(false);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = §]#G§[0] + Math.abs(§]#G§[1] - §]#G§[0]) / 2;
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = §]#G§[1] + Math.abs(§]#G§[2] - §]#G§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.§0N§();
         this.§2"t§ = false;
         if(this.§9<§)
         {
            this.§9<§.removeEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         }
         super.deActivate();
         this.§"[§(this.§?3§);
      }
      
      protected function §5!T§() : void
      {
         §<"`§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §!"E§() : void
      {
         §<"`§.getItemByName("Button_NextLevel").setVisibility(false);
         §<"`§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §<"`§.getItemByName("Button_CutScene").setVisibility(false);
         §<"`§.getItemByName("Button_Menu").setVisibility(false);
         §<"`§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§"'§)
         {
            this.§5!T§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§]#3§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc5_:§@#G§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§6#P§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§%#§.§3t§,§9#5§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§]!,§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).addEventListener(UserProgressEvent.§'$5§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               §[#%§.§^L§();
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§6#%§("CATEGORYBACKGROUNDS");
               break;
            case "EMBED":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§=4§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§#6§(mLevelManager.currentLevel),§%"T§.§+"M§.getScore(),this.§+M§);
               break;
            case "FREE_POWERUPS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,p§();
         }
      }
      
      protected function §+!c§(param1:String) : void
      {
         §@"F§.§=F§("permissionRequestComplete",this.§+!c§);
         if(param1 == "true" && this.§!!Z§)
         {
            §@"F§.§^$#§("shareBrag",this.§!!Z§.friendId,this.§!!Z§.bragPhotoId,this.§!!Z§.bragTitle,this.§!!Z§.bragText,this.§!!Z§.bragCaption,this.§!!Z§.levelId);
         }
      }
      
      protected function §6#%§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%#§.NORMAL,§9#5§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=4§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§%#§.NORMAL,§9#5§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §,p§() : void
      {
         this.§9<§ = new FirstTimePayerPopup(§%#§.NORMAL,§9#5§.TOP);
         this.§9<§.addEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§9<§);
      }
      
      protected function §"l§(param1:Event) : void
      {
         this.§9<§.removeEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         §<"`§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §#6§(param1:String) : String
      {
         return (mLevelManager as §,-§).§#6§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§[#5§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §%"#§.§?S§)
         {
            _loc1_ = §&P§.STATE_NAME;
         }
         else if(_loc2_.name == §!!V§.§""W§)
         {
            _loc1_ = §!!V§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §8$8§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).removeEventListener(UserProgressEvent.§'$5§,this.onUserProgressSaved);
         var _loc2_:§8"6§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§2;§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§]!,§,null);
         this.§]!,§ = null;
      }
      
      private function §0N§() : void
      {
         §<"`§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §<"`§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §<"`§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §<"`§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§%"T§.§>$<§ as §'"a§).§ "m§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§4J§();
         this.§"'§ = false;
      }
      
      protected function §4J§() : void
      {
         (§<"`§.getItemByName("Textfield_SharingText") as §-#j§).setVisibility(false);
         §<"`§.getItemByName("ButtonBrag").setVisibility(false);
         §<"`§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§<"`§.getItemByName("BragFramePlayer") as §>#8§).setVisibility(false);
         (§<"`§.getItemByName("BragFrameFriend") as §>#8§).setVisibility(false);
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
         var _loc8_:§"S§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§4c§)
         {
            this.saveLevelProgress();
         }
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §+$A§.§@"i§().§>e§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§(),§%"T§.§;`§.slingshot.§@$B§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§%"T§.§;`§ as §4B§).§ #O§(),§%"T§.§+"M§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §&L§.§2"I§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §<"`§.getItemByName("Button_Unlocked_Bronze") as §"S§;
                     break;
                  case "B20008":
                     _loc8_ = §<"`§.getItemByName("Button_Unlocked_Silver") as §"S§;
                     break;
                  case "B20009":
                     _loc8_ = §<"`§.getItemByName("Button_Unlocked_Gold") as §"S§;
                     break;
                  case "B20010":
                     _loc8_ = §<"`§.getItemByName("Button_Unlocked_Diamond") as §"S§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §@n§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§"!p§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §+$A§.§@"i§().§"c§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §@"%§
      {
         return §@"%§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§1#&§;
      }
      
      public function §5!R§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      private function §[!F§(param1:§+!!§) : Boolean
      {
         return §0"V§.§5#$§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            _loc1_ = §6"H§.§!d§;
         }
         if(this.§?3§)
         {
            this.§?3§.§5#k§.scaleX = _loc1_;
            this.§?3§.§5#k§.scaleY = _loc1_;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(this.§?3§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§<"`§.getItemByName("Button_NextLevel_Orange") as §"S§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§<"`§.getItemByName("Button_NextLevel_Orange") as §"S§).setComponentVisualState(param1);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
