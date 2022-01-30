package §2x§
{
   import § true§.§0!g§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import § true§.§?W§;
   import §&k§.§3l§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §0s§.§=W§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §4!j§.§[!f§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §8";§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelSelectionState";
      
      protected static const §#!R§:Number = 0.5;
      
      public static var §;!&§:String = "";
       
      
      protected var § G§:Boolean = false;
      
      protected var §[!&§:§1H§;
      
      protected var §3!i§:§1H§;
      
      protected var §,!?§:MovieClip;
      
      protected var §0!Z§:Array;
      
      protected var §3"!§:Array;
      
      protected var §"3§:int = 0;
      
      protected var §`"8§:int = 0;
      
      protected var §4"4§:int = 0;
      
      protected var §`!H§:Boolean = false;
      
      protected var § !1§:§-!m§ = null;
      
      protected var §5u§:Dictionary;
      
      protected var §!!U§:Array;
      
      protected var §8!_§:Array;
      
      protected var §!<§:§3l§;
      
      protected var §>a§:Number = 0;
      
      public function §8";§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!=§();
         while(this.§3!i§.mClip.numChildren > 0)
         {
            this.§3!i§.mClip.removeChildAt(0);
         }
         this.§3"!§ = [];
         this.§0!Z§ = [];
      }
      
      protected function §!=§() : void
      {
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelSelection[0]);
         this.§3!i§ = §3?§.getItemByName("Container_LevelRepeaters") as §1H§;
         this.§[!&§ = §3?§.getItemByName("Container_LevelSelection") as §1H§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!U§.§,!E§.clearLevel();
         §5!U§.§,!E§.§=""§(false);
         this.§ ">§();
         this.§;!X§();
         if(this.§3"!§.length == 1)
         {
            (§3?§.getItemByName("Button_Prev") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_Next") as §8K§).setVisibility(false);
            (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).setVisibility(false);
         }
         else
         {
            (§3?§.getItemByName("Button_Prev") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_Next") as §8K§).setVisibility(true);
            (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).setVisibility(true);
         }
         this.§>a§ = this.§3!i§.x;
         if(§3?§.stage)
         {
            §3?§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§>!v§);
         }
      }
      
      protected function §;!X§() : void
      {
         AngryBirdsFP11.§;!X§();
      }
      
      protected function §>!v§(param1:KeyboardEvent) : void
      {
         if(this.§3"!§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§]!p§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§ "2§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!@§();
         this.§6",§();
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      protected function §@!@§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!Z§.length)
         {
            if(-this.§3!i§.x >= this.§3"!§[_loc1_].x && -this.§>a§ < this.§3"!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!Z§.length)
               {
                  this.§0!Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4"4§ = _loc1_;
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
               (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).x = this.§0!Z§[_loc1_].x;
               this.§]m§(_loc1_);
            }
            if(-this.§3!i§.x <= this.§3"!§[_loc1_].x && -this.§>a§ > this.§3"!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!Z§.length)
               {
                  this.§0!Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4"4§ = _loc1_;
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
               (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).x = this.§0!Z§[_loc1_].x;
               this.§]m§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§4"4§ != this.§"3§)
         {
            if(this.§"3§ > this.§4"4§)
            {
               this.§`"8§ = this.§4"4§ + 1;
            }
            else if(this.§"3§ < this.§4"4§)
            {
               this.§`"8§ = this.§4"4§ - 1;
            }
            else
            {
               this.§`"8§ = this.§4"4§;
            }
            if(this.§!!U§[this.§`"8§])
            {
               this.§!<§.§+!T§(this.§!!U§[this.§`"8§].red,this.§!!U§[this.§`"8§].green,this.§!!U§[this.§`"8§].blue);
            }
         }
         this.§>a§ = this.§3!i§.x;
      }
      
      protected function §6",§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"!§.length)
         {
            _loc2_ = this.§3!i§.x + this.§3"!§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§3"!§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§3"!§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§3"!§[_loc1_].mClip.alpha < 1)
            {
               (this.§3"!§[_loc1_] as §[!f§).setEnabled(false);
            }
            else
            {
               (this.§3"!§[_loc1_] as §[!f§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§3?§.stage)
         {
            §3?§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§>!v§);
         }
         super.deActivate();
         this.§=!g§();
         (§3?§.getItemByName("Button_Back") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §8!z§.§ "7§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§ !1§)
         {
            this.§ !1§.stop();
            this.§ !1§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         if(param2.length > 0 && param3 is §?W§)
         {
            if((param3 as §?W§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §?W§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§`!H§)
               {
                  §8!z§.loadLevel(§8!z§.§ 7§(param2.toLowerCase()));
                  mNextState = StateCutScene.§>H§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §5;§.playSound("Menu_Back");
               mNextState = §7!x§.§>H§;
               break;
            case "NEXT":
               this.§ "2§();
               break;
            case "PREV":
               this.§]!p§();
               break;
            case "FULLSCREEN_BUTTON":
               §5;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      protected function § "2§() : void
      {
         §5;§.playSound("Menu_Confirm");
         if(!this.§`!H§)
         {
            ++this.§"3§;
            this.§'"3§(this.§"3§);
         }
      }
      
      protected function §]!p§() : void
      {
         §5;§.playSound("Menu_Confirm");
         if(!this.§`!H§)
         {
            --this.§"3§;
            this.§'"3§(this.§"3§);
         }
      }
      
      public function § ">§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§!!U§ = [];
         this.§8!_§ = [];
         this.§"3§ = §8!z§.§]!1§(§8!z§.§8"4§).§^"?§;
         this.§`"8§ = this.§"3§;
         this.§4"4§ = this.§"3§;
         var _loc2_:§=W§ = §8!z§.§]!1§(§8!z§.§8"4§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§0!;§(_loc2_.pageIndexes[_loc3_]);
            this.§!!U§.push(_loc2_.§1!s§(_loc3_));
            this.§8!_§.push(_loc2_.§with§(_loc3_));
            _loc1_ = this.§9s§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§!<§ = new §3l§(this.§!!U§[this.§"3§].red,this.§!!U§[this.§"3§].green,this.§!!U§[this.§"3§].blue,1);
         §3?§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§!<§);
         if(_loc2_.§[!3§)
         {
            _loc6_ = new (_loc5_ = §=#§.§1v§(_loc2_.§[!3§))();
            §3?§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §3?§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§?!L§)
         {
            _loc8_ = new (_loc7_ = §=#§.§1v§(_loc2_.§?!L§))();
            §3?§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §3?§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§,!n§();
         if(§;!&§ == StateCutScene.§>H§)
         {
            §;!&§ = "";
            this.§'"3§(this.§4"4§);
         }
         else
         {
            this.§'"3§(this.§"3§,true);
         }
      }
      
      protected function §9s§(param1:Array, param2:int, param3:Number, param4:§=W§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §=#§.§1v§(this.§8!_§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§"!c§.§6!K§(_loc10_);
            _loc12_ = this.§!!"§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§1D§)
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
         _loc8_.@button = this.§8!_§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§0!g§;
         (_loc9_ = new §0!g§(_loc8_,this.§3!i§,null,null)).§?!@§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§3!i§.§[!I§(_loc9_);
         this.§3"!§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§`!4§);
      }
      
      protected function §!!"§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§"!c§.§7C§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§"!c§.§0""§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §,!n§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§3"!§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§5u§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§3"!§.length)
         {
            _loc1_ = §=#§.§1v§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§`!4§ / 2 + _loc3_ - this.§3"!§.length * _loc2_.width / 2;
            _loc2_.y = (§3?§.getItemByName("Button_Next") as §8K§).y - _loc2_.height / 2;
            if(_loc4_ == this.§"3§)
            {
               _loc2_.gotoAndStop("Selected");
               (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).x = _loc2_.x;
               (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).y = _loc2_.y - _loc2_.height;
               this.§]m§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§[!&§.mClip.addChild(_loc2_);
            this.§5u§[_loc2_] = _loc4_;
            this.§0!Z§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!E§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§3"!§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§3?§.getItemByName("Button_Next") as §8K§).x = AngryBirdsFP11.§`!4§ / 2;
         (§3?§.getItemByName("Button_Prev") as §8K§).x = AngryBirdsFP11.§`!4§ / 2;
         (§3?§.getItemByName("Button_Next") as §8K§).x = (§3?§.getItemByName("Button_Next") as §8K§).x + (_loc3_ + 10);
         (§3?§.getItemByName("Button_Prev") as §8K§).x = (§3?§.getItemByName("Button_Prev") as §8K§).x - (_loc3_ + 10);
      }
      
      protected function §=!g§() : void
      {
         if(this.§!<§)
         {
            this.§!<§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!Z§.length)
         {
            if(this.§[!&§.mClip.contains(this.§0!Z§[_loc1_]))
            {
               this.§0!Z§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§7!E§);
               this.§[!&§.mClip.removeChild(this.§0!Z§[_loc1_]);
            }
            _loc1_++;
         }
         this.§0!Z§ = [];
         while(this.§3!i§.mClip.numChildren > 0)
         {
            this.§3!i§.mClip.removeChildAt(0);
         }
         this.§3"!§ = [];
      }
      
      protected function §7!E§(param1:MouseEvent) : void
      {
         if(!this.§`!H§)
         {
            this.§'"3§(this.§5u§[param1.target]);
         }
      }
      
      protected function § ";§(param1:MouseEvent) : void
      {
         if(!this.§`!H§)
         {
            mNextState = §8";§.§>H§;
         }
      }
      
      protected function §'"3§(param1:int, param2:Boolean = false) : void
      {
         this.§`!H§ = true;
         if(param1 > this.§3"!§.length - 1)
         {
            param1 = this.§3"!§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§"3§ = param1;
         if(this.§"3§ > this.§4"4§)
         {
            this.§`"8§ = this.§4"4§ + 1;
         }
         else if(this.§"3§ < this.§4"4§)
         {
            this.§`"8§ = this.§4"4§ - 1;
         }
         var _loc3_:Number = -this.§3"!§[param1].x;
         var _loc4_:Number = this.§3"!§[param1].x + this.§3!i§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#!R§;
         if(this.§ !1§ != null)
         {
            this.§ !1§.stop();
         }
         if(param2)
         {
            this.§3!i§.x = _loc3_;
         }
         else
         {
            this.§ !1§ = §"L§.§7!?§.§4!P§(this.§3!i§,{"x":_loc3_},null,_loc5_,§"L§.§;§);
            this.§ !1§.onComplete = this.§%!V§;
         }
         if(param2)
         {
            this.§%!V§();
         }
         else
         {
            this.§ !1§.play();
         }
      }
      
      protected function §%!V§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!Z§.length)
         {
            if(_loc1_ == this.§"3§)
            {
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
               (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).x = this.§0!Z§[_loc1_].x;
               this.§]m§(_loc1_);
            }
            else
            {
               this.§0!Z§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§`!H§ = false;
         §8!z§.§]!1§(§8!z§.§8"4§).§^"?§ = this.§"3§;
      }
      
      protected function §]m§(param1:int) : void
      {
         (§3?§.getItemByName("TextField_LevelNumberSmall") as §<"-§).§7!n§.text = §8!z§.§]!1§(§8!z§.§8"4§).pageIndexes[param1];
      }
   }
}
