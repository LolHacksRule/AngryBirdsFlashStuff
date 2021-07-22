package §2";§
{
   import § !j§.§4#c§;
   import § §.§"E§;
   import §!#C§.§4!Q§;
   import §!#C§.§;!$§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §0!s§.§5!-§;
   import §0!s§.§6!e§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.AvatarCreatorPopup;
   import §>z§.EmbedPopup;
   import §>z§.FirstTimePayerPopup;
   import §>z§.SyncingPopup;
   import §?!a§.§2!-§;
   import §]C§.§ !+§;
   import §^"H§.UserProgressEvent;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0@§ extends §!"m§ implements §,!n§, §%!#§, §&>§
   {
       
      
      private var §8"q§:String;
      
      private var §-d§:String;
      
      protected var §`!O§:Boolean = false;
      
      private var §<#&§:Boolean = false;
      
      private var §4#7§:Array;
      
      private var §#!$§:§4!Q§;
      
      private var §^!`§:FirstTimePayerPopup;
      
      private var §-!=§:Object;
      
      protected var §1!B§:Wallet;
      
      public function §0@§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §?l§.§3m§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§#!$§ = §4!Q§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§2$?§);
         §7n§.§6#K§.background.stopAmbientSound();
         §[$5§.getItemByName("Button_FreePowerups").setVisibility(§ #v§.§1!!§.§&"6§.§5! §);
         if(this.§`!O§)
         {
            this.§6"N§();
         }
         §0I§.trackPageView(this,this.§#"!§(),§0I§.§##o§);
         § !+§.§>$%§("trackFBPixelEvent","level_complete");
         this.§0!A§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§[$5§.getItemByName("Button_NextLevel_Orange") as § !>§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §[$5§.getItemByName("Button_NextLevel").setVisibility(false);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = §,d§[0] + Math.abs(§,d§[1] - §,d§[0]) / 2;
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = §,d§[1] + Math.abs(§,d§[2] - §,d§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.§9!A§();
         this.§<#&§ = false;
         if(this.§^!`§)
         {
            this.§^!`§.removeEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         }
         super.deActivate();
         this.§&!U§(this.§1!B§);
      }
      
      protected function §6"N§() : void
      {
         §[$5§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §'!F§() : void
      {
         §[$5§.getItemByName("Button_NextLevel").setVisibility(false);
         §[$5§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §[$5§.getItemByName("Button_CutScene").setVisibility(false);
         §[$5§.getItemByName("Button_Menu").setVisibility(false);
         §[$5§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§`!O§)
         {
            this.§6"N§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§"!D§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc5_:§5!-§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§+!o§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§#"l§.§?!b§,§]"Y§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§8"q§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).addEventListener(UserProgressEvent.§[$$§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               §3Z§.§3j§();
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§##$§("CATEGORYBACKGROUNDS");
               break;
            case "EMBED":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§&!P§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§`!-§(mLevelManager.currentLevel),§7n§.§ "'§.getScore(),this.§-d§);
               break;
            case "FREE_POWERUPS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§>#s§();
         }
      }
      
      protected function §6$'§(param1:String) : void
      {
         § !+§.§?!§("permissionRequestComplete",this.§6$'§);
         if(param1 == "true" && this.§-!=§)
         {
            § !+§.§>$%§("shareBrag",this.§-!=§.friendId,this.§-!=§.bragPhotoId,this.§-!=§.bragTitle,this.§-!=§.bragText,this.§-!=§.bragCaption,this.§-!=§.levelId);
         }
      }
      
      protected function §##$§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§#"l§.NORMAL,§]"Y§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §&!P§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§#"l§.NORMAL,§]"Y§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §>#s§() : void
      {
         this.§^!`§ = new FirstTimePayerPopup(§#"l§.NORMAL,§]"Y§.TOP);
         this.§^!`§.addEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§^!`§);
      }
      
      protected function §'!#§(param1:Event) : void
      {
         this.§^!`§.removeEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         §[$5§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §`!-§(param1:String) : String
      {
         return (mLevelManager as §;#A§).§`!-§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§ T§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §`"A§.§+#f§)
         {
            _loc1_ = §8!N§.STATE_NAME;
         }
         else if(_loc2_.name == §+!I§.§3"J§)
         {
            _loc1_ = §+!I§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §9#7§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).removeEventListener(UserProgressEvent.§[$$§,this.onUserProgressSaved);
         var _loc2_:§6!e§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§7$9§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§8"q§,null);
         this.§8"q§ = null;
      }
      
      private function §9!A§() : void
      {
         §[$5§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §[$5§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §[$5§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §[$5§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§7n§.§-$<§ as § #v§).§;"'§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§+!<§();
         this.§`!O§ = false;
      }
      
      protected function §+!<§() : void
      {
         (§[$5§.getItemByName("Textfield_SharingText") as §`"$§).setVisibility(false);
         §[$5§.getItemByName("ButtonBrag").setVisibility(false);
         §[$5§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§[$5§.getItemByName("BragFramePlayer") as §'!`§).setVisibility(false);
         (§[$5§.getItemByName("BragFrameFriend") as §'!`§).setVisibility(false);
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
         var _loc8_:§ !>§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§9"#§)
         {
            this.saveLevelProgress();
         }
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §!!K§.§%#S§().§'D§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§(),§7n§.§6#K§.slingshot.§=!q§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§7n§.§6#K§ as §"#1§).§7$7§(),§7n§.§ "'§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §"E§.§^1§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §[$5§.getItemByName("Button_Unlocked_Bronze") as § !>§;
                     break;
                  case "B20008":
                     _loc8_ = §[$5§.getItemByName("Button_Unlocked_Silver") as § !>§;
                     break;
                  case "B20009":
                     _loc8_ = §[$5§.getItemByName("Button_Unlocked_Gold") as § !>§;
                     break;
                  case "B20010":
                     _loc8_ = §[$5§.getItemByName("Button_Unlocked_Diamond") as § !>§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §!#9§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§!#B§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §!!K§.§%#S§().§[s§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §4!Q§
      {
         return §4!Q§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §;!=§() : String
      {
         return §0I§.§2!n§;
      }
      
      public function §#"!§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      private function §6#O§(param1:§;!$§) : Boolean
      {
         return §2!-§.§]"2§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            _loc1_ = §95§.§^"_§;
         }
         if(this.§1!B§)
         {
            this.§1!B§.§+F§.scaleX = _loc1_;
            this.§1!B§.§+F§.scaleY = _loc1_;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(this.§1!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§[$5§.getItemByName("Button_NextLevel_Orange") as § !>§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§[$5§.getItemByName("Button_NextLevel_Orange") as § !>§).setComponentVisualState(param1);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
