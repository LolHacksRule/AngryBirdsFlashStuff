package §,!=§
{
   import §!!B§.UserProgressEvent;
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §#v§.§=!Z§;
   import §%$!§.§+3§;
   import §&#S§.§""Z§;
   import §&#S§.§^#[§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §'z§.§4!x§;
   import §+"%§.§6X§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §52§.§#%§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §;!Q§.§^"!§;
   import §<!=§.§#!A§;
   import §>!#§.§-#A§;
   import §?"R§.EmbedPopup;
   import §?"R§.FirstTimePayerPopup;
   import §?"R§.SyncingPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class § #-§ extends §`$ § implements §@#@§
   {
       
      
      private var §6!x§:SyncingPopup;
      
      private var §;#A§:String;
      
      private var §^!F§:§#!A§ = null;
      
      private var §?#D§:§^"!§;
      
      private var §1!$§:Array;
      
      private var §<j§:FirstTimePayerPopup;
      
      public function § #-§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
         §!$§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         super.activate(param1);
         §>"$§.pause();
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§#!k§);
         §>"$§.§3#'§.background.stopAmbientSound();
         §!$§.getItemByName("Button_FreePowerups").setVisibility(§8G§.§%#S§.§+T§.§""O§);
         if(mLevelManager.isCutSceneNext())
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(true);
         }
         else
         {
            _loc5_ = mLevelManager.getNextLevelId();
            if((_loc6_ = mLevelManager.getCurrentEpisodeModel().name) == "1000" || _loc6_ == "3001" || _loc5_ == null)
            {
               §!$§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(true);
            }
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
         }
         this.§0N§();
         var _loc2_:int = §>"$§.§#0§.getEagleScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:Boolean = _loc3_ <= 0 && _loc2_ > _loc3_;
         §-#A§.§6$2§().§?!5§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§(),§>"$§.§3#'§.slingshot.§`b§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§>"$§.§3#'§ as §#%§).§[5§(),§>"$§.§#0§.getScore(),_loc4_,false,_loc2_ == 100,false,_loc2_);
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§>"$§.§#0§.getEagleScore() == 100)
         {
            §!$§.getItemByName("Button_Share_ME").setVisibility(true);
            §!$§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §!$§.getItemByName("Button_Share_ME").x + §!$§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §!$§.getItemByName("Button_Share_ME").y + §!$§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc1_,_loc2_,§#!A§.§&$<§,20);
            §!$§.addChild(this.§^!F§);
         }
         else
         {
            §!$§.getItemByName("Button_Share_ME").setVisibility(false);
            §!$§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§^!F§)
         {
            this.§^!F§.update(param1);
         }
      }
      
      override public function deActivate() : void
      {
         §!$§.getItemByName("Button_Share_ME").setVisibility(false);
         §!$§.getItemByName("Button_Share_Default").setVisibility(false);
         this.§3"v§();
         if(this.§^!F§)
         {
            if(§!$§.contains(this.§^!F§))
            {
               §!$§.removeChild(this.§^!F§);
            }
            this.§^!F§.§4#1§();
            this.§^!F§ = null;
         }
         if(this.§<j§)
         {
            this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         }
         super.deActivate();
      }
      
      private function §0N§() : void
      {
         if(this.dataModel.§&!?§)
         {
            if(this.dataModel.§&!?§.§=#t§())
            {
               this.§="?§();
            }
         }
      }
      
      private function §="?§() : void
      {
         null;
         null;
         var _loc6_:String = null;
         null;
         var _loc8_:MovieClip = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§^#[§ = null;
         this.§1!$§ = [];
         var _loc1_:Array = (§>"$§.§#0§ as §4!x§).§=!$§();
         var _loc2_:MovieClip = §!$§.getItemByName("eggMovieClip").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         if(this.dataModel.§&!?§.§=#t§() && mLevelManager.currentLevel.indexOf(§,#?§.§;s§) != -1)
         {
            this.§?#D§ = new §^"!§(this.dataModel.§&!?§.§?!>§,"",false,false);
            this.§?#D§.§4"E§ = this.dataModel.§&!?§.§ #g§;
            this.§?#D§.x = -70;
            this.§?#D§.y = -70;
            §!$§.getItemByName("EggRaffleBasketContainer").mClip.addChild(this.§?#D§);
         }
         var _loc3_:int = _loc1_.length - 1;
         var _loc12_:int = 0;
         var _loc13_:* = _loc1_;
         while(§§hasnext(_loc13_,_loc12_))
         {
            (_loc8_ = new §@`§.§4!i§("Wonderland_Egg" + _loc6_)()).gotoAndStop(1);
            _loc8_.x = _loc2_.numChildren * _loc8_.width;
            _loc2_.addChild(_loc8_);
            _loc9_ = §>"$§.§="§() - 140;
            _loc10_ = 1.5 + _loc3_ * 0.5;
            (_loc11_ = §""Z§.§3!]§.§5"0§(_loc8_,{
               "x":_loc9_,
               "alpha":0.8
            },{
               "x":_loc8_.x,
               "alpha":1
            },_loc10_,§""Z§.§[$1§)).onComplete = this.§"#S§;
            _loc11_.play();
            this.§1!$§.push(_loc11_);
            _loc3_--;
         }
         if(_loc1_.length > 0)
         {
            this.dataModel.§&!?§.§-"r§(this.dataModel.§&!?§.email,_loc1_.length);
         }
      }
      
      private function §"#S§() : void
      {
         if(this.§?#D§)
         {
            this.§?#D§.§7Z§();
            this.§?#D§.§4"E§ = Math.min(this.dataModel.§&!?§.§null§,this.§?#D§.§4"E§ + 1);
         }
      }
      
      private function §3"v§() : void
      {
         var _loc1_:§^#[§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§1!$§)
         {
            _loc1_.stop();
         }
         _loc2_ = §!$§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         var _loc3_:MovieClip = §!$§.getItemByName("eggMovieClip").mClip;
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         this.§1!$§ = null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§`#I§ && _loc4_.indexOf(param2) != -1)
         {
            this.§6!x§ = this.§0"i§();
            this.§;#A§ = param2;
            (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).addEventListener(UserProgressEvent.§5"!§,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHARE_ME":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.§3U§("shareFeather",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§4"]§.§[!2§(mLevelManager.currentLevel));
               break;
            case "SHARE_DEFAULT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §6X§.§3U§("shareDefault",mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§4"]§.§[!2§(mLevelManager.currentLevel),0,true);
               break;
            case "EMBED":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§4G§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.§4"]§.§[!2§(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§?#X§();
         }
      }
      
      protected function get §4"]§() : §6^§
      {
         return mLevelManager as §6^§;
      }
      
      protected function §4G§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§[W§.NORMAL,§<d§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §?#X§() : void
      {
         this.§<j§ = new FirstTimePayerPopup(§[W§.NORMAL,§<d§.TOP);
         this.§<j§.addEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§<j§);
      }
      
      protected function §8"@§(param1:Event) : void
      {
         this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         §!$§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function §0"i§() : SyncingPopup
      {
         var _loc1_:SyncingPopup = new SyncingPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
         return _loc1_;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §=!-§.§]#o§)
         {
            _loc1_ = §!a§.STATE_NAME;
         }
         else if(_loc2_.name == §5#J§.§2#W§)
         {
            _loc1_ = §5#J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §<!B§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).removeEventListener(UserProgressEvent.§5"!§,this.onUserProgressSaved);
         if(this.§6!x§)
         {
            this.§6!x§.close();
            this.§6!x§ = null;
         }
         uiInteractionHandler(-1,this.§;#A§,null);
         this.§;#A§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§>"$§.§<_§ as §8G§).§ "q§(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
   }
}
