package §^1§
{
   import § "a§.UserProgressEvent;
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.EmbedPopup;
   import § h§.FirstTimePayerPopup;
   import § h§.SyncingPopup;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §-"Y§.§9#B§;
   import §2$;§.§;!b§;
   import §2E§.§]!P§;
   import §4$A§.§=$5§;
   import §9!6§.§## §;
   import §<8§.§8!g§;
   import §>#Y§.§,#b§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §?o§.§?"m§;
   import flash.events.Event;
   
   public class § v§ extends §5!6§ implements §=$5§
   {
       
      
      private var §##<§:SyncingPopup;
      
      private var §>"@§:String;
      
      private var §?c§:§9#B§ = null;
      
      private var §8"m§:Array;
      
      private var §+"r§:FirstTimePayerPopup;
      
      public function § v§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
         §@!D§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §+!p§.pause();
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§@v§);
         §+!p§.§`?§.background.stopAmbientSound();
         §@!D§.getItemByName("Button_FreePowerups").setVisibility(§^"a§.§9!h§.§"?§.§,"r§);
         if(mLevelManager.isCutSceneNext())
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §@!D§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(true);
            }
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
         }
         var _loc2_:int = §+!p§.§-#W§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §]!P§.§1!7§().§+!6§(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,§+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§(),§+!p§.§`?§.slingshot.§?#&§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§+!p§.§`?§ as §^#j§).§"C§(),§+!p§.§-#W§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§+!p§.§-#W§.getEagleScore() == 100)
         {
            _loc1_ = §@!D§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §@!D§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§9#B§.§9h§,20);
            §@!D§.addChild(this.§?c§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?c§)
         {
            this.§?c§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§?c§)
         {
            if(§@!D§.contains(this.§?c§))
            {
               §@!D§.removeChild(this.§?c§);
            }
            this.§?c§.§ !1§();
            this.§?c§ = null;
         }
         if(this.§+"r§)
         {
            this.§+"r§.removeEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§,#-§ && _loc4_.indexOf(param2) != -1)
         {
            this.§##<§ = this.§&"Q§();
            this.§>"@§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).addEventListener(UserProgressEvent.§"!f§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "EMBED":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§ #$§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§@#6§.§&#W§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§#!s§();
         }
      }
      
      protected function get §@#6§() : §?"m§
      {
         return mLevelManager as §?"m§;
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
      
      protected function §&"Q§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§##<§)
         {
            this.§##<§.close();
            this.§##<§ = null;
         }
         uiInteractionHandler(-1,this.§>"@§,null);
         this.§>"@§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§+!p§.§;"-§ as §^"a§).§?r§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §,#b§
      {
         return §,#b§(§^"a§.§9!h§.dataModel);
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
   }
}
