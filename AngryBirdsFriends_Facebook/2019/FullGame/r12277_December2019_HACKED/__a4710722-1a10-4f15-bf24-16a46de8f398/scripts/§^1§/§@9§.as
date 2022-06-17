package §^1§
{
   import § "a§.UserProgressEvent;
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.AvatarCreatorPopup;
   import § h§.EmbedPopup;
   import § h§.FirstTimePayerPopup;
   import § h§.SyncingPopup;
   import §+!n§.§+!p§;
   import §+#X§.FeatureRemovalWarningBirdomatic;
   import §-"S§.§>#G§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §4$A§.§=$5§;
   import §9!6§.§## §;
   import §9!6§.§8#v§;
   import §9!6§.§?!y§;
   import §9x§.§1"^§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!$$§;
   import §>#Y§.§,#b§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §?o§.§?"m§;
   import §@!_§.§`$§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §@9§ extends §-§ implements §'r§, §=$5§, §;"P§
   {
       
      
      private var §>"@§:String;
      
      private var §0!<§:String;
      
      protected var §9#!§:Boolean = false;
      
      private var §9$B§:Boolean = false;
      
      private var §8"m§:Array;
      
      private var §'"G§:§,#b§;
      
      private var §+"r§:FirstTimePayerPopup;
      
      private var §9"%§:Object;
      
      protected var §1"w§:Wallet;
      
      public function §@9§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §&n§.§7a§.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§'"G§ = §,#b§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4!-§);
         §+!p§.§`?§.background.stopAmbientSound();
         §@!D§.getItemByName("Button_FreePowerups").setVisibility(§^"a§.§9!h§.§"?§.§,"r§);
         if(this.§9#!§)
         {
            this.§<!a§();
         }
         §'@§.trackPageView(this,this.§6#U§(),§'@§.§7#0§);
         §=#c§.§<!t§("trackFBPixelEvent","level_complete");
         this.§ "@§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§@!D§.getItemByName("Button_NextLevel_Orange") as §;!b§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §@!D§.getItemByName("Button_NextLevel").setVisibility(false);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = §+$'§[0] + Math.abs(§+$'§[1] - §+$'§[0]) / 2;
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = §+$'§[1] + Math.abs(§+$'§[2] - §+$'§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.§=r§();
         this.§9$B§ = false;
         if(this.§+"r§)
         {
            this.§+"r§.removeEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         }
         super.deActivate();
         this.§+E§(this.§1"w§);
      }
      
      protected function §<!a§() : void
      {
         §@!D§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function § !+§() : void
      {
         §@!D§.getItemByName("Button_NextLevel").setVisibility(false);
         §@!D§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §@!D§.getItemByName("Button_CutScene").setVisibility(false);
         §@!D§.getItemByName("Button_Menu").setVisibility(false);
         §@!D§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§9#!§)
         {
            this.§<!a§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[@§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc5_:§?!y§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§,#-§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§-!S§.§ !^§,§## §.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§>"@§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).addEventListener(UserProgressEvent.§"!f§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               §4$4§.§?#l§();
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§=#o§("CATEGORYBACKGROUNDS");
               break;
            case "EMBED":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§ #$§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§&#W§(mLevelManager.currentLevel),§+!p§.§-#W§.getScore(),this.§0!<§);
               break;
            case "FREE_POWERUPS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§#!s§();
         }
      }
      
      protected function §>";§(param1:String) : void
      {
         §=#c§.§`$ §("permissionRequestComplete",this.§>";§);
         if(param1 == "true" && this.§9"%§)
         {
            §=#c§.§<!t§("shareBrag",this.§9"%§.friendId,this.§9"%§.bragPhotoId,this.§9"%§.bragTitle,this.§9"%§.bragText,this.§9"%§.bragCaption,this.§9"%§.levelId);
         }
      }
      
      protected function §=#o§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§-!S§.NORMAL,§## §.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
      }
      
      protected function § #$§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§-!S§.NORMAL,§## §.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §#!s§() : void
      {
         this.§+"r§ = new FirstTimePayerPopup(§-!S§.NORMAL,§## §.TOP);
         this.§+"r§.addEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§+"r§);
      }
      
      protected function §=H§(param1:Event) : void
      {
         this.§+"r§.removeEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         §@!D§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §&#W§(param1:String) : String
      {
         return (mLevelManager as §?"m§).§&#W§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§79§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == § "g§.§>!#§)
         {
            _loc1_ = §[!=§.STATE_NAME;
         }
         else if(_loc2_.name == §`$D§.§8V§)
         {
            _loc1_ = §`$D§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §;O§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).removeEventListener(UserProgressEvent.§"!f§,this.onUserProgressSaved);
         var _loc2_:§8#v§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§>#g§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§>"@§,null);
         this.§>"@§ = null;
      }
      
      private function §=r§() : void
      {
         §@!D§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §@!D§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §@!D§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §@!D§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§+!p§.§;"-§ as §^"a§).§?r§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§%!Q§();
         this.§9#!§ = false;
      }
      
      protected function §%!Q§() : void
      {
         (§@!D§.getItemByName("Textfield_SharingText") as §-$5§).setVisibility(false);
         §@!D§.getItemByName("ButtonBrag").setVisibility(false);
         §@!D§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§@!D§.getItemByName("BragFramePlayer") as §=!Z§).setVisibility(false);
         (§@!D§.getItemByName("BragFrameFriend") as §=!Z§).setVisibility(false);
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
         var _loc8_:§;!b§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§]$1§)
         {
            this.saveLevelProgress();
         }
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §]!P§.§1!7§().§+!6§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§(),§+!p§.§`?§.slingshot.§?#&§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§+!p§.§`?§ as §^#j§).§"C§(),§+!p§.§-#W§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §`$§.§'+§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §@!D§.getItemByName("Button_Unlocked_Bronze") as §;!b§;
                     break;
                  case "B20008":
                     _loc8_ = §@!D§.getItemByName("Button_Unlocked_Silver") as §;!b§;
                     break;
                  case "B20009":
                     _loc8_ = §@!D§.getItemByName("Button_Unlocked_Gold") as §;!b§;
                     break;
                  case "B20010":
                     _loc8_ = §@!D§.getItemByName("Button_Unlocked_Diamond") as §;!b§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §["V§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§="7§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §]!P§.§1!7§().§2"u§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §,#b§
      {
         return §,#b§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §2!^§() : String
      {
         return §'@§.§!<§;
      }
      
      public function §6#U§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      private function § $1§(param1:§!$$§) : Boolean
      {
         return §1"^§.§6f§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            _loc1_ = §[$2§.§ #H§;
         }
         if(this.§1"w§)
         {
            this.§1"w§.§6""§.scaleX = _loc1_;
            this.§1"w§.§6""§.scaleY = _loc1_;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(this.§1"w§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§@!D§.getItemByName("Button_NextLevel_Orange") as §;!b§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§@!D§.getItemByName("Button_NextLevel_Orange") as §;!b§).setComponentVisualState(param1);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
