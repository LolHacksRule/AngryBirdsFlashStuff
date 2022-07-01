package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§+!,§;
   import §'p§.§-!"§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §7B§ extends §5y§
   {
      
      public static const §'=§:String = "LevelSelectionState";
      
      protected static const §;w§:Number = 0.5;
      
      public static var §[""§:String = "";
       
      
      protected var §=l§:Boolean = false;
      
      protected var §`R§:§`!T§;
      
      protected var §3""§:§`!T§;
      
      protected var §=!g§:MovieClip;
      
      protected var §+[§:Array;
      
      protected var §"!v§:Array;
      
      protected var §?!Y§:int = 0;
      
      protected var §8W§:int = 0;
      
      protected var §7!+§:int = 0;
      
      protected var §[!@§:Boolean = false;
      
      protected var §4i§:§3^§ = null;
      
      protected var §9!,§:Dictionary;
      
      protected var §`"4§:Array;
      
      protected var §+!6§:Array;
      
      protected var §?!+§:§4!i§;
      
      protected var §"=§:Number = 0;
      
      public function §7B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§9"2§();
         while(this.§3""§.mClip.numChildren > 0)
         {
            this.§3""§.mClip.removeChildAt(0);
         }
         this.§"!v§ = [];
         this.§+[§ = [];
      }
      
      protected function §9"2§() : void
      {
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelSelection[0]);
         this.§3""§ = §?E§.getItemByName("Container_LevelRepeaters") as §`!T§;
         this.§`R§ = §?E§.getItemByName("Container_LevelSelection") as §`!T§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!X§.§!'§.clearLevel();
         §=!X§.§!'§.§;p§(false);
         this.§@Z§();
         this.§<!,§();
         if(this.§"!v§.length == 1)
         {
            (§?E§.getItemByName("Button_Prev") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_Next") as §="#§).setVisibility(false);
            (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).setVisibility(false);
         }
         else
         {
            (§?E§.getItemByName("Button_Prev") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_Next") as §="#§).setVisibility(true);
            (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).setVisibility(true);
         }
         this.§"=§ = this.§3""§.x;
         if(§?E§.stage)
         {
            §?E§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[%§);
         }
      }
      
      protected function §<!,§() : void
      {
         AngryBirdsFP11.§<!,§();
      }
      
      protected function §[%§(param1:KeyboardEvent) : void
      {
         if(this.§"!v§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§!!k§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§-0§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'!h§();
         this.§3!]§();
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      protected function §'!h§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+[§.length)
         {
            if(-this.§3""§.x >= this.§"!v§[_loc1_].x && -this.§"=§ < this.§"!v§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§+[§.length)
               {
                  this.§+[§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!+§ = _loc1_;
               this.§+[§[_loc1_].gotoAndStop("Selected");
               (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
               this.§^>§(_loc1_);
            }
            if(-this.§3""§.x <= this.§"!v§[_loc1_].x && -this.§"=§ > this.§"!v§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§+[§.length)
               {
                  this.§+[§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!+§ = _loc1_;
               this.§+[§[_loc1_].gotoAndStop("Selected");
               (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
               this.§^>§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§7!+§ != this.§?!Y§)
         {
            if(this.§?!Y§ > this.§7!+§)
            {
               this.§8W§ = this.§7!+§ + 1;
            }
            else if(this.§?!Y§ < this.§7!+§)
            {
               this.§8W§ = this.§7!+§ - 1;
            }
            else
            {
               this.§8W§ = this.§7!+§;
            }
            if(this.§`"4§[this.§8W§])
            {
               this.§?!+§.§`<§(this.§`"4§[this.§8W§].red,this.§`"4§[this.§8W§].green,this.§`"4§[this.§8W§].blue);
            }
         }
         this.§"=§ = this.§3""§.x;
      }
      
      protected function §3!]§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!v§.length)
         {
            _loc2_ = this.§3""§.x + this.§"!v§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§"!v§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§"!v§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§"!v§[_loc1_].mClip.alpha < 1)
            {
               (this.§"!v§[_loc1_] as §-!2§).setEnabled(false);
            }
            else
            {
               (this.§"!v§[_loc1_] as §-!2§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§?E§.stage)
         {
            §?E§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[%§);
         }
         super.deActivate();
         this.§[Q§();
         (§?E§.getItemByName("Button_Back") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3!w§.§8H§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§4i§)
         {
            this.§4i§.stop();
            this.§4i§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         if(param2.length > 0 && param3 is §-!"§)
         {
            if((param3 as §-!"§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §-!"§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§[!@§)
               {
                  §3!w§.loadLevel(§3!w§.§'f§(param2.toLowerCase()));
                  mNextState = StateCutScene.§'=§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §5!U§.playSound("Menu_Back");
               mNextState = §="§.§'=§;
               break;
            case "NEXT":
               this.§-0§();
               break;
            case "PREV":
               this.§!!k§();
               break;
            case "FULLSCREEN_BUTTON":
               §5!U§.playSound("Menu_Confirm");
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      protected function §-0§() : void
      {
         §5!U§.playSound("Menu_Confirm");
         if(!this.§[!@§)
         {
            ++this.§?!Y§;
            this.§[!A§(this.§?!Y§);
         }
      }
      
      protected function §!!k§() : void
      {
         §5!U§.playSound("Menu_Confirm");
         if(!this.§[!@§)
         {
            --this.§?!Y§;
            this.§[!A§(this.§?!Y§);
         }
      }
      
      public function §@Z§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§`"4§ = [];
         this.§+!6§ = [];
         this.§?!Y§ = §3!w§.§2I§(§3!w§.§&"&§).§@!M§;
         this.§8W§ = this.§?!Y§;
         this.§7!+§ = this.§?!Y§;
         var _loc2_:§"! § = §3!w§.§2I§(§3!w§.§&"&§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§"b§(_loc2_.pageIndexes[_loc3_]);
            this.§`"4§.push(_loc2_.§!";§(_loc3_));
            this.§+!6§.push(_loc2_.§^"1§(_loc3_));
            _loc1_ = this.§>?§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§?!+§ = new §4!i§(this.§`"4§[this.§?!Y§].red,this.§`"4§[this.§?!Y§].green,this.§`"4§[this.§?!Y§].blue,1);
         §?E§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§?!+§);
         if(_loc2_.§#!"§)
         {
            _loc6_ = new (_loc5_ = §>!]§.§1!8§(_loc2_.§#!"§))();
            §?E§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §?E§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§`%§)
         {
            _loc8_ = new (_loc7_ = §>!]§.§1!8§(_loc2_.§`%§))();
            §?E§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §?E§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§5"&§();
         if(§[""§ == StateCutScene.§'=§)
         {
            §[""§ = "";
            this.§[!A§(this.§7!+§);
         }
         else
         {
            this.§[!A§(this.§?!Y§,true);
         }
      }
      
      protected function §>?§(param1:Array, param2:int, param3:Number, param4:§"! §) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>!]§.§1!8§(this.§+!6§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§>" §.§>1§(_loc10_);
            _loc12_ = this.§6G§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§>3§)
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
         _loc8_.@button = this.§+!6§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§+!,§;
         (_loc9_ = new §+!,§(_loc8_,this.§3""§,null,null)).§[!5§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§3""§.§;!R§(_loc9_);
         this.§"!v§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§>!U§);
      }
      
      protected function §6G§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§>" §.§2?§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§>" §.§&!;§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §5"&§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§"!v§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§9!,§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§"!v§.length)
         {
            _loc1_ = §>!]§.§1!8§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§>!U§ / 2 + _loc3_ - this.§"!v§.length * _loc2_.width / 2;
            _loc2_.y = (§?E§.getItemByName("Button_Next") as §="#§).y - _loc2_.height / 2;
            if(_loc4_ == this.§?!Y§)
            {
               _loc2_.gotoAndStop("Selected");
               (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = _loc2_.x;
               (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).y = _loc2_.y - _loc2_.height;
               this.§^>§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§`R§.mClip.addChild(_loc2_);
            this.§9!,§[_loc2_] = _loc4_;
            this.§+[§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§"!v§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§?E§.getItemByName("Button_Next") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
         (§?E§.getItemByName("Button_Prev") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
         (§?E§.getItemByName("Button_Next") as §="#§).x = (§?E§.getItemByName("Button_Next") as §="#§).x + (_loc3_ + 10);
         (§?E§.getItemByName("Button_Prev") as §="#§).x = (§?E§.getItemByName("Button_Prev") as §="#§).x - (_loc3_ + 10);
      }
      
      protected function §[Q§() : void
      {
         if(this.§?!+§)
         {
            this.§?!+§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§+[§.length)
         {
            if(this.§`R§.mClip.contains(this.§+[§[_loc1_]))
            {
               this.§+[§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
               this.§`R§.mClip.removeChild(this.§+[§[_loc1_]);
            }
            _loc1_++;
         }
         this.§+[§ = [];
         while(this.§3""§.mClip.numChildren > 0)
         {
            this.§3""§.mClip.removeChildAt(0);
         }
         this.§"!v§ = [];
      }
      
      protected function §%"6§(param1:MouseEvent) : void
      {
         if(!this.§[!@§)
         {
            this.§[!A§(this.§9!,§[param1.target]);
         }
      }
      
      protected function §9,§(param1:MouseEvent) : void
      {
         if(!this.§[!@§)
         {
            mNextState = §7B§.§'=§;
         }
      }
      
      protected function §[!A§(param1:int, param2:Boolean = false) : void
      {
         this.§[!@§ = true;
         if(param1 > this.§"!v§.length - 1)
         {
            param1 = this.§"!v§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?!Y§ = param1;
         if(this.§?!Y§ > this.§7!+§)
         {
            this.§8W§ = this.§7!+§ + 1;
         }
         else if(this.§?!Y§ < this.§7!+§)
         {
            this.§8W§ = this.§7!+§ - 1;
         }
         var _loc3_:Number = -this.§"!v§[param1].x;
         var _loc4_:Number = this.§"!v§[param1].x + this.§3""§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §;w§;
         if(this.§4i§ != null)
         {
            this.§4i§.stop();
         }
         if(param2)
         {
            this.§3""§.x = _loc3_;
         }
         else
         {
            this.§4i§ = §7!E§.§2=§.§<!C§(this.§3""§,{"x":_loc3_},null,_loc5_,§7!E§.§5!+§);
            this.§4i§.onComplete = this.§1"9§;
         }
         if(param2)
         {
            this.§1"9§();
         }
         else
         {
            this.§4i§.play();
         }
      }
      
      protected function §1"9§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§+[§.length)
         {
            if(_loc1_ == this.§?!Y§)
            {
               this.§+[§[_loc1_].gotoAndStop("Selected");
               (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
               this.§^>§(_loc1_);
            }
            else
            {
               this.§+[§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§[!@§ = false;
         §3!w§.§2I§(§3!w§.§&"&§).§@!M§ = this.§?!Y§;
      }
      
      protected function §^>§(param1:int) : void
      {
         (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).§&!w§.text = §3!w§.§2I§(§3!w§.§&"&§).pageIndexes[param1];
      }
   }
}
