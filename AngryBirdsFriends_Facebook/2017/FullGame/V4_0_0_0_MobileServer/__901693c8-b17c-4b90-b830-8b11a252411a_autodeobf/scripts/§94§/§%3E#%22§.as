package §94§
{
   import § o§.§%"!§;
   import § o§.EmbedPopup;
   import § o§.FirstTimePayerPopup;
   import § o§.SyncingPopup;
   import §%#A§.§,#w§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §<!b§.§8-§;
   import §<"1§.§'"S§;
   import §<#m§.§^#o§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
   import §`M§.UserProgressEvent;
   import flash.events.Event;
   
   public class §>#"§ extends §]#e§ implements §]"w§
   {
       
      
      private var §<!Y§:SyncingPopup;
      
      private var §`!f§:String;
      
      private var §,$0§:§8-§ = null;
      
      private var §?#g§:Array;
      
      private var §`!N§:FirstTimePayerPopup;
      
      public function §>#"§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         §?Q§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §!#A§.pause();
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§4c§);
         §!#A§.§#F§.background.stopAmbientSound();
         §?Q§.getItemByName("Button_FreePowerups").setVisibility(§-#+§.§;!$§.§6#Q§.§42§);
         if(mLevelManager.isCutSceneNext())
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §?Q§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(true);
            }
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
         }
         var _loc2_:int = §!#A§.§=![§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §?!=§.§3!q§().§?l§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§(),§!#A§.§#F§.slingshot.§ "+§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§!#A§.§#F§ as §#!L§).§>#Z§(),§!#A§.§=![§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§!#A§.§=![§.getEagleScore() == 100)
         {
            §?Q§.getItemByName("Button_Share_ME").setVisibility(true);
            §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §?Q§.getItemByName("Button_Share_ME").x + §?Q§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §?Q§.getItemByName("Button_Share_ME").y + §?Q§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§8-§.§1!z§,20);
            §?Q§.addChild(this.§,$0§);
         }
         else
         {
            §?Q§.getItemByName("Button_Share_ME").setVisibility(false);
            §?Q§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§,$0§)
         {
            this.§,$0§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         §?Q§.getItemByName("Button_Share_ME").setVisibility(false);
         §?Q§.getItemByName("Button_Share_Default").setVisibility(false);
         if(this.§,$0§)
         {
            if(§?Q§.contains(this.§,$0§))
            {
               §?Q§.removeChild(this.§,$0§);
            }
            this.§,$0§.§;!?§();
            this.§,$0§ = null;
         }
         if(this.§`!N§)
         {
            this.§`!N§.removeEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§'"c§ && _loc4_.indexOf(param2) != -1)
         {
            this.§<!Y§ = this.§-b§();
            this.§`!f§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).addEventListener(UserProgressEvent.§!!_§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHARE_ME":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.§ "§("shareFeather",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§8"O§.§+#O§(mLevelManager.currentLevel));
               break;
            case "SHARE_DEFAULT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               § "8§.§ "§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§8"O§.§+#O§(mLevelManager.currentLevel),0,true);
               break;
            case "EMBED":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§""b§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§8"O§.§+#O§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§ #;§();
         }
      }
      
      protected function get §8"O§() : §`!Q§
      {
         return mLevelManager as §`!Q§;
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
      
      protected function §-b§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
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
         if(this.§<!Y§)
         {
            this.§<!Y§.close();
            this.§<!Y§ = null;
         }
         uiInteractionHandler(-1,this.§`!f§,null);
         this.§`!f§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§!#A§.§>q§ as §-#+§).§0v§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §`]§
      {
         return §`]§(§-#+§.§;!$§.dataModel);
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
   }
}
