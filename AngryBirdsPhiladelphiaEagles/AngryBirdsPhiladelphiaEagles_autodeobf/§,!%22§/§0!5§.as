package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§"]§;
   import §"U§.§&!M§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §0!5§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelSelectionState";
      
      protected static const §3!J§:Number = 0.5;
      
      public static var §=l§:String = "";
       
      
      protected var §"!$§:Boolean = false;
      
      protected var §+q§:§[Q§;
      
      protected var §`1§:§[Q§;
      
      protected var §"4§:MovieClip;
      
      protected var §'`§:Array;
      
      protected var §1+§:Array;
      
      protected var §?!<§:int = 0;
      
      protected var §%!6§:int = 0;
      
      protected var §,8§:int = 0;
      
      protected var §,%§:Boolean = false;
      
      protected var §;;§:§[!9§ = null;
      
      protected var §3!?§:Dictionary;
      
      protected var §#x§:Array;
      
      protected var §]C§:Array;
      
      protected var §!>§:§-#§;
      
      protected var §9!!§:Number = 0;
      
      public function §0!5§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§8e§();
         while(this.§`1§.mClip.numChildren > 0)
         {
            this.§`1§.mClip.removeChildAt(0);
         }
         this.§1+§ = [];
         this.§'`§ = [];
      }
      
      protected function §8e§() : void
      {
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelSelection[0]);
         this.§`1§ = §0q§.getItemByName("Container_LevelRepeaters") as §[Q§;
         this.§+q§ = §0q§.getItemByName("Container_LevelSelection") as §[Q§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#! §.§`'§.clearLevel();
         §#! §.§`'§.§^!6§(false);
         this.§2!%§();
         this.§[5§();
         if(this.§1+§.length == 1)
         {
            (§0q§.getItemByName("Button_Prev") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_Next") as §^'§).setVisibility(false);
            (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).setVisibility(false);
         }
         else
         {
            (§0q§.getItemByName("Button_Prev") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_Next") as §^'§).setVisibility(true);
            (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).setVisibility(true);
         }
         this.§9!!§ = this.§`1§.x;
         if(§0q§.stage)
         {
            §0q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§]+§);
         }
      }
      
      protected function §[5§() : void
      {
         AngryBirdsFP11.§[5§();
      }
      
      protected function §]+§(param1:KeyboardEvent) : void
      {
         if(this.§1+§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§1!1§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§->§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-S§();
         this.§0<§();
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      protected function §-S§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'`§.length)
         {
            if(-this.§`1§.x >= this.§1+§[_loc1_].x && -this.§9!!§ < this.§1+§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'`§.length)
               {
                  this.§'`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,8§ = _loc1_;
               this.§'`§[_loc1_].gotoAndStop("Selected");
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
               this.§5!8§(_loc1_);
            }
            if(-this.§`1§.x <= this.§1+§[_loc1_].x && -this.§9!!§ > this.§1+§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'`§.length)
               {
                  this.§'`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,8§ = _loc1_;
               this.§'`§[_loc1_].gotoAndStop("Selected");
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
               this.§5!8§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§,8§ != this.§?!<§)
         {
            if(this.§?!<§ > this.§,8§)
            {
               this.§%!6§ = this.§,8§ + 1;
            }
            else if(this.§?!<§ < this.§,8§)
            {
               this.§%!6§ = this.§,8§ - 1;
            }
            else
            {
               this.§%!6§ = this.§,8§;
            }
            if(this.§#x§[this.§%!6§])
            {
               this.§!>§.§ !,§(this.§#x§[this.§%!6§].red,this.§#x§[this.§%!6§].green,this.§#x§[this.§%!6§].blue);
            }
         }
         this.§9!!§ = this.§`1§.x;
      }
      
      protected function §0<§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1+§.length)
         {
            _loc2_ = this.§`1§.x + this.§1+§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§1+§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§1+§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§1+§[_loc1_].mClip.alpha < 1)
            {
               (this.§1+§[_loc1_] as §var §).setEnabled(false);
            }
            else
            {
               (this.§1+§[_loc1_] as §var §).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§0q§.stage)
         {
            §0q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]+§);
         }
         super.deActivate();
         this.§>!M§();
         (§0q§.getItemByName("Button_Back") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`!K§.§0r§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§;;§)
         {
            this.§;;§.stop();
            this.§;;§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         if(param2.length > 0 && param3 is §&!M§)
         {
            if((param3 as §&!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §&!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§,%§)
               {
                  §`!K§.§!e§(§`!K§.§]!F§(param2.toLowerCase()));
                  mNextState = StateCutScene.§-A§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §[!7§.playSound("Menu_Back");
               mNextState = §@D§.§-A§;
               break;
            case "NEXT":
               this.§->§();
               break;
            case "PREV":
               this.§1!1§();
               break;
            case "FULLSCREEN_BUTTON":
               §[!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      protected function §->§() : void
      {
         §[!7§.playSound("Menu_Confirm");
         if(!this.§,%§)
         {
            ++this.§?!<§;
            this.§[!%§(this.§?!<§);
         }
      }
      
      protected function §1!1§() : void
      {
         §[!7§.playSound("Menu_Confirm");
         if(!this.§,%§)
         {
            --this.§?!<§;
            this.§[!%§(this.§?!<§);
         }
      }
      
      public function §2!%§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§#x§ = [];
         this.§]C§ = [];
         this.§?!<§ = §`!K§.§5!<§(§`!K§.§%;§).§9!F§;
         this.§%!6§ = this.§?!<§;
         this.§,8§ = this.§?!<§;
         var _loc2_:§7!K§ = §`!K§.§5!<§(§`!K§.§%;§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§0t§(_loc2_.pageIndexes[_loc3_]);
            this.§#x§.push(_loc2_.§#!N§(_loc3_));
            this.§]C§.push(_loc2_.§-7§(_loc3_));
            _loc1_ = this.§0!N§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§!>§ = new §-#§(this.§#x§[this.§?!<§].red,this.§#x§[this.§?!<§].green,this.§#x§[this.§?!<§].blue,1);
         §0q§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§!>§);
         if(_loc2_.§9`§)
         {
            _loc6_ = new (_loc5_ = §[!D§.§8!N§(_loc2_.§9`§))();
            §0q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §0q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§@<§)
         {
            _loc8_ = new (_loc7_ = §[!D§.§8!N§(_loc2_.§@<§))();
            §0q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §0q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§@[§();
         if(§=l§ == StateCutScene.§-A§)
         {
            §=l§ = "";
            this.§[!%§(this.§,8§);
         }
         else
         {
            this.§[!%§(this.§?!<§,true);
         }
      }
      
      protected function §0!N§(param1:Array, param2:int, param3:Number, param4:§7!K§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §[!D§.§8!N§(this.§]C§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§`I§.isLevelOpen(_loc10_);
            _loc12_ = this.§1!E§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§^!E§)
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
         _loc8_.@button = this.§]C§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§"]§;
         (_loc9_ = new §"]§(_loc8_,this.§`1§,null,null)).§90§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§`1§.addComponent(_loc9_);
         this.§1+§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§3!<§);
      }
      
      protected function §1!E§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§`I§.§`!C§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§`I§.§7j§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §@[§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§1+§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§3!?§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§1+§.length)
         {
            _loc1_ = §[!D§.§8!N§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§3!<§ / 2 + _loc3_ - this.§1+§.length * _loc2_.width / 2;
            _loc2_.y = (§0q§.getItemByName("Button_Next") as §^'§).y - _loc2_.height / 2;
            if(_loc4_ == this.§?!<§)
            {
               _loc2_.gotoAndStop("Selected");
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = _loc2_.x;
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).y = _loc2_.y - _loc2_.height;
               this.§5!8§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§+q§.mClip.addChild(_loc2_);
            this.§3!?§[_loc2_] = _loc4_;
            this.§'`§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4s§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§1+§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§0q§.getItemByName("Button_Next") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
         (§0q§.getItemByName("Button_Prev") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
         (§0q§.getItemByName("Button_Next") as §^'§).x = (§0q§.getItemByName("Button_Next") as §^'§).x + (_loc3_ + 10);
         (§0q§.getItemByName("Button_Prev") as §^'§).x = (§0q§.getItemByName("Button_Prev") as §^'§).x - (_loc3_ + 10);
      }
      
      protected function §>!M§() : void
      {
         if(this.§!>§)
         {
            this.§!>§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'`§.length)
         {
            if(this.§+q§.mClip.contains(this.§'`§[_loc1_]))
            {
               this.§'`§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4s§);
               this.§+q§.mClip.removeChild(this.§'`§[_loc1_]);
            }
            _loc1_++;
         }
         this.§'`§ = [];
         while(this.§`1§.mClip.numChildren > 0)
         {
            this.§`1§.mClip.removeChildAt(0);
         }
         this.§1+§ = [];
      }
      
      protected function §4s§(param1:MouseEvent) : void
      {
         if(!this.§,%§)
         {
            this.§[!%§(this.§3!?§[param1.target]);
         }
      }
      
      protected function §%!$§(param1:MouseEvent) : void
      {
         if(!this.§,%§)
         {
            mNextState = §0!5§.§-A§;
         }
      }
      
      protected function §[!%§(param1:int, param2:Boolean = false) : void
      {
         this.§,%§ = true;
         if(param1 > this.§1+§.length - 1)
         {
            param1 = this.§1+§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?!<§ = param1;
         if(this.§?!<§ > this.§,8§)
         {
            this.§%!6§ = this.§,8§ + 1;
         }
         else if(this.§?!<§ < this.§,8§)
         {
            this.§%!6§ = this.§,8§ - 1;
         }
         var _loc3_:Number = -this.§1+§[param1].x;
         var _loc4_:Number = this.§1+§[param1].x + this.§`1§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §3!J§;
         if(this.§;;§ != null)
         {
            this.§;;§.stop();
         }
         if(param2)
         {
            this.§`1§.x = _loc3_;
         }
         else
         {
            this.§;;§ = §3C§.§>o§.§<t§(this.§`1§,{"x":_loc3_},null,_loc5_,§3C§.§,k§);
            this.§;;§.onComplete = this.§>Z§;
         }
         if(param2)
         {
            this.§>Z§();
         }
         else
         {
            this.§;;§.play();
         }
      }
      
      protected function §>Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'`§.length)
         {
            if(_loc1_ == this.§?!<§)
            {
               this.§'`§[_loc1_].gotoAndStop("Selected");
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
               this.§5!8§(_loc1_);
            }
            else
            {
               this.§'`§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,%§ = false;
         §`!K§.§5!<§(§`!K§.§%;§).§9!F§ = this.§?!<§;
      }
      
      protected function §5!8§(param1:int) : void
      {
         (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).§!!@§.text = §`!K§.§5!<§(§`!K§.§%;§).pageIndexes[param1];
      }
   }
}
