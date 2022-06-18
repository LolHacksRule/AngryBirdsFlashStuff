package §@!%§
{
   import § "§.§1!9§;
   import § "§.§8!3§;
   import §"!F§.§^$§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§1U§;
   import §4-§.§>Z§;
   import §4-§.§@<§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §]V§ extends §1!,§
   {
      
      public static const §5%§:String = "LevelSelectionState";
      
      protected static const §0o§:Number = 0.5;
      
      public static var §9`§:String = "";
       
      
      protected var §#!3§:Boolean = false;
      
      protected var §7H§:§'J§;
      
      protected var §;!F§:§'J§;
      
      protected var §9N§:MovieClip;
      
      protected var §?-§:Array;
      
      protected var §@F§:Array;
      
      protected var §&!=§:int = 0;
      
      protected var §8!<§:int = 0;
      
      protected var §4u§:int = 0;
      
      protected var §9!0§:Boolean = false;
      
      protected var §;j§:§1^§ = null;
      
      protected var §&k§:Dictionary;
      
      protected var §=M§:Array;
      
      protected var §>s§:Array;
      
      protected var §2!C§:§^$§;
      
      protected var §8! §:Number = 0;
      
      public function §]V§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&'§();
         while(this.§;!F§.mClip.numChildren > 0)
         {
            this.§;!F§.mClip.removeChildAt(0);
         }
         this.§@F§ = [];
         this.§?-§ = [];
      }
      
      protected function §&'§() : void
      {
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelSelection[0]);
         this.§;!F§ = §`k§.getItemByName("Container_LevelRepeaters") as §'J§;
         this.§7H§ = §`k§.getItemByName("Container_LevelSelection") as §'J§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#!4§.§^Y§.clearLevel();
         §#!4§.§^Y§.§<[§(false);
         this.§9c§();
         AngryBirdsFP11.§7!0§();
         if(this.§@F§.length == 1)
         {
            (§`k§.getItemByName("Button_Prev") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_Next") as §%+§).setVisibility(false);
            (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).setVisibility(false);
         }
         else
         {
            (§`k§.getItemByName("Button_Prev") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_Next") as §%+§).setVisibility(true);
            (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).setVisibility(true);
         }
         this.§8! § = this.§;!F§.x;
         if(§`k§.stage)
         {
            §`k§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§default§);
         }
      }
      
      protected function §default§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§&o§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§5a§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^p§();
         this.§&l§();
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §^p§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?-§.length)
         {
            if(-this.§;!F§.x >= this.§@F§[_loc1_].x && -this.§8! § < this.§@F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?-§.length)
               {
                  this.§?-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4u§ = _loc1_;
               this.§?-§[_loc1_].gotoAndStop("Selected");
               (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).x = this.§?-§[_loc1_].x;
               this.§+!#§(_loc1_);
            }
            if(-this.§;!F§.x <= this.§@F§[_loc1_].x && -this.§8! § > this.§@F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?-§.length)
               {
                  this.§?-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4u§ = _loc1_;
               this.§?-§[_loc1_].gotoAndStop("Selected");
               (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).x = this.§?-§[_loc1_].x;
               this.§+!#§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§4u§ != this.§&!=§)
         {
            if(this.§&!=§ > this.§4u§)
            {
               this.§8!<§ = this.§4u§ + 1;
            }
            else if(this.§&!=§ < this.§4u§)
            {
               this.§8!<§ = this.§4u§ - 1;
            }
            else
            {
               this.§8!<§ = this.§4u§;
            }
            this.§2!C§.§+!;§(this.§=M§[this.§8!<§].red,this.§=M§[this.§8!<§].green,this.§=M§[this.§8!<§].blue);
         }
         this.§8! § = this.§;!F§.x;
      }
      
      protected function §&l§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@F§.length)
         {
            _loc2_ = this.§;!F§.x + this.§@F§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§@F§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§@F§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§@F§[_loc1_].mClip.alpha < 1)
            {
               (this.§@F§[_loc1_] as §1U§).setEnabled(false);
            }
            else
            {
               (this.§@F§[_loc1_] as §1U§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§`k§.stage)
         {
            §`k§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§default§);
         }
         super.deActivate();
         this.§0J§();
         (§`k§.getItemByName("Button_Back") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §8!3§.§>!=§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§;j§)
         {
            this.§;j§.stop();
            this.§;j§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         if(param2.length > 0 && param3 is §@<§)
         {
            if((param3 as §@<§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §@<§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§9!0§)
               {
                  §8!3§.§+f§(§8!3§.§,9§(param2.toLowerCase()));
                  mNextState = StateCutScene.§5%§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §7_§.§4!5§("Menu_Back");
               mNextState = §9d§.§5%§;
               break;
            case "NEXT":
               this.§5a§();
               break;
            case "PREV":
               this.§&o§();
               break;
            case "FULLSCREEN_BUTTON":
               §7_§.§4!5§("Menu_Confirm");
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      protected function §5a§() : void
      {
         §7_§.§4!5§("Menu_Confirm");
         if(!this.§9!0§)
         {
            ++this.§&!=§;
            this.§!c§(this.§&!=§);
         }
      }
      
      protected function §&o§() : void
      {
         §7_§.§4!5§("Menu_Confirm");
         if(!this.§9!0§)
         {
            --this.§&!=§;
            this.§!c§(this.§&!=§);
         }
      }
      
      public function §9c§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§=M§ = [];
         this.§>s§ = [];
         this.§&!=§ = §8!3§.§`!5§(§8!3§.§0! §).§&O§;
         this.§8!<§ = this.§&!=§;
         this.§4u§ = this.§&!=§;
         var _loc2_:§1!9§ = §8!3§.§`!5§(§8!3§.§0! §);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§2!8§(_loc2_.pageIndexes[_loc3_]);
            this.§=M§.push(_loc2_.§'!9§(_loc3_));
            this.§>s§.push(_loc2_.§]J§(_loc3_));
            _loc1_ = this.§ k§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§2!C§ = new §^$§(this.§=M§[this.§&!=§].red,this.§=M§[this.§&!=§].green,this.§=M§[this.§&!=§].blue,1);
         §`k§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§2!C§);
         if(_loc2_.§2!4§)
         {
            _loc6_ = new (_loc5_ = § 3§.§+i§(_loc2_.§2!4§))();
            §`k§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §`k§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§0!B§)
         {
            _loc8_ = new (_loc7_ = § 3§.§+i§(_loc2_.§0!B§))();
            §`k§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §`k§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§7!7§();
         if(§9`§ == StateCutScene.§5%§)
         {
            §9`§ = "";
            this.§!c§(this.§4u§);
         }
         else
         {
            this.§!c§(this.§&!=§,true);
         }
      }
      
      protected function § k§(param1:Array, param2:int, param3:Number, param4:§1!9§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = § 3§.§+i§(this.§>s§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§?[§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§,!%§)
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
         _loc8_.@button = this.§>s§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§1U§;
         (_loc9_ = new §1U§(_loc8_,this.§;!F§,null,null)).§;^§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§;!F§.§?v§(_loc9_);
         this.§@F§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §?[§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§-@§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§9!"§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §7!7§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§@F§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§&k§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§@F§.length)
         {
            _loc1_ = § 3§.§+i§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§@F§.length * _loc2_.width / 2;
            _loc2_.y = (§`k§.getItemByName("Button_Next") as §%+§).y - _loc2_.height / 2;
            if(_loc4_ == this.§&!=§)
            {
               _loc2_.gotoAndStop("Selected");
               (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).x = _loc2_.x;
               (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).y = _loc2_.y - _loc2_.height;
               this.§+!#§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§7H§.mClip.addChild(_loc2_);
            this.§&k§[_loc2_] = _loc4_;
            this.§?-§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!=§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§@F§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`k§.getItemByName("Button_Next") as §%+§).x = AngryBirdsFP11.screenWidth / 2;
         (§`k§.getItemByName("Button_Prev") as §%+§).x = AngryBirdsFP11.screenWidth / 2;
         (§`k§.getItemByName("Button_Next") as §%+§).x = (§`k§.getItemByName("Button_Next") as §%+§).x + (_loc3_ + 10);
         (§`k§.getItemByName("Button_Prev") as §%+§).x = (§`k§.getItemByName("Button_Prev") as §%+§).x - (_loc3_ + 10);
      }
      
      protected function §0J§() : void
      {
         if(this.§2!C§)
         {
            this.§2!C§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§?-§.length)
         {
            if(this.§7H§.mClip.contains(this.§?-§[_loc1_]))
            {
               this.§?-§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§!=§);
               this.§7H§.mClip.removeChild(this.§?-§[_loc1_]);
            }
            _loc1_++;
         }
         this.§?-§ = [];
         while(this.§;!F§.mClip.numChildren > 0)
         {
            this.§;!F§.mClip.removeChildAt(0);
         }
         this.§@F§ = [];
      }
      
      protected function §!=§(param1:MouseEvent) : void
      {
         if(!this.§9!0§)
         {
            this.§!c§(this.§&k§[param1.target]);
         }
      }
      
      protected function §;1§(param1:MouseEvent) : void
      {
         if(!this.§9!0§)
         {
            mNextState = §]V§.§5%§;
         }
      }
      
      protected function §!c§(param1:int, param2:Boolean = false) : void
      {
         this.§9!0§ = true;
         if(param1 > this.§@F§.length - 1)
         {
            param1 = this.§@F§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§&!=§ = param1;
         if(this.§&!=§ > this.§4u§)
         {
            this.§8!<§ = this.§4u§ + 1;
         }
         else if(this.§&!=§ < this.§4u§)
         {
            this.§8!<§ = this.§4u§ - 1;
         }
         var _loc3_:Number = -this.§@F§[param1].x;
         var _loc4_:Number = this.§@F§[param1].x + this.§;!F§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §0o§;
         if(this.§;j§ != null)
         {
            this.§;j§.stop();
         }
         if(param2)
         {
            this.§;!F§.x = _loc3_;
         }
         else
         {
            this.§;j§ = §,G§.§+S§.§1u§(this.§;!F§,{"x":_loc3_},null,_loc5_,§,G§.§ each§);
            this.§;j§.onComplete = this.§=!A§;
         }
         if(param2)
         {
            this.§=!A§();
         }
         else
         {
            this.§;j§.play();
         }
      }
      
      protected function §=!A§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?-§.length)
         {
            if(_loc1_ == this.§&!=§)
            {
               this.§?-§[_loc1_].gotoAndStop("Selected");
               (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).x = this.§?-§[_loc1_].x;
               this.§+!#§(_loc1_);
            }
            else
            {
               this.§?-§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§9!0§ = false;
         §8!3§.§`!5§(§8!3§.§0! §).§&O§ = this.§&!=§;
      }
      
      protected function §+!#§(param1:int) : void
      {
         (§`k§.getItemByName("TextField_LevelNumberSmall") as §>Z§).§23§.text = §8!3§.§`!5§(§8!3§.§0! §).pageIndexes[param1];
      }
   }
}
