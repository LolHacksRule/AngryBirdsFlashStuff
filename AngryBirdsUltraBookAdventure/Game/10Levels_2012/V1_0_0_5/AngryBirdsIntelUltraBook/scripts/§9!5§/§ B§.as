package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§=!#§;
   import §?!7§.§?!x§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class § B§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelSelectionState";
      
      protected static const §=C§:Number = 0.5;
      
      public static var §`]§:String = "";
       
      
      protected var §]!X§:Boolean = false;
      
      protected var §=!4§:§8;§;
      
      protected var §+A§:§8;§;
      
      protected var §7"§:MovieClip;
      
      protected var §%3§:Array;
      
      protected var §#!o§:Array;
      
      protected var §^!h§:int = 0;
      
      protected var §4]§:int = 0;
      
      protected var §;!q§:int = 0;
      
      protected var §=![§:Boolean = false;
      
      protected var §8_§:§4!Z§ = null;
      
      protected var §=h§:Dictionary;
      
      protected var §^G§:Array;
      
      protected var § !<§:Array;
      
      protected var §#x§:§,!_§;
      
      protected var §!!<§:Number = 0;
      
      public function § B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§+A§.mClip.numChildren > 0)
         {
            this.§+A§.mClip.removeChildAt(0);
         }
         this.§#!o§ = [];
         this.§%3§ = [];
      }
      
      protected function initView() : void
      {
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelSelection[0]);
         this.§+A§ = §5!P§.getItemByName("Container_LevelRepeaters") as §8;§;
         this.§=!4§ = §5!P§.getItemByName("Container_LevelSelection") as §8;§;
      }
      
      override public function activate() : void
      {
         super.activate();
         § _§.§!6§.clearLevel();
         § _§.§!6§.§2!d§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§#!o§.length == 1)
         {
            (§5!P§.getItemByName("Button_Prev") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_Next") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).setVisibility(false);
         }
         else
         {
            (§5!P§.getItemByName("Button_Prev") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Next") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).setVisibility(true);
         }
         this.§!!<§ = this.§+A§.x;
         if(§5!P§.stage)
         {
            §5!P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6i§);
         }
      }
      
      protected function §6i§(param1:KeyboardEvent) : void
      {
         if(this.§#!o§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§^z§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§0>§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1G§();
         this.§#!P§();
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      protected function §1G§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%3§.length)
         {
            if(-this.§+A§.x >= this.§#!o§[_loc1_].x && -this.§!!<§ < this.§#!o§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%3§.length)
               {
                  this.§%3§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;!q§ = _loc1_;
               this.§%3§[_loc1_].gotoAndStop("Selected");
               (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§+A§.x <= this.§#!o§[_loc1_].x && -this.§!!<§ > this.§#!o§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%3§.length)
               {
                  this.§%3§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;!q§ = _loc1_;
               this.§%3§[_loc1_].gotoAndStop("Selected");
               (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§;!q§ != this.§^!h§)
         {
            if(this.§^!h§ > this.§;!q§)
            {
               this.§4]§ = this.§;!q§ + 1;
            }
            else if(this.§^!h§ < this.§;!q§)
            {
               this.§4]§ = this.§;!q§ - 1;
            }
            else
            {
               this.§4]§ = this.§;!q§;
            }
            this.§#x§.§"!h§(this.§^G§[this.§4]§].red,this.§^G§[this.§4]§].green,this.§^G§[this.§4]§].blue);
         }
         this.§!!<§ = this.§+A§.x;
      }
      
      protected function §#!P§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!o§.length)
         {
            _loc2_ = this.§+A§.x + this.§#!o§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§#!o§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§#!o§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§#!o§[_loc1_].mClip.alpha < 1)
            {
               (this.§#!o§[_loc1_] as §9j§).setEnabled(false);
            }
            else
            {
               (this.§#!o§[_loc1_] as §9j§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§5!P§.stage)
         {
            §5!P§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6i§);
         }
         super.deActivate();
         this.§&p§();
         (§5!P§.getItemByName("Button_Back") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§,C§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§8_§)
         {
            this.§8_§.stop();
            this.§8_§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         if(param2.length > 0 && param3 is §=!#§)
         {
            if((param3 as §=!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §=!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§=![§)
               {
                  LevelManager.§1!+§(LevelManager.§@!L§(param2.toLowerCase()));
                  mNextState = StateCutScene.§?h§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               § !Q§.playSound("Menu_Back");
               mNextState = §0!`§.§?h§;
               break;
            case "NEXT":
               this.§0>§();
               break;
            case "PREV":
               this.§^z§();
               break;
            case "FULLSCREEN_BUTTON":
               § !Q§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      protected function §0>§() : void
      {
         § !Q§.playSound("Menu_Confirm");
         if(!this.§=![§)
         {
            ++this.§^!h§;
            this.§8!T§(this.§^!h§);
         }
      }
      
      protected function §^z§() : void
      {
         § !Q§.playSound("Menu_Confirm");
         if(!this.§=![§)
         {
            --this.§^!h§;
            this.§8!T§(this.§^!h§);
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
         this.§^G§ = [];
         this.§ !<§ = [];
         this.§^!h§ = LevelManager.§`!-§(LevelManager.§>!§).§-!F§;
         this.§4]§ = this.§^!h§;
         this.§;!q§ = this.§^!h§;
         var _loc2_:§4n§ = LevelManager.§`!-§(LevelManager.§>!§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§]!"§(_loc2_.pageIndexes[_loc3_]);
            this.§^G§.push(_loc2_.§9!R§(_loc3_));
            this.§ !<§.push(_loc2_.§]!C§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§#x§ = new §,!_§(this.§^G§[this.§^!h§].red,this.§^G§[this.§^!h§].green,this.§^G§[this.§^!h§].blue,1);
         §5!P§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§#x§);
         if(_loc2_.§-!p§)
         {
            _loc6_ = new (_loc5_ = §%!G§.§^!B§(_loc2_.§-!p§))();
            §5!P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §5!P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§%V§)
         {
            _loc8_ = new (_loc7_ = §%!G§.§^!B§(_loc2_.§%V§))();
            §5!P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §5!P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§?`§();
         if(§`]§ == StateCutScene.§?h§)
         {
            §`]§ = "";
            this.§8!T§(this.§;!q§);
         }
         else
         {
            this.§8!T§(this.§^!h§,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§4n§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!G§.§^!B§(this.§ !<§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§[!d§)
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
         _loc8_.@button = this.§ !<§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§?!x§;
         (_loc9_ = new §?!x§(_loc8_,this.§+A§,null,null)).§8!2§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§+A§.addComponent(_loc9_);
         this.§#!o§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§>!2§);
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
      
      protected function §?`§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§#!o§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=h§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#!o§.length)
         {
            _loc1_ = §%!G§.§^!B§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§>!2§ / 2 + _loc3_ - this.§#!o§.length * _loc2_.width / 2;
            _loc2_.y = (§5!P§.getItemByName("Button_Next") as §5!I§).y - _loc2_.height / 2;
            if(_loc4_ == this.§^!h§)
            {
               _loc2_.gotoAndStop("Selected");
               (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = _loc2_.x;
               (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§=!4§.mClip.addChild(_loc2_);
            this.§=h§[_loc2_] = _loc4_;
            this.§%3§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§#!o§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§5!P§.getItemByName("Button_Next") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
         (§5!P§.getItemByName("Button_Prev") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
         (§5!P§.getItemByName("Button_Next") as §5!I§).x = (§5!P§.getItemByName("Button_Next") as §5!I§).x + (_loc3_ + 10);
         (§5!P§.getItemByName("Button_Prev") as §5!I§).x = (§5!P§.getItemByName("Button_Prev") as §5!I§).x - (_loc3_ + 10);
      }
      
      protected function §&p§() : void
      {
         if(this.§#x§)
         {
            this.§#x§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§%3§.length)
         {
            if(this.§=!4§.mClip.contains(this.§%3§[_loc1_]))
            {
               this.§%3§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
               this.§=!4§.mClip.removeChild(this.§%3§[_loc1_]);
            }
            _loc1_++;
         }
         this.§%3§ = [];
         while(this.§+A§.mClip.numChildren > 0)
         {
            this.§+A§.mClip.removeChildAt(0);
         }
         this.§#!o§ = [];
      }
      
      protected function §4"§(param1:MouseEvent) : void
      {
         if(!this.§=![§)
         {
            this.§8!T§(this.§=h§[param1.target]);
         }
      }
      
      protected function §'@§(param1:MouseEvent) : void
      {
         if(!this.§=![§)
         {
            mNextState = § B§.§?h§;
         }
      }
      
      protected function §8!T§(param1:int, param2:Boolean = false) : void
      {
         this.§=![§ = true;
         if(param1 > this.§#!o§.length - 1)
         {
            param1 = this.§#!o§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§^!h§ = param1;
         if(this.§^!h§ > this.§;!q§)
         {
            this.§4]§ = this.§;!q§ + 1;
         }
         else if(this.§^!h§ < this.§;!q§)
         {
            this.§4]§ = this.§;!q§ - 1;
         }
         var _loc3_:Number = -this.§#!o§[param1].x;
         var _loc4_:Number = this.§#!o§[param1].x + this.§+A§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §=C§;
         if(this.§8_§ != null)
         {
            this.§8_§.stop();
         }
         if(param2)
         {
            this.§+A§.x = _loc3_;
         }
         else
         {
            this.§8_§ = §,!b§.§<d§.§>a§(this.§+A§,{"x":_loc3_},null,_loc5_,§,!b§.§4t§);
            this.§8_§.onComplete = this.§ !2§;
         }
         if(param2)
         {
            this.§ !2§();
         }
         else
         {
            this.§8_§.play();
         }
      }
      
      protected function § !2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%3§.length)
         {
            if(_loc1_ == this.§^!h§)
            {
               this.§%3§[_loc1_].gotoAndStop("Selected");
               (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).x = this.§%3§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§%3§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=![§ = false;
         LevelManager.§`!-§(LevelManager.§>!§).§-!F§ = this.§^!h§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).§"E§.text = LevelManager.§`!-§(LevelManager.§>!§).pageIndexes[param1];
      }
   }
}
