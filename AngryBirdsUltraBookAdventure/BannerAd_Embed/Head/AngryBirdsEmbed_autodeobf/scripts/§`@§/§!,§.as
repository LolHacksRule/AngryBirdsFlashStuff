package §`@§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §,K§.§-!$§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§#H§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §>!C§.§1$§;
   import §>!C§.§6M§;
   import §^@§.§2q§;
   import §^@§.§6?§;
   import §^@§.§8L§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!,§ extends §0!5§
   {
      
      public static const §0!7§:String = "LevelSelectionState";
      
      protected static const §7,§:Number = 0.5;
      
      public static var §^B§:String = "";
       
      
      protected var §!m§:Boolean = false;
      
      protected var §#$§:§2q§;
      
      protected var §]!&§:§2q§;
      
      protected var §%<§:MovieClip;
      
      protected var §^p§:Array;
      
      protected var § U§:Array;
      
      protected var §]!6§:int = 0;
      
      protected var §&#§:int = 0;
      
      protected var §^y§:int = 0;
      
      protected var §-g§:Boolean = false;
      
      protected var §2%§:§ !5§ = null;
      
      protected var §6!D§:Dictionary;
      
      protected var §`k§:Array;
      
      protected var §6q§:Array;
      
      protected var §>!;§:§-!$§;
      
      protected var §1<§:Number = 0;
      
      public function §!,§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&$§();
         while(this.§]!&§.mClip.numChildren > 0)
         {
            this.§]!&§.mClip.removeChildAt(0);
         }
         this.§ U§ = [];
         this.§^p§ = [];
      }
      
      protected function §&$§() : void
      {
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelSelection[0]);
         this.§]!&§ = §#Z§.getItemByName("Container_LevelRepeaters") as §2q§;
         this.§#$§ = §#Z§.getItemByName("Container_LevelSelection") as §2q§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!!§.§;4§.clearLevel();
         §,!!§.§;4§.§69§(false);
         this.§^d§();
         AngryBirdsFP11.§'!F§();
         if(this.§ U§.length == 1)
         {
            (§#Z§.getItemByName("Button_Prev") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_Next") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).setVisibility(false);
         }
         else
         {
            (§#Z§.getItemByName("Button_Prev") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_Next") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).setVisibility(true);
         }
         this.§1<§ = this.§]!&§.x;
         if(§#Z§.stage)
         {
            §#Z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§-Q§);
         }
      }
      
      protected function §-Q§(param1:KeyboardEvent) : void
      {
         if(this.§ U§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§%i§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§7R§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,;§();
         this.§]L§();
         if(mNextState.length > 0)
         {
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      protected function §,;§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^p§.length)
         {
            if(-this.§]!&§.x >= this.§ U§[_loc1_].x && -this.§1<§ < this.§ U§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^p§.length)
               {
                  this.§^p§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^y§ = _loc1_;
               this.§^p§[_loc1_].gotoAndStop("Selected");
               (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).x = this.§^p§[_loc1_].x;
               this.§4!C§(_loc1_);
            }
            if(-this.§]!&§.x <= this.§ U§[_loc1_].x && -this.§1<§ > this.§ U§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^p§.length)
               {
                  this.§^p§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^y§ = _loc1_;
               this.§^p§[_loc1_].gotoAndStop("Selected");
               (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).x = this.§^p§[_loc1_].x;
               this.§4!C§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§^y§ != this.§]!6§)
         {
            if(this.§]!6§ > this.§^y§)
            {
               this.§&#§ = this.§^y§ + 1;
            }
            else if(this.§]!6§ < this.§^y§)
            {
               this.§&#§ = this.§^y§ - 1;
            }
            else
            {
               this.§&#§ = this.§^y§;
            }
            this.§>!;§.§%c§(this.§`k§[this.§&#§].red,this.§`k§[this.§&#§].green,this.§`k§[this.§&#§].blue);
         }
         this.§1<§ = this.§]!&§.x;
      }
      
      protected function §]L§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ U§.length)
         {
            _loc2_ = this.§]!&§.x + this.§ U§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§ U§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§ U§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§ U§[_loc1_].mClip.alpha < 1)
            {
               (this.§ U§[_loc1_] as §#H§).setEnabled(false);
            }
            else
            {
               (this.§ U§[_loc1_] as §#H§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§#Z§.stage)
         {
            §#Z§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§-Q§);
         }
         super.deActivate();
         this.§`!H§();
         (§#Z§.getItemByName("Button_Back") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6M§.§>D§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§2%§)
         {
            this.§2%§.stop();
            this.§2%§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         if(param2.length > 0 && param3 is §6?§)
         {
            if((param3 as §6?§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §6?§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§-g§)
               {
                  §6M§.§<H§(§6M§.§ 1§(param2.toLowerCase()));
                  mNextState = StateCutScene.§0!7§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §?!?§.§#'§("Menu_Back");
               mNextState = §-7§.§0!7§;
               break;
            case "NEXT":
               this.§7R§();
               break;
            case "PREV":
               this.§%i§();
               break;
            case "FULLSCREEN_BUTTON":
               §?!?§.§#'§("Menu_Confirm");
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §7R§() : void
      {
         §?!?§.§#'§("Menu_Confirm");
         if(!this.§-g§)
         {
            ++this.§]!6§;
            this.§;"§(this.§]!6§);
         }
      }
      
      protected function §%i§() : void
      {
         §?!?§.§#'§("Menu_Confirm");
         if(!this.§-g§)
         {
            --this.§]!6§;
            this.§;"§(this.§]!6§);
         }
      }
      
      public function §^d§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§`k§ = [];
         this.§6q§ = [];
         this.§]!6§ = §6M§.§6[§(§6M§.§'0§).§8B§;
         this.§&#§ = this.§]!6§;
         this.§^y§ = this.§]!6§;
         var _loc2_:§1$§ = §6M§.§6[§(§6M§.§'0§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§'T§(_loc2_.pageIndexes[_loc3_]);
            this.§`k§.push(_loc2_.§?h§(_loc3_));
            this.§6q§.push(_loc2_.§!f§(_loc3_));
            _loc1_ = this.§`!8§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§>!;§ = new §-!$§(this.§`k§[this.§]!6§].red,this.§`k§[this.§]!6§].green,this.§`k§[this.§]!6§].blue,1);
         §#Z§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§>!;§);
         if(_loc2_.§,"§)
         {
            _loc6_ = new (_loc5_ = §7!D§.§?0§(_loc2_.§,"§))();
            §#Z§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §#Z§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§;!%§)
         {
            _loc8_ = new (_loc7_ = §7!D§.§?0§(_loc2_.§;!%§))();
            §#Z§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §#Z§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§'!2§();
         if(§^B§ == StateCutScene.§0!7§)
         {
            §^B§ = "";
            this.§;"§(this.§^y§);
         }
         else
         {
            this.§;"§(this.§]!6§,true);
         }
      }
      
      protected function §`!8§(param1:Array, param2:int, param3:Number, param4:§1$§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §7!D§.§?0§(this.§6q§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§"!-§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§[!2§)
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
         _loc8_.@button = this.§6q§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§8L§;
         (_loc9_ = new §8L§(_loc8_,this.§]!&§,null,null)).§`p§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§]!&§.§4H§(_loc9_);
         this.§ U§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §"!-§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§^z§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§-U§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §'!2§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§ U§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§6!D§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ U§.length)
         {
            _loc1_ = §7!D§.§?0§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§ U§.length * _loc2_.width / 2;
            _loc2_.y = (§#Z§.getItemByName("Button_Next") as §=^§).y - _loc2_.height / 2;
            if(_loc4_ == this.§]!6§)
            {
               _loc2_.gotoAndStop("Selected");
               (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).x = _loc2_.x;
               (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).y = _loc2_.y - _loc2_.height;
               this.§4!C§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§#$§.mClip.addChild(_loc2_);
            this.§6!D§[_loc2_] = _loc4_;
            this.§^p§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!6§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§ U§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§#Z§.getItemByName("Button_Next") as §=^§).x = AngryBirdsFP11.screenWidth / 2;
         (§#Z§.getItemByName("Button_Prev") as §=^§).x = AngryBirdsFP11.screenWidth / 2;
         (§#Z§.getItemByName("Button_Next") as §=^§).x = (§#Z§.getItemByName("Button_Next") as §=^§).x + (_loc3_ + 10);
         (§#Z§.getItemByName("Button_Prev") as §=^§).x = (§#Z§.getItemByName("Button_Prev") as §=^§).x - (_loc3_ + 10);
      }
      
      protected function §`!H§() : void
      {
         if(this.§>!;§)
         {
            this.§>!;§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§^p§.length)
         {
            if(this.§#$§.mClip.contains(this.§^p§[_loc1_]))
            {
               this.§^p§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§7!6§);
               this.§#$§.mClip.removeChild(this.§^p§[_loc1_]);
            }
            _loc1_++;
         }
         this.§^p§ = [];
         while(this.§]!&§.mClip.numChildren > 0)
         {
            this.§]!&§.mClip.removeChildAt(0);
         }
         this.§ U§ = [];
      }
      
      protected function §7!6§(param1:MouseEvent) : void
      {
         if(!this.§-g§)
         {
            this.§;"§(this.§6!D§[param1.target]);
         }
      }
      
      protected function §3x§(param1:MouseEvent) : void
      {
         if(!this.§-g§)
         {
            mNextState = §!,§.§0!7§;
         }
      }
      
      protected function §;"§(param1:int, param2:Boolean = false) : void
      {
         this.§-g§ = true;
         if(param1 > this.§ U§.length - 1)
         {
            param1 = this.§ U§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]!6§ = param1;
         if(this.§]!6§ > this.§^y§)
         {
            this.§&#§ = this.§^y§ + 1;
         }
         else if(this.§]!6§ < this.§^y§)
         {
            this.§&#§ = this.§^y§ - 1;
         }
         var _loc3_:Number = -this.§ U§[param1].x;
         var _loc4_:Number = this.§ U§[param1].x + this.§]!&§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §7,§;
         if(this.§2%§ != null)
         {
            this.§2%§.stop();
         }
         if(param2)
         {
            this.§]!&§.x = _loc3_;
         }
         else
         {
            this.§2%§ = §%!>§.§-]§.§?U§(this.§]!&§,{"x":_loc3_},null,_loc5_,§%!>§.§4G§);
            this.§2%§.onComplete = this.§?S§;
         }
         if(param2)
         {
            this.§?S§();
         }
         else
         {
            this.§2%§.play();
         }
      }
      
      protected function §?S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^p§.length)
         {
            if(_loc1_ == this.§]!6§)
            {
               this.§^p§[_loc1_].gotoAndStop("Selected");
               (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).x = this.§^p§[_loc1_].x;
               this.§4!C§(_loc1_);
            }
            else
            {
               this.§^p§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§-g§ = false;
         §6M§.§6[§(§6M§.§'0§).§8B§ = this.§]!6§;
      }
      
      protected function §4!C§(param1:int) : void
      {
         (§#Z§.getItemByName("TextField_LevelNumberSmall") as §`Y§).§ p§.text = §6M§.§6[§(§6M§.§'0§).pageIndexes[param1];
      }
   }
}
