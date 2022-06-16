package §"!@§
{
   import §%!x§.§^!K§;
   import §'",§.§8$7§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<G§.UserProgressEvent;
   import §<h§.§>"0§;
   import §?P§.EmbedPopup;
   import §?P§.FirstTimePayerPopup;
   import §?P§.SyncingPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §`7§.§ try§;
   import flash.events.Event;
   
   public class §3P§ extends §@,§ implements §8#§
   {
       
      
      private var §#f§:SyncingPopup;
      
      private var §-$9§:String;
      
      private var §!$9§:§8$7§ = null;
      
      private var §%$9§:Array;
      
      private var §!$%§:FirstTimePayerPopup;
      
      public function §3P§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_Fullscreen").setVisibility(false);
         §`!H§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §3#U§.pause();
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§<B§);
         §3#U§.§#$4§.background.stopAmbientSound();
         §`!H§.getItemByName("Button_FreePowerups").setVisibility(§,A§.§2#O§.§7#M§.§3!v§);
         if(mLevelManager.isCutSceneNext())
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §`!H§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(true);
            }
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
         }
         var _loc2_:int = §3#U§.§8I§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         § try§.§!!t§().§+" §(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,§3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§(),§3#U§.§#$4§.slingshot.§`!R§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§3#U§.§#$4§ as §2$2§).§<Q§(),§3#U§.§8I§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§3#U§.§8I§.getEagleScore() == 100)
         {
            §`!H§.getItemByName("Button_Share_ME").setVisibility(true);
            §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §`!H§.getItemByName("Button_Share_ME").x + §`!H§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §`!H§.getItemByName("Button_Share_ME").y + §`!H§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§8$7§.§-"4§,20);
            §`!H§.addChild(this.§!$9§);
         }
         else
         {
            §`!H§.getItemByName("Button_Share_ME").setVisibility(false);
            §`!H§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§!$9§)
         {
            this.§!$9§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         §`!H§.getItemByName("Button_Share_ME").setVisibility(false);
         §`!H§.getItemByName("Button_Share_Default").setVisibility(false);
         if(this.§!$9§)
         {
            if(§`!H§.contains(this.§!$9§))
            {
               §`!H§.removeChild(this.§!$9§);
            }
            this.§!$9§.§,"I§();
            this.§!$9§ = null;
         }
         if(this.§!$%§)
         {
            this.§!$%§.removeEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§<>§ && _loc4_.indexOf(param2) != -1)
         {
            this.§#f§ = this.§%#Y§();
            this.§-$9§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).addEventListener(UserProgressEvent.§1"P§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHARE_ME":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.exitFullScreen();
               §^!K§.§+"D§("shareFeather",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§case§.§7#J§(mLevelManager.currentLevel));
               break;
            case "SHARE_DEFAULT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §^!K§.§+"D§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§case§.§7#J§(mLevelManager.currentLevel),0,true);
               break;
            case "EMBED":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§?!4§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§case§.§7#J§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§'!M§();
         }
      }
      
      protected function get §case§() : §?!0§
      {
         return mLevelManager as §?!0§;
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
      
      protected function §%#Y§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§#f§)
         {
            this.§#f§.close();
            this.§#f§ = null;
         }
         uiInteractionHandler(-1,this.§-$9§,null);
         this.§-$9§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§3#U§.§9#^§ as §,A§).§%o§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §#"8§
      {
         return §#"8§(§,A§.§2#O§.dataModel);
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
   }
}
