package §3=§
{
   import § !D§.§4B§;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§[§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §+#B§.§+$A§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§]u§;
   import §?!N§.§%#§;
   import §?!N§.EmbedPopup;
   import §?!N§.FirstTimePayerPopup;
   import §?!N§.SyncingPopup;
   import §]"'§.§@"%§;
   import §`D§.UserProgressEvent;
   import flash.events.Event;
   
   public class §8E§ extends §?"5§ implements §="D§
   {
       
      
      private var §@!A§:SyncingPopup;
      
      private var §]!,§:String;
      
      private var §%#e§:§]u§ = null;
      
      private var §?!U§:Array;
      
      private var §9<§:FirstTimePayerPopup;
      
      public function §8E§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_Fullscreen").setVisibility(false);
         §<"`§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §%"T§.pause();
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§!!>§);
         §%"T§.§;`§.background.stopAmbientSound();
         §<"`§.getItemByName("Button_FreePowerups").setVisibility(§'"a§.§!!8§.§+!N§.§>_§);
         if(mLevelManager.isCutSceneNext())
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §<"`§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(true);
            }
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
         }
         var _loc2_:int = §%"T§.§+"M§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §+$A§.§@"i§().§>e§(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,§%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§(),§%"T§.§;`§.slingshot.§@$B§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§%"T§.§;`§ as §4B§).§ #O§(),§%"T§.§+"M§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§%"T§.§+"M§.getEagleScore() == 100)
         {
            _loc1_ = §<"`§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §<"`§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§]u§.§?!q§,20);
            §<"`§.addChild(this.§%#e§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§%#e§)
         {
            this.§%#e§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§%#e§)
         {
            if(§<"`§.contains(this.§%#e§))
            {
               §<"`§.removeChild(this.§%#e§);
            }
            this.§%#e§.§4#y§();
            this.§%#e§ = null;
         }
         if(this.§9<§)
         {
            this.§9<§.removeEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§6#P§ && _loc4_.indexOf(param2) != -1)
         {
            this.§@!A§ = this.§']§();
            this.§]!,§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).addEventListener(UserProgressEvent.§'$5§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "EMBED":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§=4§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§<$1§.§#6§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,p§();
         }
      }
      
      protected function get §<$1§() : §,-§
      {
         return mLevelManager as §,-§;
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
      
      protected function §']§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§@!A§)
         {
            this.§@!A§.close();
            this.§@!A§ = null;
         }
         uiInteractionHandler(-1,this.§]!,§,null);
         this.§]!,§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§%"T§.§>$<§ as §'"a§).§ "m§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §@"%§
      {
         return §@"%§(§'"a§.§!!8§.dataModel);
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
   }
}
