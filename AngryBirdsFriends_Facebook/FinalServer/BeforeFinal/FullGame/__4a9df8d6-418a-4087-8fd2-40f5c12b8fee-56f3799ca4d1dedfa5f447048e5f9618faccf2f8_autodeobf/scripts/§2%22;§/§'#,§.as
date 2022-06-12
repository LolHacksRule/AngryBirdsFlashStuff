package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§4!Q§;
   import §#,§.§ !>§;
   import §&!_§.§!!K§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §5"t§.§7"J§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.EmbedPopup;
   import §>z§.FirstTimePayerPopup;
   import §>z§.SyncingPopup;
   import §^"H§.UserProgressEvent;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.events.Event;
   
   public class §'#,§ extends §3#[§ implements §%!#§
   {
       
      
      private var §0#U§:SyncingPopup;
      
      private var §8"q§:String;
      
      private var §;#x§:§7"J§ = null;
      
      private var §4#7§:Array;
      
      private var §^!`§:FirstTimePayerPopup;
      
      public function §'#,§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
         §[$5§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §7n§.pause();
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§+#X§);
         §7n§.§6#K§.background.stopAmbientSound();
         §[$5§.getItemByName("Button_FreePowerups").setVisibility(§ #v§.§1!!§.§&"6§.§5! §);
         if(mLevelManager.isCutSceneNext())
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §[$5§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(true);
            }
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
         }
         var _loc2_:int = §7n§.§ "'§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §!!K§.§%#S§().§'D§(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,§7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§(),§7n§.§6#K§.slingshot.§=!q§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§7n§.§6#K§ as §"#1§).§7$7§(),§7n§.§ "'§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§7n§.§ "'§.getEagleScore() == 100)
         {
            _loc1_ = §[$5§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §[$5§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§7"J§.§3@§,20);
            §[$5§.addChild(this.§;#x§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§;#x§)
         {
            this.§;#x§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§;#x§)
         {
            if(§[$5§.contains(this.§;#x§))
            {
               §[$5§.removeChild(this.§;#x§);
            }
            this.§;#x§.§"#%§();
            this.§;#x§ = null;
         }
         if(this.§^!`§)
         {
            this.§^!`§.removeEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§+!o§ && _loc4_.indexOf(param2) != -1)
         {
            this.§0#U§ = this.§ @§();
            this.§8"q§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).addEventListener(UserProgressEvent.§[$$§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "EMBED":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§&!P§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§0w§.§`!-§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§>#s§();
         }
      }
      
      protected function get §0w§() : §;#A§
      {
         return mLevelManager as §;#A§;
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
      
      protected function § @§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§0#U§)
         {
            this.§0#U§.close();
            this.§0#U§ = null;
         }
         uiInteractionHandler(-1,this.§8"q§,null);
         this.§8"q§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§7n§.§-$<§ as § #v§).§;"'§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §4!Q§
      {
         return §4!Q§(§ #v§.§1!!§.dataModel);
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
   }
}
