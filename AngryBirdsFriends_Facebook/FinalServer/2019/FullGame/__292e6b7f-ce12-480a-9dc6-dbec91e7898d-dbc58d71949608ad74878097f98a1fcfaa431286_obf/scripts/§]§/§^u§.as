package §]§
{
   import § "L§.§1"r§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §#"4§.§3";§;
   import §#g§.§!P§;
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §-#;§.§;!t§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7#$§.§3!,§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.EmbedPopup;
   import §?Q§.FirstTimePayerPopup;
   import §?Q§.SyncingPopup;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`#c§.UserProgressEvent;
   import flash.events.Event;
   
   public class §^u§ extends §!#l§ implements §1k§
   {
       
      
      private var §2!0§:SyncingPopup;
      
      private var §2#^§:String;
      
      private var §1=§:§;!t§ = null;
      
      private var §+#0§:Array;
      
      private var §?#O§:FirstTimePayerPopup;
      
      public function §^u§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §;!w§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §]$?§.pause();
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§3#u§);
         §]$?§.§2#§.background.stopAmbientSound();
         §;!w§.getItemByName("Button_FreePowerups").setVisibility(§@z§.§ !D§.§0x§.§##[§);
         if(mLevelManager.isCutSceneNext())
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §;!w§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(true);
            }
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
         }
         var _loc2_:int = §]$?§.§;r§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §3";§.§#"'§().§7g§(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,§]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§(),§]$?§.§2#§.slingshot.§^"]§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§]$?§.§2#§ as §!P§).§-!3§(),§]$?§.§;r§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§]$?§.§;r§.getEagleScore() == 100)
         {
            _loc1_ = §;!w§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §;!w§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§;!t§.§[#4§,20);
            §;!w§.addChild(this.§1=§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1=§)
         {
            this.§1=§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§1=§)
         {
            if(§;!w§.contains(this.§1=§))
            {
               §;!w§.removeChild(this.§1=§);
            }
            this.§1=§.§<![§();
            this.§1=§ = null;
         }
         if(this.§?#O§)
         {
            this.§?#O§.removeEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§;w§ && _loc4_.indexOf(param2) != -1)
         {
            this.§2!0§ = this.§ "h§();
            this.§2#^§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).addEventListener(UserProgressEvent.§!"z§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "EMBED":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§9!%§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§1!§.§0"<§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§2!w§();
         }
      }
      
      protected function get §1!§() : §8$%§
      {
         return mLevelManager as §8$%§;
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
      
      protected function § "h§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§2!0§)
         {
            this.§2!0§.close();
            this.§2!0§ = null;
         }
         uiInteractionHandler(-1,this.§2#^§,null);
         this.§2#^§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§]$?§.§;u§ as §@z§).§1s§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §=#o§
      {
         return §=#o§(§@z§.§ !D§.dataModel);
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
   }
}
