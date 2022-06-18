package §94§
{
   import § o§.§%"!§;
   import § o§.AvatarCreatorPopup;
   import § o§.EmbedPopup;
   import § o§.FirstTimePayerPopup;
   import § o§.SyncingPopup;
   import §!@§.§#!h§;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"n§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §+#t§.§>J§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8#D§.§=>§;
   import §<!b§.§8-§;
   import §<"1§.§'"S§;
   import §<#m§.§!"<§;
   import §<#m§.§0r§;
   import §<#m§.§^#o§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
   import §`M§.UserProgressEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §7!x§ extends §"!u§ implements §7#M§, §]"w§, §8[§
   {
       
      
      private var §`!f§:String;
      
      private var §+#A§:String;
      
      protected var §8!x§:Boolean = false;
      
      private var §9#c§:Boolean = false;
      
      private var §?#g§:Array;
      
      private var §5""§:§`]§;
      
      private var §`!N§:FirstTimePayerPopup;
      
      private var §2!s§:Object;
      
      protected var §3!B§:Wallet;
      
      public function §7!x§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §=>§.§%" §.Views.View_LevelEndRio[0];
      }
      
      override public function activate(param1:String) : void
      {
         this.§5""§ = §`]§(AngryBirdsBase.singleton.dataModel);
         super.activate(param1);
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§`!%§);
         §!#A§.§#F§.background.stopAmbientSound();
         §?Q§.getItemByName("Button_FreePowerups").setVisibility(§-#+§.§;!$§.§6#Q§.§42§);
         if(this.§8!x§)
         {
            this.§0q§();
         }
         §`"5§.trackPageView(this,this.§>"-§(),§`"5§.§&R§);
         this.§##Y§(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (§?Q§.getItemByName("Button_NextLevel_Orange") as §,#w§).setVisibility(false);
         var _loc1_:Array = mLevelManager.currentLevel.split("-");
         var _loc2_:String = _loc1_[0];
         if(_loc2_ == "1000" || _loc2_ == "3001")
         {
            §?Q§.getItemByName("Button_NextLevel").setVisibility(false);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = §49§[0] + Math.abs(§49§[1] - §49§[0]) / 2;
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = §49§[1] + Math.abs(§49§[2] - §49§[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
         §?Q§.getItemByName("Button_Share_Crown").setVisibility(false);
         §?Q§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§'"6§();
         this.§9#c§ = false;
         if(this.§`!N§)
         {
            this.§`!N§.removeEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         }
         super.deActivate();
         this.§"#H§(this.§3!B§);
      }
      
      protected function §0q§() : void
      {
         §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
         §?Q§.getItemByName("Button_Share_Crown").setVisibility(false);
         §?Q§.getItemByName("Button_Share_Stars").setVisibility(false);
         §?Q§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function §+#$§() : void
      {
         §?Q§.getItemByName("Button_NextLevel").setVisibility(false);
         §?Q§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         §?Q§.getItemByName("Button_CutScene").setVisibility(false);
         §?Q§.getItemByName("Button_Menu").setVisibility(false);
         §?Q§.getItemByName("Button_Replay").setVisibility(false);
      }
      
      protected function §#";§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§^x§(mLevelManager.currentLevel);
         var _loc2_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).getEagleScoreForLevel(mLevelManager.currentLevel);
         if(§<!v§ && _loc1_ == 1)
         {
            this.§+#A§ = "crown";
            §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
            §?Q§.getItemByName("Button_Share_Crown").setVisibility(true);
            §?Q§.getItemByName("Button_Share_Stars").setVisibility(false);
            _loc3_ = §?Q§.getItemByName("Button_Share_Crown").x + §?Q§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §?Q§.getItemByName("Button_Share_Crown").y + §?Q§.getItemByName("Container_LevelEndStripe").y;
            §,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§8-§.§1!z§,20);
            §?Q§.addChild(§,$0§);
            §&O§.push(§,$0§);
            §!#&§.playSound("star_1_coins",§<!"§);
         }
         else if(§@"l§)
         {
            this.§+#A§ = "stars";
            §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
            §?Q§.getItemByName("Button_Share_Crown").setVisibility(false);
            §?Q§.getItemByName("Button_Share_Stars").setVisibility(true);
            _loc3_ = §?Q§.getItemByName("Button_Share_Stars").x + §?Q§.getItemByName("Container_LevelEndStripe").x;
            _loc4_ = §?Q§.getItemByName("Button_Share_Stars").y + §?Q§.getItemByName("Container_LevelEndStripe").y;
            §,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc3_,_loc4_,§8-§.§1!z§,20);
            §?Q§.addChild(§,$0§);
            §&O§.push(§,$0§);
            §!#&§.playSound("star_1_coins",§<!"§);
         }
         else
         {
            this.§+#A§ = "";
            §?Q§.getItemByName("Button_Share_Default").setVisibility(true);
            §?Q§.getItemByName("Button_Share_Crown").setVisibility(false);
            §?Q§.getItemByName("Button_Share_Stars").setVisibility(false);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§8!x§)
         {
            this.§0q§();
         }
         else
         {
            this.§#";§();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+"o§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc5_:§!"<§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§'"c§ && _loc4_.indexOf(param2) != -1)
         {
            _loc5_ = new SyncingPopup(§%"!§.§4!P§,§^#o§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
            this.§`!f§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).addEventListener(UserProgressEvent.§!!_§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL_ORANGE":
               §!#&§.§^!2§();
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.§#t§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.addCallback("permissionRequestComplete",this.§8P§);
               § "8§.§ "§("askForPublishStreamPermission");
               break;
            case "SHARE_STARS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.addCallback("permissionRequestComplete",this.§-5§);
               § "8§.§ "§("askForPublishStreamPermission");
               break;
            case "SHARE_DEFAULT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               § "8§.addCallback("permissionRequestComplete",this.§0!3§);
               § "8§.§ "§("askForPublishStreamPermission");
               break;
            case "EMBED":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§""b§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§+#O§(mLevelManager.currentLevel),§!#A§.§=![§.getScore(),this.§+#A§);
               break;
            case "FREE_POWERUPS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§ #;§();
         }
      }
      
      protected function §8P§(param1:String) : void
      {
         var _loc2_:int = 0;
         § "8§.§+#R§("permissionRequestComplete",this.§8P§);
         if(param1 == "true")
         {
            _loc2_ = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§^x§(mLevelManager.currentLevel);
            § "8§.§ "§("shareCrown",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§+#O§(mLevelManager.currentLevel),_loc2_,§!#A§.§=![§.getScore());
         }
      }
      
      protected function §-5§(param1:String) : void
      {
         § "8§.§+#R§("permissionRequestComplete",this.§-5§);
         if(param1 == "true")
         {
            § "8§.§ "§("shareThreeStars",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§+#O§(mLevelManager.currentLevel),§!#A§.§=![§.getScore());
         }
      }
      
      protected function §0!3§(param1:String) : void
      {
         § "8§.§+#R§("permissionRequestComplete",this.§0!3§);
         if(param1 == "true")
         {
            § "8§.§ "§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§+#O§(mLevelManager.currentLevel),§!#A§.§=![§.getScore(),true);
         }
      }
      
      protected function §4"`§(param1:String) : void
      {
         § "8§.§+#R§("permissionRequestComplete",this.§4"`§);
         if(param1 == "true" && this.§2!s§)
         {
            § "8§.§ "§("shareBrag",this.§2!s§.friendId,this.§2!s§.bragPhotoId,this.§2!s§.bragTitle,this.§2!s§.bragText,this.§2!s§.bragCaption,this.§2!s§.levelId);
         }
      }
      
      protected function §#t§(param1:String) : void
      {
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%"!§.NORMAL,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §""b§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§%"!§.NORMAL,§^#o§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function § #;§() : void
      {
         this.§`!N§ = new FirstTimePayerPopup(§%"!§.NORMAL,§^#o§.TOP);
         this.§`!N§.addEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§`!N§);
      }
      
      protected function §<"k§(param1:Event) : void
      {
         this.§`!N§.removeEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         §?Q§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §+#O§(param1:String) : String
      {
         return (mLevelManager as §`!Q§).§+#O§(param1);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§9##§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §'!!§.§%"]§)
         {
            _loc1_ = §<![§.STATE_NAME;
         }
         else if(_loc2_.name == §,#E§.§4#"§)
         {
            _loc1_ = §,#E§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §7!c§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).removeEventListener(UserProgressEvent.§!!_§,this.onUserProgressSaved);
         var _loc2_:§0r§ = AngryBirdsBase.singleton.popupManager;
         _loc2_.§?$=§(SyncingPopup.ID);
         uiInteractionHandler(-1,this.§`!f§,null);
         this.§`!f§ = null;
      }
      
      private function §'"6§() : void
      {
         §?Q§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §?Q§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §?Q§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §?Q§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§!#A§.§>q§ as §-#+§).§0v§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.§2!R§();
         this.§8!x§ = false;
      }
      
      protected function §2!R§() : void
      {
         (§?Q§.getItemByName("Textfield_SharingText") as §^!4§).setVisibility(false);
         §?Q§.getItemByName("ButtonBrag").setVisibility(false);
         §?Q§.getItemByName("ButtonShare").setVisibility(false);
         §?Q§.getItemByName("ButtonSkipShare").setVisibility(false);
         (§?Q§.getItemByName("BragFramePlayer") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("BragFrameFriend") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("ShareCrowns") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("ShareThreeStars") as §'=§).setVisibility(false);
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
         var _loc8_:§,#w§ = null;
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(§<!v§)
         {
            this.saveLevelProgress();
         }
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc2_ <= 0 && _loc3_ > _loc2_;
         var _loc6_:Boolean = _loc1_ < 3 && _loc4_ == 3;
         §?!=§.§3!q§().§?l§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§(),§!#A§.§#F§.slingshot.§ "+§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§!#A§.§#F§ as §#!L§).§>#Z§(),§!#A§.§=![§.getScore(),_loc5_,_loc6_);
         if(_loc4_ > _loc1_)
         {
            if(_loc7_ = §#!h§.§ H§(_loc1_,_loc4_))
            {
               switch(_loc7_)
               {
                  case "B20007":
                     _loc8_ = §?Q§.getItemByName("Button_Unlocked_Bronze") as §,#w§;
                     break;
                  case "B20008":
                     _loc8_ = §?Q§.getItemByName("Button_Unlocked_Silver") as §,#w§;
                     break;
                  case "B20009":
                     _loc8_ = §?Q§.getItemByName("Button_Unlocked_Gold") as §,#w§;
                     break;
                  case "B20010":
                     _loc8_ = §?Q§.getItemByName("Button_Unlocked_Diamond") as §,#w§;
               }
               if(_loc8_)
               {
                  _loc8_.setVisibility(true);
                  §6"G§ = true;
               }
            }
         }
         if(_loc5_)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§##R§(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               §?!=§.§3!q§().§4#[§(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : §`]§
      {
         return §`]§(AngryBirdsBase.singleton.dataModel);
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§<^§;
      }
      
      public function §>"-§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      private function §#$1§(param1:§4"n§) : Boolean
      {
         return §>J§.§7!;§(param1.userId);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§!#A§.§>q§ as §-#+§).§3#3§())
         {
            _loc1_ = §>!&§.§<!3§;
         }
         if(this.§3!B§)
         {
            this.§3!B§.§[!R§.scaleX = _loc1_;
            this.§3!B§.§[!R§.scaleY = _loc1_;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(this.§3!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.movieClip;
      }
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (§?Q§.getItemByName("Button_NextLevel_Orange") as §,#w§).setVisibility(false);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         super.setButtonStates(param1);
         (§?Q§.getItemByName("Button_NextLevel_Orange") as §,#w§).setComponentVisualState(param1);
      }
   }
}
