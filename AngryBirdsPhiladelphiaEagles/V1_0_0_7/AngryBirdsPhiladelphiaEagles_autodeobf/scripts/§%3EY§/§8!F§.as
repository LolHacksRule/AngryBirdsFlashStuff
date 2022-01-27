package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §3!%§.§9i§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§-G§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §92§.§<'§;
   import §<!4§.§25§;
   import §=u§.;
   import §=u§.§&'§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §8!F§ extends §<!>§
   {
      
      public static const §4!C§:String = "LevelSelectionState";
      
      protected static const §2! §:Number = 0.5;
      
      public static var §7i§:String = "";
       
      
      protected var §;i§:Boolean = false;
      
      protected var §[d§:§>v§;
      
      protected var §7!+§:§>v§;
      
      protected var §]x§:MovieClip;
      
      protected var §2'§:Array;
      
      protected var §^O§:Array;
      
      protected var §`!+§:int = 0;
      
      protected var §0!;§:int = 0;
      
      protected var §?m§:int = 0;
      
      protected var §@!&§:Boolean = false;
      
      protected var §#e§:§6q§ = null;
      
      protected var §!!=§:Dictionary;
      
      protected var §7!-§:Array;
      
      protected var §'u§:Array;
      
      protected var §0!G§:§<'§;
      
      protected var §^!2§:Number = 0;
      
      public function §8!F§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§8!#§();
         while(this.§7!+§.mClip.numChildren > 0)
         {
            this.§7!+§.mClip.removeChildAt(0);
         }
         this.§^O§ = [];
         this.§2'§ = [];
      }
      
      protected function §8!#§() : void
      {
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelSelection[0]);
         this.§7!+§ = §3g§.getItemByName("Container_LevelRepeaters") as §>v§;
         this.§[d§ = §3g§.getItemByName("Container_LevelSelection") as §>v§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §9=§.§<!@§.clearLevel();
         §9=§.§<!@§.§2k§(false);
         this.§`!G§();
         this.§if §();
         if(this.§^O§.length == 1)
         {
            (§3g§.getItemByName("Button_Prev") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_Next") as §1r§).setVisibility(false);
            (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).setVisibility(false);
         }
         else
         {
            (§3g§.getItemByName("Button_Prev") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_Next") as §1r§).setVisibility(true);
            (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).setVisibility(true);
         }
         this.§^!2§ = this.§7!+§.x;
         if(§3g§.stage)
         {
            §3g§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§=!9§);
         }
      }
      
      protected function §if §() : void
      {
         AngryBirdsFP11.§if §();
      }
      
      protected function §=!9§(param1:KeyboardEvent) : void
      {
         if(this.§^O§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§?n§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§%!L§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]§();
         this.§36§();
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      protected function §]§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2'§.length)
         {
            if(-this.§7!+§.x >= this.§^O§[_loc1_].x && -this.§^!2§ < this.§^O§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2'§.length)
               {
                  this.§2'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?m§ = _loc1_;
               this.§2'§[_loc1_].gotoAndStop("Selected");
               (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).x = this.§2'§[_loc1_].x;
               this.§1!0§(_loc1_);
            }
            if(-this.§7!+§.x <= this.§^O§[_loc1_].x && -this.§^!2§ > this.§^O§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2'§.length)
               {
                  this.§2'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?m§ = _loc1_;
               this.§2'§[_loc1_].gotoAndStop("Selected");
               (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).x = this.§2'§[_loc1_].x;
               this.§1!0§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§?m§ != this.§`!+§)
         {
            if(this.§`!+§ > this.§?m§)
            {
               this.§0!;§ = this.§?m§ + 1;
            }
            else if(this.§`!+§ < this.§?m§)
            {
               this.§0!;§ = this.§?m§ - 1;
            }
            else
            {
               this.§0!;§ = this.§?m§;
            }
            if(this.§7!-§[this.§0!;§])
            {
               this.§0!G§.§2S§(this.§7!-§[this.§0!;§].red,this.§7!-§[this.§0!;§].green,this.§7!-§[this.§0!;§].blue);
            }
         }
         this.§^!2§ = this.§7!+§.x;
      }
      
      protected function §36§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^O§.length)
         {
            _loc2_ = this.§7!+§.x + this.§^O§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§^O§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§^O§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§^O§[_loc1_].mClip.alpha < 1)
            {
               (this.§^O§[_loc1_] as §-G§).setEnabled(false);
            }
            else
            {
               (this.§^O§[_loc1_] as §-G§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§3g§.stage)
         {
            §3g§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=!9§);
         }
         super.deActivate();
         this.§<F§();
         (§3g§.getItemByName("Button_Back") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §-k§.§5!0§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§#e§)
         {
            this.§#e§.stop();
            this.§#e§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         if(param2.length > 0 && param3 is §&'§)
         {
            if((param3 as §&'§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §&'§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§@!&§)
               {
                  §-k§.§+p§(§-k§.§0S§(param2.toLowerCase()));
                  mNextState = StateCutScene.§4!C§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §25§.playSound("Menu_Back");
               mNextState = §=!F§.§4!C§;
               break;
            case "NEXT":
               this.§%!L§();
               break;
            case "PREV":
               this.§?n§();
               break;
            case "FULLSCREEN_BUTTON":
               §25§.playSound("Menu_Confirm");
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      protected function §%!L§() : void
      {
         §25§.playSound("Menu_Confirm");
         if(!this.§@!&§)
         {
            ++this.§`!+§;
            this.§0J§(this.§`!+§);
         }
      }
      
      protected function §?n§() : void
      {
         §25§.playSound("Menu_Confirm");
         if(!this.§@!&§)
         {
            --this.§`!+§;
            this.§0J§(this.§`!+§);
         }
      }
      
      public function §`!G§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§7!-§ = [];
         this.§'u§ = [];
         this.§`!+§ = §-k§.§^4§(§-k§.§>-§).§3Y§;
         this.§0!;§ = this.§`!+§;
         this.§?m§ = this.§`!+§;
         var _loc2_:§9i§ = §-k§.§^4§(§-k§.§>-§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§5?§(_loc2_.pageIndexes[_loc3_]);
            this.§7!-§.push(_loc2_.§<z§(_loc3_));
            this.§'u§.push(_loc2_.§?!L§(_loc3_));
            _loc1_ = this.§ !%§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§0!G§ = new §<'§(this.§7!-§[this.§`!+§].red,this.§7!-§[this.§`!+§].green,this.§7!-§[this.§`!+§].blue,1);
         §3g§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§0!G§);
         if(_loc2_.§8t§)
         {
            _loc6_ = new (_loc5_ = §@h§.§[@§(_loc2_.§8t§))();
            §3g§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §3g§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§<D§)
         {
            _loc8_ = new (_loc7_ = §@h§.§[@§(_loc2_.§<D§))();
            §3g§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §3g§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§4!I§();
         if(§7i§ == StateCutScene.§4!C§)
         {
            §7i§ = "";
            this.§0J§(this.§?m§);
         }
         else
         {
            this.§0J§(this.§`!+§,true);
         }
      }
      
      protected function § !%§(param1:Array, param2:int, param3:Number, param4:§9i§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §@h§.§[@§(this.§'u§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§3!?§.isLevelOpen(_loc10_);
            _loc12_ = this.§9>§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§<y§)
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
         _loc8_.@button = this.§'u§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§#3§;
         (_loc9_ = new §#3§(_loc8_,this.§7!+§,null,null)).§6m§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§7!+§.addComponent(_loc9_);
         this.§^O§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§4!D§);
      }
      
      protected function §9>§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§3!?§.§#J§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§3!?§.§09§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §4!I§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§^O§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§!!=§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§^O§.length)
         {
            _loc1_ = §@h§.§[@§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§4!D§ / 2 + _loc3_ - this.§^O§.length * _loc2_.width / 2;
            _loc2_.y = (§3g§.getItemByName("Button_Next") as §1r§).y - _loc2_.height / 2;
            if(_loc4_ == this.§`!+§)
            {
               _loc2_.gotoAndStop("Selected");
               (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).x = _loc2_.x;
               (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).y = _loc2_.y - _loc2_.height;
               this.§1!0§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§[d§.mClip.addChild(_loc2_);
            this.§!!=§[_loc2_] = _loc4_;
            this.§2'§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§^O§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§3g§.getItemByName("Button_Next") as §1r§).x = AngryBirdsFP11.§4!D§ / 2;
         (§3g§.getItemByName("Button_Prev") as §1r§).x = AngryBirdsFP11.§4!D§ / 2;
         (§3g§.getItemByName("Button_Next") as §1r§).x = (§3g§.getItemByName("Button_Next") as §1r§).x + (_loc3_ + 10);
         (§3g§.getItemByName("Button_Prev") as §1r§).x = (§3g§.getItemByName("Button_Prev") as §1r§).x - (_loc3_ + 10);
      }
      
      protected function §<F§() : void
      {
         if(this.§0!G§)
         {
            this.§0!G§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§2'§.length)
         {
            if(this.§[d§.mClip.contains(this.§2'§[_loc1_]))
            {
               this.§2'§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
               this.§[d§.mClip.removeChild(this.§2'§[_loc1_]);
            }
            _loc1_++;
         }
         this.§2'§ = [];
         while(this.§7!+§.mClip.numChildren > 0)
         {
            this.§7!+§.mClip.removeChildAt(0);
         }
         this.§^O§ = [];
      }
      
      protected function §4;§(param1:MouseEvent) : void
      {
         if(!this.§@!&§)
         {
            this.§0J§(this.§!!=§[param1.target]);
         }
      }
      
      protected function §6F§(param1:MouseEvent) : void
      {
         if(!this.§@!&§)
         {
            mNextState = §8!F§.§4!C§;
         }
      }
      
      protected function §0J§(param1:int, param2:Boolean = false) : void
      {
         this.§@!&§ = true;
         if(param1 > this.§^O§.length - 1)
         {
            param1 = this.§^O§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`!+§ = param1;
         if(this.§`!+§ > this.§?m§)
         {
            this.§0!;§ = this.§?m§ + 1;
         }
         else if(this.§`!+§ < this.§?m§)
         {
            this.§0!;§ = this.§?m§ - 1;
         }
         var _loc3_:Number = -this.§^O§[param1].x;
         var _loc4_:Number = this.§^O§[param1].x + this.§7!+§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §2! §;
         if(this.§#e§ != null)
         {
            this.§#e§.stop();
         }
         if(param2)
         {
            this.§7!+§.x = _loc3_;
         }
         else
         {
            this.§#e§ = §[!-§.§ set§.§6B§(this.§7!+§,{"x":_loc3_},null,_loc5_,§[!-§.§>X§);
            this.§#e§.onComplete = this.§[w§;
         }
         if(param2)
         {
            this.§[w§();
         }
         else
         {
            this.§#e§.play();
         }
      }
      
      protected function §[w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2'§.length)
         {
            if(_loc1_ == this.§`!+§)
            {
               this.§2'§[_loc1_].gotoAndStop("Selected");
               (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).x = this.§2'§[_loc1_].x;
               this.§1!0§(_loc1_);
            }
            else
            {
               this.§2'§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§@!&§ = false;
         §-k§.§^4§(§-k§.§>-§).§3Y§ = this.§`!+§;
      }
      
      protected function §1!0§(param1:int) : void
      {
         (§3g§.getItemByName("TextField_LevelNumberSmall") as §2"§).§^"§.text = §-k§.§^4§(§-k§.§>-§).pageIndexes[param1];
      }
   }
}
