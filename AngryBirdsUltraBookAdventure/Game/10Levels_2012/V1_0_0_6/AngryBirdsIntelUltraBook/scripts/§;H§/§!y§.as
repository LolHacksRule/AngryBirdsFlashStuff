package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§,D§;
   import §1!E§.§31§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!y§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelSelectionState";
      
      protected static const §"!m§:Number = 0.5;
      
      public static var §9!c§:String = "";
       
      
      protected var §%T§:Boolean = false;
      
      protected var §3!^§:§#?§;
      
      protected var §#O§:§#?§;
      
      protected var §;2§:MovieClip;
      
      protected var §]!s§:Array;
      
      protected var §='§:Array;
      
      protected var §^B§:int = 0;
      
      protected var §9!4§:int = 0;
      
      protected var §2!D§:int = 0;
      
      protected var §^!Q§:Boolean = false;
      
      protected var §'!D§:§!q§ = null;
      
      protected var §-!=§:Dictionary;
      
      protected var §^!u§:Array;
      
      protected var §^!f§:Array;
      
      protected var §4!E§:§^I§;
      
      protected var §8!g§:Number = 0;
      
      public function §!y§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§#O§.mClip.numChildren > 0)
         {
            this.§#O§.mClip.removeChildAt(0);
         }
         this.§='§ = [];
         this.§]!s§ = [];
      }
      
      protected function initView() : void
      {
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelSelection[0]);
         this.§#O§ = §&!m§.getItemByName("Container_LevelRepeaters") as §#?§;
         this.§3!^§ = §&!m§.getItemByName("Container_LevelSelection") as §#?§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^!c§.§5!Y§.clearLevel();
         §^!c§.§5!Y§.§@!v§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§='§.length == 1)
         {
            (§&!m§.getItemByName("Button_Prev") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_Next") as §==§).setVisibility(false);
            (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).setVisibility(false);
         }
         else
         {
            (§&!m§.getItemByName("Button_Prev") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Next") as §==§).setVisibility(true);
            (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).setVisibility(true);
         }
         this.§8!g§ = this.§#O§.x;
         if(§&!m§.stage)
         {
            §&!m§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function §&x§(param1:KeyboardEvent) : void
      {
         if(this.§='§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§+&§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§?'§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§%!i§();
         this.§#T§();
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      protected function §%!i§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!s§.length)
         {
            if(-this.§#O§.x >= this.§='§[_loc1_].x && -this.§8!g§ < this.§='§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!s§.length)
               {
                  this.§]!s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!D§ = _loc1_;
               this.§]!s§[_loc1_].gotoAndStop("Selected");
               (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§#O§.x <= this.§='§[_loc1_].x && -this.§8!g§ > this.§='§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!s§.length)
               {
                  this.§]!s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!D§ = _loc1_;
               this.§]!s§[_loc1_].gotoAndStop("Selected");
               (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§2!D§ != this.§^B§)
         {
            if(this.§^B§ > this.§2!D§)
            {
               this.§9!4§ = this.§2!D§ + 1;
            }
            else if(this.§^B§ < this.§2!D§)
            {
               this.§9!4§ = this.§2!D§ - 1;
            }
            else
            {
               this.§9!4§ = this.§2!D§;
            }
            if(this.§^!u§[this.§9!4§])
            {
               this.§4!E§.§7K§(this.§^!u§[this.§9!4§].red,this.§^!u§[this.§9!4§].green,this.§^!u§[this.§9!4§].blue);
            }
         }
         this.§8!g§ = this.§#O§.x;
      }
      
      protected function §#T§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§='§.length)
         {
            _loc2_ = this.§#O§.x + this.§='§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§='§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§='§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§='§[_loc1_].mClip.alpha < 1)
            {
               (this.§='§[_loc1_] as §&! §).setEnabled(false);
            }
            else
            {
               (this.§='§[_loc1_] as §&! §).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§&!m§.stage)
         {
            §&!m§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
         }
         super.deActivate();
         this.§3!]§();
         (§&!m§.getItemByName("Button_Back") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§"!N§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§'!D§)
         {
            this.§'!D§.stop();
            this.§'!D§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         if(param2.length > 0 && param3 is §,D§)
         {
            if((param3 as §,D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §,D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§^!Q§)
               {
                  LevelManager.§@3§(LevelManager.§ o§(param2.toLowerCase()));
                  mNextState = StateCutScene.§"!s§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §9'§.playSound("Menu_Back");
               mNextState = §,!]§.§"!s§;
               break;
            case "NEXT":
               this.§?'§();
               break;
            case "PREV":
               this.§+&§();
               break;
            case "FULLSCREEN_BUTTON":
               §9'§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      protected function §?'§() : void
      {
         §9'§.playSound("Menu_Confirm");
         if(!this.§^!Q§)
         {
            ++this.§^B§;
            this.§=]§(this.§^B§);
         }
      }
      
      protected function §+&§() : void
      {
         §9'§.playSound("Menu_Confirm");
         if(!this.§^!Q§)
         {
            --this.§^B§;
            this.§=]§(this.§^B§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§^!u§ = [];
         this.§^!f§ = [];
         this.§^B§ = LevelManager.§'J§(LevelManager.§>!$§).§ each§;
         this.§9!4§ = this.§^B§;
         this.§2!D§ = this.§^B§;
         var _loc2_:§<!#§ = LevelManager.§'J§(LevelManager.§>!$§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§^!j§(_loc2_.pageIndexes[_loc3_]);
            this.§^!u§.push(_loc2_.§^J§(_loc3_));
            this.§^!f§.push(_loc2_.§+>§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§4!E§ = new §^I§(this.§^!u§[this.§^B§].red,this.§^!u§[this.§^B§].green,this.§^!u§[this.§^B§].blue,1);
         §&!m§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§4!E§);
         if(_loc2_.§3#§)
         {
            _loc6_ = new (_loc5_ = §`!t§.§=J§(_loc2_.§3#§))();
            §&!m§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §&!m§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§4x§)
         {
            _loc8_ = new (_loc7_ = §`!t§.§=J§(_loc2_.§4x§))();
            §&!m§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §&!m§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§&!k§();
         if(§9!c§ == StateCutScene.§"!s§)
         {
            §9!c§ = "";
            this.§=]§(this.§2!D§);
         }
         else
         {
            this.§=]§(this.§^B§,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§<!#§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §`!t§.§=J§(this.§^!f§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§@a§)
            {
               _loc13_.@MouseUp = _loc10_;
            }
            _loc13_.@scaleOnMouseOver = "True";
            _loc5_[0].push(new Array(_loc13_,null,_loc12_));
            if(_loc11_)
            {
               _loc12_.MovieClip_Stars.mouseEnabled = false;
            }
            _loc12_.TextField_LevelNum.text.mouseEnabled = false;
            _loc7_++;
         }
         _loc8_ = <Repeater/>;
         if(param1.length == 15 || param1.length == 10)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§^!f§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§31§;
         (_loc9_ = new §31§(_loc8_,this.§#O§,null,null)).§@K§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§#O§.addComponent(_loc9_);
         this.§='§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§3!5§);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1) == 100)
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Visible");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
            else
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
         }
         else
         {
            _loc6_.gotoAndStop("Locked");
         }
         _loc6_.isOpen = param2;
         if(param2)
         {
            _loc7_ = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §&!k§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§='§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§-!=§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§='§.length)
         {
            _loc1_ = §`!t§.§=J§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§3!5§ / 2 + _loc3_ - this.§='§.length * _loc2_.width / 2;
            _loc2_.y = (§&!m§.getItemByName("Button_Next") as §==§).y - _loc2_.height / 2;
            if(_loc4_ == this.§^B§)
            {
               _loc2_.gotoAndStop("Selected");
               (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = _loc2_.x;
               (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§3!^§.mClip.addChild(_loc2_);
            this.§-!=§[_loc2_] = _loc4_;
            this.§]!s§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!Z§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§='§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§&!m§.getItemByName("Button_Next") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
         (§&!m§.getItemByName("Button_Prev") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
         (§&!m§.getItemByName("Button_Next") as §==§).x = (§&!m§.getItemByName("Button_Next") as §==§).x + (_loc3_ + 10);
         (§&!m§.getItemByName("Button_Prev") as §==§).x = (§&!m§.getItemByName("Button_Prev") as §==§).x - (_loc3_ + 10);
      }
      
      protected function §3!]§() : void
      {
         if(this.§4!E§)
         {
            this.§4!E§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!s§.length)
         {
            if(this.§3!^§.mClip.contains(this.§]!s§[_loc1_]))
            {
               this.§]!s§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§!Z§);
               this.§3!^§.mClip.removeChild(this.§]!s§[_loc1_]);
            }
            _loc1_++;
         }
         this.§]!s§ = [];
         while(this.§#O§.mClip.numChildren > 0)
         {
            this.§#O§.mClip.removeChildAt(0);
         }
         this.§='§ = [];
      }
      
      protected function §!Z§(param1:MouseEvent) : void
      {
         if(!this.§^!Q§)
         {
            this.§=]§(this.§-!=§[param1.target]);
         }
      }
      
      protected function §6!V§(param1:MouseEvent) : void
      {
         if(!this.§^!Q§)
         {
            mNextState = §!y§.§"!s§;
         }
      }
      
      protected function §=]§(param1:int, param2:Boolean = false) : void
      {
         this.§^!Q§ = true;
         if(param1 > this.§='§.length - 1)
         {
            param1 = this.§='§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§^B§ = param1;
         if(this.§^B§ > this.§2!D§)
         {
            this.§9!4§ = this.§2!D§ + 1;
         }
         else if(this.§^B§ < this.§2!D§)
         {
            this.§9!4§ = this.§2!D§ - 1;
         }
         var _loc3_:Number = -this.§='§[param1].x;
         var _loc4_:Number = this.§='§[param1].x + this.§#O§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §"!m§;
         if(this.§'!D§ != null)
         {
            this.§'!D§.stop();
         }
         if(param2)
         {
            this.§#O§.x = _loc3_;
         }
         else
         {
            this.§'!D§ = §-!,§.§7!j§.§,!`§(this.§#O§,{"x":_loc3_},null,_loc5_,§-!,§.§&!8§);
            this.§'!D§.onComplete = this.§7!T§;
         }
         if(param2)
         {
            this.§7!T§();
         }
         else
         {
            this.§'!D§.play();
         }
      }
      
      protected function §7!T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!s§.length)
         {
            if(_loc1_ == this.§^B§)
            {
               this.§]!s§[_loc1_].gotoAndStop("Selected");
               (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).x = this.§]!s§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§]!s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§^!Q§ = false;
         LevelManager.§'J§(LevelManager.§>!$§).§ each§ = this.§^B§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).§,!F§.text = LevelManager.§'J§(LevelManager.§>!$§).pageIndexes[param1];
      }
   }
}
