package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §7!!§.§,c§;
   import §9c§.§,x§;
   import §9c§.§3i§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§7w§;
   import §=!H§.§9V§;
   import §=!H§.§<h§;
   import §=!H§.§=<§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import §?!;§.§;h§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!!6§ extends §!L§
   {
      
      public static const §"Z§:String = "LevelSelectionState";
      
      protected static const §+!!§:Number = 0.5;
      
      public static var §<f§:String = "";
       
      
      protected var §6!,§:Boolean = false;
      
      protected var §7r§:§9V§;
      
      protected var §5!0§:§9V§;
      
      protected var §-s§:MovieClip;
      
      protected var §4!2§:Array;
      
      protected var §8o§:Array;
      
      protected var §]3§:int = 0;
      
      protected var §?!$§:int = 0;
      
      protected var §0P§:int = 0;
      
      protected var §6!4§:Boolean = false;
      
      protected var §!E§:§ !4§ = null;
      
      protected var §=A§:Dictionary;
      
      protected var §>!<§:Array;
      
      protected var §8!#§:Array;
      
      protected var §=]§:§,c§;
      
      protected var §4v§:Number = 0;
      
      public function §!!6§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§4t§();
         while(this.§5!0§.mClip.numChildren > 0)
         {
            this.§5!0§.mClip.removeChildAt(0);
         }
         this.§8o§ = [];
         this.§4!2§ = [];
      }
      
      protected function §4t§() : void
      {
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelSelection[0]);
         this.§5!0§ = §>2§.getItemByName("Container_LevelRepeaters") as §9V§;
         this.§7r§ = §>2§.getItemByName("Container_LevelSelection") as §9V§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!+§.§6!§.clearLevel();
         §5!+§.§6!§.§'!+§(false);
         this.§%!M§();
         this.§6r§();
         if(this.§8o§.length == 1)
         {
            (§>2§.getItemByName("Button_Prev") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_Next") as §=<§).setVisibility(false);
            (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).setVisibility(false);
         }
         else
         {
            (§>2§.getItemByName("Button_Prev") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_Next") as §=<§).setVisibility(true);
            (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).setVisibility(true);
         }
         this.§4v§ = this.§5!0§.x;
         if(§>2§.stage)
         {
            §>2§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<D§);
         }
      }
      
      protected function §6r§() : void
      {
         AngryBirdsFP11.§6r§();
      }
      
      protected function §<D§(param1:KeyboardEvent) : void
      {
         if(this.§8o§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§@+§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§+!B§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-d§();
         this.§&s§();
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      protected function §-d§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!2§.length)
         {
            if(-this.§5!0§.x >= this.§8o§[_loc1_].x && -this.§4v§ < this.§8o§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§4!2§.length)
               {
                  this.§4!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0P§ = _loc1_;
               this.§4!2§[_loc1_].gotoAndStop("Selected");
               (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).x = this.§4!2§[_loc1_].x;
               this.§3F§(_loc1_);
            }
            if(-this.§5!0§.x <= this.§8o§[_loc1_].x && -this.§4v§ > this.§8o§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§4!2§.length)
               {
                  this.§4!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0P§ = _loc1_;
               this.§4!2§[_loc1_].gotoAndStop("Selected");
               (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).x = this.§4!2§[_loc1_].x;
               this.§3F§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§0P§ != this.§]3§)
         {
            if(this.§]3§ > this.§0P§)
            {
               this.§?!$§ = this.§0P§ + 1;
            }
            else if(this.§]3§ < this.§0P§)
            {
               this.§?!$§ = this.§0P§ - 1;
            }
            else
            {
               this.§?!$§ = this.§0P§;
            }
            if(this.§>!<§[this.§?!$§])
            {
               this.§=]§.§!!+§(this.§>!<§[this.§?!$§].red,this.§>!<§[this.§?!$§].green,this.§>!<§[this.§?!$§].blue);
            }
         }
         this.§4v§ = this.§5!0§.x;
      }
      
      protected function §&s§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8o§.length)
         {
            _loc2_ = this.§5!0§.x + this.§8o§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§8o§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§8o§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§8o§[_loc1_].mClip.alpha < 1)
            {
               (this.§8o§[_loc1_] as §3i§).setEnabled(false);
            }
            else
            {
               (this.§8o§[_loc1_] as §3i§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§>2§.stage)
         {
            §>2§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§<D§);
         }
         super.deActivate();
         this.§-v§();
         (§>2§.getItemByName("Button_Back") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6H§.§<S§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§!E§)
         {
            this.§!E§.stop();
            this.§!E§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         if(param2.length > 0 && param3 is §<h§)
         {
            if((param3 as §<h§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §<h§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§6!4§)
               {
                  §6H§.§#L§(§6H§.§4!+§(param2.toLowerCase()));
                  mNextState = StateCutScene.§"Z§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §3V§.playSound("Menu_Back");
               mNextState = §2!"§.§"Z§;
               break;
            case "NEXT":
               this.§+!B§();
               break;
            case "PREV":
               this.§@+§();
               break;
            case "FULLSCREEN_BUTTON":
               §3V§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      protected function §+!B§() : void
      {
         §3V§.playSound("Menu_Confirm");
         if(!this.§6!4§)
         {
            ++this.§]3§;
            this.§5!J§(this.§]3§);
         }
      }
      
      protected function §@+§() : void
      {
         §3V§.playSound("Menu_Confirm");
         if(!this.§6!4§)
         {
            --this.§]3§;
            this.§5!J§(this.§]3§);
         }
      }
      
      public function §%!M§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§>!<§ = [];
         this.§8!#§ = [];
         this.§]3§ = §6H§.§4_§(§6H§.§6!;§).§6§;
         this.§?!$§ = this.§]3§;
         this.§0P§ = this.§]3§;
         var _loc2_:§;h§ = §6H§.§4_§(§6H§.§6!;§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§`#§(_loc2_.pageIndexes[_loc3_]);
            this.§>!<§.push(_loc2_.§;!0§(_loc3_));
            this.§8!#§.push(_loc2_.§,!$§(_loc3_));
            _loc1_ = this.§6!&§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§=]§ = new §,c§(this.§>!<§[this.§]3§].red,this.§>!<§[this.§]3§].green,this.§>!<§[this.§]3§].blue,1);
         §>2§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§=]§);
         if(_loc2_.§"W§)
         {
            _loc6_ = new (_loc5_ = §<x§.§,! §(_loc2_.§"W§))();
            §>2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §>2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§6'§)
         {
            _loc8_ = new (_loc7_ = §<x§.§,! §(_loc2_.§6'§))();
            §>2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §>2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§`7§();
         if(§<f§ == StateCutScene.§"Z§)
         {
            §<f§ = "";
            this.§5!J§(this.§0P§);
         }
         else
         {
            this.§5!J§(this.§]3§,true);
         }
      }
      
      protected function §6!&§(param1:Array, param2:int, param3:Number, param4:§;h§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §<x§.§,! §(this.§8!#§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§^O§.isLevelOpen(_loc10_);
            _loc12_ = this.§^D§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§7I§)
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
         _loc8_.@button = this.§8!#§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§7w§;
         (_loc9_ = new §7w§(_loc8_,this.§5!0§,null,null)).§?!%§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§5!0§.addComponent(_loc9_);
         this.§8o§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§<§);
      }
      
      protected function §^D§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§^O§.§#!@§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§^O§.§'7§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §`7§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§8o§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=A§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§8o§.length)
         {
            _loc1_ = §<x§.§,! §("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§<§ / 2 + _loc3_ - this.§8o§.length * _loc2_.width / 2;
            _loc2_.y = (§>2§.getItemByName("Button_Next") as §=<§).y - _loc2_.height / 2;
            if(_loc4_ == this.§]3§)
            {
               _loc2_.gotoAndStop("Selected");
               (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).x = _loc2_.x;
               (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).y = _loc2_.y - _loc2_.height;
               this.§3F§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§7r§.mClip.addChild(_loc2_);
            this.§=A§[_loc2_] = _loc4_;
            this.§4!2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!E§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§8o§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§>2§.getItemByName("Button_Next") as §=<§).x = AngryBirdsFP11.§<§ / 2;
         (§>2§.getItemByName("Button_Prev") as §=<§).x = AngryBirdsFP11.§<§ / 2;
         (§>2§.getItemByName("Button_Next") as §=<§).x = (§>2§.getItemByName("Button_Next") as §=<§).x + (_loc3_ + 10);
         (§>2§.getItemByName("Button_Prev") as §=<§).x = (§>2§.getItemByName("Button_Prev") as §=<§).x - (_loc3_ + 10);
      }
      
      protected function §-v§() : void
      {
         if(this.§=]§)
         {
            this.§=]§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!2§.length)
         {
            if(this.§7r§.mClip.contains(this.§4!2§[_loc1_]))
            {
               this.§4!2§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!E§);
               this.§7r§.mClip.removeChild(this.§4!2§[_loc1_]);
            }
            _loc1_++;
         }
         this.§4!2§ = [];
         while(this.§5!0§.mClip.numChildren > 0)
         {
            this.§5!0§.mClip.removeChildAt(0);
         }
         this.§8o§ = [];
      }
      
      protected function §#!E§(param1:MouseEvent) : void
      {
         if(!this.§6!4§)
         {
            this.§5!J§(this.§=A§[param1.target]);
         }
      }
      
      protected function §<I§(param1:MouseEvent) : void
      {
         if(!this.§6!4§)
         {
            mNextState = §!!6§.§"Z§;
         }
      }
      
      protected function §5!J§(param1:int, param2:Boolean = false) : void
      {
         this.§6!4§ = true;
         if(param1 > this.§8o§.length - 1)
         {
            param1 = this.§8o§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]3§ = param1;
         if(this.§]3§ > this.§0P§)
         {
            this.§?!$§ = this.§0P§ + 1;
         }
         else if(this.§]3§ < this.§0P§)
         {
            this.§?!$§ = this.§0P§ - 1;
         }
         var _loc3_:Number = -this.§8o§[param1].x;
         var _loc4_:Number = this.§8o§[param1].x + this.§5!0§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §+!!§;
         if(this.§!E§ != null)
         {
            this.§!E§.stop();
         }
         if(param2)
         {
            this.§5!0§.x = _loc3_;
         }
         else
         {
            this.§!E§ = §49§.§&y§.§=!3§(this.§5!0§,{"x":_loc3_},null,_loc5_,§49§.§+<§);
            this.§!E§.onComplete = this.§=J§;
         }
         if(param2)
         {
            this.§=J§();
         }
         else
         {
            this.§!E§.play();
         }
      }
      
      protected function §=J§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!2§.length)
         {
            if(_loc1_ == this.§]3§)
            {
               this.§4!2§[_loc1_].gotoAndStop("Selected");
               (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).x = this.§4!2§[_loc1_].x;
               this.§3F§(_loc1_);
            }
            else
            {
               this.§4!2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§6!4§ = false;
         §6H§.§4_§(§6H§.§6!;§).§6§ = this.§]3§;
      }
      
      protected function §3F§(param1:int) : void
      {
         (§>2§.getItemByName("TextField_LevelNumberSmall") as §`S§).§'Z§.text = §6H§.§4_§(§6H§.§6!;§).pageIndexes[param1];
      }
   }
}
