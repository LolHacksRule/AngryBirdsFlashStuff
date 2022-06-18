package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §<!@§.§#c§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §?u§.§9&§;
   import §[V§.§#G§;
   import §[V§.§1;§;
   import §[V§.§2!@§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §<!D§ extends §true§
   {
      
      public static const §4!&§:String = "LevelSelectionState";
      
      protected static const §#!E§:Number = 0.5;
      
      public static var §&!3§:String = "";
       
      
      protected var §%6§:Boolean = false;
      
      protected var §+!"§:§=!'§;
      
      protected var §?!;§:§=!'§;
      
      protected var §+c§:MovieClip;
      
      protected var §'0§:Array;
      
      protected var §%!-§:Array;
      
      protected var §9!3§:int = 0;
      
      protected var §0]§:int = 0;
      
      protected var §]B§:int = 0;
      
      protected var §1!0§:Boolean = false;
      
      protected var §9!,§:§ l§ = null;
      
      protected var §'K§:Dictionary;
      
      protected var §8"§:Array;
      
      protected var §2N§:Array;
      
      protected var §@"§:§9&§;
      
      protected var §'!&§:Number = 0;
      
      public function §<!D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§0!5§();
         while(this.§?!;§.mClip.numChildren > 0)
         {
            this.§?!;§.mClip.removeChildAt(0);
         }
         this.§%!-§ = [];
         this.§'0§ = [];
      }
      
      protected function §0!5§() : void
      {
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelSelection[0]);
         this.§?!;§ = §6!$§.getItemByName("Container_LevelRepeaters") as §=!'§;
         this.§+!"§ = §6!$§.getItemByName("Container_LevelSelection") as §=!'§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?'§.§5!§.clearLevel();
         §?'§.§5!§.§`!?§(false);
         this.§9I§();
         AngryBirdsFP11.§91§();
         if(this.§%!-§.length == 1)
         {
            (§6!$§.getItemByName("Button_Prev") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_Next") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).setVisibility(false);
         }
         else
         {
            (§6!$§.getItemByName("Button_Prev") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_Next") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).setVisibility(true);
         }
         this.§'!&§ = this.§?!;§.x;
         if(§6!$§.stage)
         {
            §6!$§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§3W§);
         }
      }
      
      protected function §3W§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§3z§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§%v§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1A§();
         this.§3[§();
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      protected function §1A§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'0§.length)
         {
            if(-this.§?!;§.x >= this.§%!-§[_loc1_].x && -this.§'!&§ < this.§%!-§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'0§.length)
               {
                  this.§'0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]B§ = _loc1_;
               this.§'0§[_loc1_].gotoAndStop("Selected");
               (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).x = this.§'0§[_loc1_].x;
               this.§5u§(_loc1_);
            }
            if(-this.§?!;§.x <= this.§%!-§[_loc1_].x && -this.§'!&§ > this.§%!-§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'0§.length)
               {
                  this.§'0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]B§ = _loc1_;
               this.§'0§[_loc1_].gotoAndStop("Selected");
               (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).x = this.§'0§[_loc1_].x;
               this.§5u§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§]B§ != this.§9!3§)
         {
            if(this.§9!3§ > this.§]B§)
            {
               this.§0]§ = this.§]B§ + 1;
            }
            else if(this.§9!3§ < this.§]B§)
            {
               this.§0]§ = this.§]B§ - 1;
            }
            else
            {
               this.§0]§ = this.§]B§;
            }
            this.§@"§.§2=§(this.§8"§[this.§0]§].red,this.§8"§[this.§0]§].green,this.§8"§[this.§0]§].blue);
         }
         this.§'!&§ = this.§?!;§.x;
      }
      
      protected function §3[§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!-§.length)
         {
            _loc2_ = this.§?!;§.x + this.§%!-§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§%!-§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§%!-§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§%!-§[_loc1_].mClip.alpha < 1)
            {
               (this.§%!-§[_loc1_] as §#G§).setEnabled(false);
            }
            else
            {
               (this.§%!-§[_loc1_] as §#G§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§6!$§.stage)
         {
            §6!$§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§3W§);
         }
         super.deActivate();
         this.§9!H§();
         (§6!$§.getItemByName("Button_Back") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!P§.§#!§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§9!,§)
         {
            this.§9!,§.stop();
            this.§9!,§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         if(param2.length > 0 && param3 is §2!@§)
         {
            if((param3 as §2!@§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §2!@§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§1!0§)
               {
                  §!P§.§-7§(§!P§.§<!=§(param2.toLowerCase()));
                  mNextState = StateCutScene.§4!&§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §;!>§.§>t§("Menu_Back");
               mNextState = §'!=§.§4!&§;
               break;
            case "NEXT":
               this.§%v§();
               break;
            case "PREV":
               this.§3z§();
               break;
            case "FULLSCREEN_BUTTON":
               §;!>§.§>t§("Menu_Confirm");
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      protected function §%v§() : void
      {
         §;!>§.§>t§("Menu_Confirm");
         if(!this.§1!0§)
         {
            ++this.§9!3§;
            this.§'!>§(this.§9!3§);
         }
      }
      
      protected function §3z§() : void
      {
         §;!>§.§>t§("Menu_Confirm");
         if(!this.§1!0§)
         {
            --this.§9!3§;
            this.§'!>§(this.§9!3§);
         }
      }
      
      public function §9I§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§8"§ = [];
         this.§2N§ = [];
         this.§9!3§ = §!P§.§[]§(§!P§.§>N§).§[y§;
         this.§0]§ = this.§9!3§;
         this.§]B§ = this.§9!3§;
         var _loc2_:§#c§ = §!P§.§[]§(§!P§.§>N§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§-!#§(_loc2_.pageIndexes[_loc3_]);
            this.§8"§.push(_loc2_.§ u§(_loc3_));
            this.§2N§.push(_loc2_.§;4§(_loc3_));
            _loc1_ = this.§-p§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§@"§ = new §9&§(this.§8"§[this.§9!3§].red,this.§8"§[this.§9!3§].green,this.§8"§[this.§9!3§].blue,1);
         §6!$§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@"§);
         if(_loc2_.§^2§)
         {
            _loc6_ = new (_loc5_ = §0v§.§#w§(_loc2_.§^2§))();
            §6!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §6!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§77§)
         {
            _loc8_ = new (_loc7_ = §0v§.§#w§(_loc2_.§77§))();
            §6!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §6!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§6=§();
         if(§&!3§ == StateCutScene.§4!&§)
         {
            §&!3§ = "";
            this.§'!>§(this.§]B§);
         }
         else
         {
            this.§'!>§(this.§9!3§,true);
         }
      }
      
      protected function §-p§(param1:Array, param2:int, param3:Number, param4:§#c§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §0v§.§#w§(this.§2N§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§%F§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§!k§)
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
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§2N§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§#G§;
         (_loc9_ = new §#G§(_loc8_,this.§?!;§,null,null)).§0z§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§?!;§.§2!2§(_loc9_);
         this.§%!-§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §%F§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§8!4§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§<!?§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §6=§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§%!-§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§'K§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%!-§.length)
         {
            _loc1_ = §0v§.§#w§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%!-§.length * _loc2_.width / 2;
            _loc2_.y = (§6!$§.getItemByName("Button_Next") as §1;§).y - _loc2_.height / 2;
            if(_loc4_ == this.§9!3§)
            {
               _loc2_.gotoAndStop("Selected");
               (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).x = _loc2_.x;
               (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).y = _loc2_.y - _loc2_.height;
               this.§5u§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§+!"§.mClip.addChild(_loc2_);
            this.§'K§[_loc2_] = _loc4_;
            this.§'0§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,C§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§%!-§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§6!$§.getItemByName("Button_Next") as §1;§).x = AngryBirdsFP11.screenWidth / 2;
         (§6!$§.getItemByName("Button_Prev") as §1;§).x = AngryBirdsFP11.screenWidth / 2;
         (§6!$§.getItemByName("Button_Next") as §1;§).x = (§6!$§.getItemByName("Button_Next") as §1;§).x + (_loc3_ + 10);
         (§6!$§.getItemByName("Button_Prev") as §1;§).x = (§6!$§.getItemByName("Button_Prev") as §1;§).x - (_loc3_ + 10);
      }
      
      protected function §9!H§() : void
      {
         if(this.§@"§)
         {
            this.§@"§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'0§.length)
         {
            if(this.§+!"§.mClip.contains(this.§'0§[_loc1_]))
            {
               this.§'0§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§,C§);
               this.§+!"§.mClip.removeChild(this.§'0§[_loc1_]);
            }
            _loc1_++;
         }
         this.§'0§ = [];
         while(this.§?!;§.mClip.numChildren > 0)
         {
            this.§?!;§.mClip.removeChildAt(0);
         }
         this.§%!-§ = [];
      }
      
      protected function §,C§(param1:MouseEvent) : void
      {
         if(!this.§1!0§)
         {
            this.§'!>§(this.§'K§[param1.target]);
         }
      }
      
      protected function §[Y§(param1:MouseEvent) : void
      {
         if(!this.§1!0§)
         {
            mNextState = §<!D§.§4!&§;
         }
      }
      
      protected function §'!>§(param1:int, param2:Boolean = false) : void
      {
         this.§1!0§ = true;
         if(param1 > this.§%!-§.length - 1)
         {
            param1 = this.§%!-§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§9!3§ = param1;
         if(this.§9!3§ > this.§]B§)
         {
            this.§0]§ = this.§]B§ + 1;
         }
         else if(this.§9!3§ < this.§]B§)
         {
            this.§0]§ = this.§]B§ - 1;
         }
         var _loc3_:Number = -this.§%!-§[param1].x;
         var _loc4_:Number = this.§%!-§[param1].x + this.§?!;§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#!E§;
         if(this.§9!,§ != null)
         {
            this.§9!,§.stop();
         }
         if(param2)
         {
            this.§?!;§.x = _loc3_;
         }
         else
         {
            this.§9!,§ = §?!7§.§^7§.§^!0§(this.§?!;§,{"x":_loc3_},null,_loc5_,§?!7§.§,u§);
            this.§9!,§.onComplete = this.§-! §;
         }
         if(param2)
         {
            this.§-! §();
         }
         else
         {
            this.§9!,§.play();
         }
      }
      
      protected function §-! §() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'0§.length)
         {
            if(_loc1_ == this.§9!3§)
            {
               this.§'0§[_loc1_].gotoAndStop("Selected");
               (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).x = this.§'0§[_loc1_].x;
               this.§5u§(_loc1_);
            }
            else
            {
               this.§'0§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§1!0§ = false;
         §!P§.§[]§(§!P§.§>N§).§[y§ = this.§9!3§;
      }
      
      protected function §5u§(param1:int) : void
      {
         (§6!$§.getItemByName("TextField_LevelNumberSmall") as §`@§).§66§.text = §!P§.§[]§(§!P§.§>N§).pageIndexes[param1];
      }
   }
}
