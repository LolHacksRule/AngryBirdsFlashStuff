package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§0!I§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§]q§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!@§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelSelectionState";
      
      protected static const §<m§:Number = 0.5;
      
      public static var §]t§:String = "";
       
      
      protected var §5!5§:Boolean = false;
      
      protected var §4=§:§4!=§;
      
      protected var §4!@§:§4!=§;
      
      protected var §1[§:MovieClip;
      
      protected var §'N§:Array;
      
      protected var §[!1§:Array;
      
      protected var §,r§:int = 0;
      
      protected var §6M§:int = 0;
      
      protected var §1x§:int = 0;
      
      protected var §3t§:Boolean = false;
      
      protected var §8!K§:§ !=§ = null;
      
      protected var §;O§:Dictionary;
      
      protected var §0#§:Array;
      
      protected var §-W§:Array;
      
      protected var §+f§:§4V§;
      
      protected var §0]§:Number = 0;
      
      public function §6!@§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!>§();
         while(this.§4!@§.mClip.numChildren > 0)
         {
            this.§4!@§.mClip.removeChildAt(0);
         }
         this.§[!1§ = [];
         this.§'N§ = [];
      }
      
      protected function §!!>§() : void
      {
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelSelection[0]);
         this.§4!@§ = §]F§.getItemByName("Container_LevelRepeaters") as §4!=§;
         this.§4=§ = §]F§.getItemByName("Container_LevelSelection") as §4!=§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=w§.§ o§.clearLevel();
         §=w§.§ o§.§7!E§(false);
         this.§-F§();
         this.§ x§();
         if(this.§[!1§.length == 1)
         {
            (§]F§.getItemByName("Button_Prev") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_Next") as §7-§).setVisibility(false);
            (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).setVisibility(false);
         }
         else
         {
            (§]F§.getItemByName("Button_Prev") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_Next") as §7-§).setVisibility(true);
            (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).setVisibility(true);
         }
         this.§0]§ = this.§4!@§.x;
         if(§]F§.stage)
         {
            §]F§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§7!8§);
         }
      }
      
      protected function § x§() : void
      {
         AngryBirdsFP11.§ x§();
      }
      
      protected function §7!8§(param1:KeyboardEvent) : void
      {
         if(this.§[!1§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§&`§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§;`§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-U§();
         this.§7]§();
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      protected function §-U§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'N§.length)
         {
            if(-this.§4!@§.x >= this.§[!1§[_loc1_].x && -this.§0]§ < this.§[!1§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'N§.length)
               {
                  this.§'N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1x§ = _loc1_;
               this.§'N§[_loc1_].gotoAndStop("Selected");
               (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
               this.§,!D§(_loc1_);
            }
            if(-this.§4!@§.x <= this.§[!1§[_loc1_].x && -this.§0]§ > this.§[!1§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'N§.length)
               {
                  this.§'N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1x§ = _loc1_;
               this.§'N§[_loc1_].gotoAndStop("Selected");
               (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
               this.§,!D§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§1x§ != this.§,r§)
         {
            if(this.§,r§ > this.§1x§)
            {
               this.§6M§ = this.§1x§ + 1;
            }
            else if(this.§,r§ < this.§1x§)
            {
               this.§6M§ = this.§1x§ - 1;
            }
            else
            {
               this.§6M§ = this.§1x§;
            }
            if(this.§0#§[this.§6M§])
            {
               this.§+f§.§@!?§(this.§0#§[this.§6M§].red,this.§0#§[this.§6M§].green,this.§0#§[this.§6M§].blue);
            }
         }
         this.§0]§ = this.§4!@§.x;
      }
      
      protected function §7]§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!1§.length)
         {
            _loc2_ = this.§4!@§.x + this.§[!1§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§[!1§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§[!1§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§[!1§[_loc1_].mClip.alpha < 1)
            {
               (this.§[!1§[_loc1_] as §'!,§).setEnabled(false);
            }
            else
            {
               (this.§[!1§[_loc1_] as §'!,§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§]F§.stage)
         {
            §]F§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§7!8§);
         }
         super.deActivate();
         this.§+3§();
         (§]F§.getItemByName("Button_Back") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[4§.§ !7§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§8!K§)
         {
            this.§8!K§.stop();
            this.§8!K§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         if(param2.length > 0 && param3 is §0!I§)
         {
            if((param3 as §0!I§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §0!I§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§3t§)
               {
                  §[4§.§]a§(§[4§.§![§(param2.toLowerCase()));
                  mNextState = StateCutScene.§>9§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §,!F§.§;v§("Menu_Back");
               mNextState = §for §.§>9§;
               break;
            case "NEXT":
               this.§;`§();
               break;
            case "PREV":
               this.§&`§();
               break;
            case "FULLSCREEN_BUTTON":
               §,!F§.§;v§("Menu_Confirm");
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      protected function §;`§() : void
      {
         §,!F§.§;v§("Menu_Confirm");
         if(!this.§3t§)
         {
            ++this.§,r§;
            this.§%H§(this.§,r§);
         }
      }
      
      protected function §&`§() : void
      {
         §,!F§.§;v§("Menu_Confirm");
         if(!this.§3t§)
         {
            --this.§,r§;
            this.§%H§(this.§,r§);
         }
      }
      
      public function §-F§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§0#§ = [];
         this.§-W§ = [];
         this.§,r§ = §[4§.§2A§(§[4§.§ m§).§>!=§;
         this.§6M§ = this.§,r§;
         this.§1x§ = this.§,r§;
         var _loc2_:§2n§ = §[4§.§2A§(§[4§.§ m§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§1M§(_loc2_.pageIndexes[_loc3_]);
            this.§0#§.push(_loc2_.§7=§(_loc3_));
            this.§-W§.push(_loc2_.§"Q§(_loc3_));
            _loc1_ = this.§0!"§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§+f§ = new §4V§(this.§0#§[this.§,r§].red,this.§0#§[this.§,r§].green,this.§0#§[this.§,r§].blue,1);
         §]F§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§+f§);
         if(_loc2_.§-!'§)
         {
            _loc6_ = new (_loc5_ = §]!>§.§8!@§(_loc2_.§-!'§))();
            §]F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §]F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§6!>§)
         {
            _loc8_ = new (_loc7_ = §]!>§.§8!@§(_loc2_.§6!>§))();
            §]F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §]F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§6c§();
         if(§]t§ == StateCutScene.§>9§)
         {
            §]t§ = "";
            this.§%H§(this.§1x§);
         }
         else
         {
            this.§%H§(this.§,r§,true);
         }
      }
      
      protected function §0!"§(param1:Array, param2:int, param3:Number, param4:§2n§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §]!>§.§8!@§(this.§-W§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§=P§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§%Z§)
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
         _loc8_.@button = this.§-W§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§]q§;
         (_loc9_ = new §]q§(_loc8_,this.§4!@§,null,null)).§=i§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§4!@§.§9!@§(_loc9_);
         this.§[!1§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §=P§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§3I§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§%i§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §6c§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§[!1§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§;O§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§[!1§.length)
         {
            _loc1_ = §]!>§.§8!@§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§[!1§.length * _loc2_.width / 2;
            _loc2_.y = (§]F§.getItemByName("Button_Next") as §7-§).y - _loc2_.height / 2;
            if(_loc4_ == this.§,r§)
            {
               _loc2_.gotoAndStop("Selected");
               (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = _loc2_.x;
               (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).y = _loc2_.y - _loc2_.height;
               this.§,!D§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§4=§.mClip.addChild(_loc2_);
            this.§;O§[_loc2_] = _loc4_;
            this.§'N§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§[!1§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§]F§.getItemByName("Button_Next") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
         (§]F§.getItemByName("Button_Prev") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
         (§]F§.getItemByName("Button_Next") as §7-§).x = (§]F§.getItemByName("Button_Next") as §7-§).x + (_loc3_ + 10);
         (§]F§.getItemByName("Button_Prev") as §7-§).x = (§]F§.getItemByName("Button_Prev") as §7-§).x - (_loc3_ + 10);
      }
      
      protected function §+3§() : void
      {
         if(this.§+f§)
         {
            this.§+f§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'N§.length)
         {
            if(this.§4=§.mClip.contains(this.§'N§[_loc1_]))
            {
               this.§'N§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
               this.§4=§.mClip.removeChild(this.§'N§[_loc1_]);
            }
            _loc1_++;
         }
         this.§'N§ = [];
         while(this.§4!@§.mClip.numChildren > 0)
         {
            this.§4!@§.mClip.removeChildAt(0);
         }
         this.§[!1§ = [];
      }
      
      protected function §80§(param1:MouseEvent) : void
      {
         if(!this.§3t§)
         {
            this.§%H§(this.§;O§[param1.target]);
         }
      }
      
      protected function §'B§(param1:MouseEvent) : void
      {
         if(!this.§3t§)
         {
            mNextState = §6!@§.§>9§;
         }
      }
      
      protected function §%H§(param1:int, param2:Boolean = false) : void
      {
         this.§3t§ = true;
         if(param1 > this.§[!1§.length - 1)
         {
            param1 = this.§[!1§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§,r§ = param1;
         if(this.§,r§ > this.§1x§)
         {
            this.§6M§ = this.§1x§ + 1;
         }
         else if(this.§,r§ < this.§1x§)
         {
            this.§6M§ = this.§1x§ - 1;
         }
         var _loc3_:Number = -this.§[!1§[param1].x;
         var _loc4_:Number = this.§[!1§[param1].x + this.§4!@§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §<m§;
         if(this.§8!K§ != null)
         {
            this.§8!K§.stop();
         }
         if(param2)
         {
            this.§4!@§.x = _loc3_;
         }
         else
         {
            this.§8!K§ = §@7§.§@6§.§3!%§(this.§4!@§,{"x":_loc3_},null,_loc5_,§@7§.§[^§);
            this.§8!K§.onComplete = this.§&!2§;
         }
         if(param2)
         {
            this.§&!2§();
         }
         else
         {
            this.§8!K§.play();
         }
      }
      
      protected function §&!2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'N§.length)
         {
            if(_loc1_ == this.§,r§)
            {
               this.§'N§[_loc1_].gotoAndStop("Selected");
               (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
               this.§,!D§(_loc1_);
            }
            else
            {
               this.§'N§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§3t§ = false;
         §[4§.§2A§(§[4§.§ m§).§>!=§ = this.§,r§;
      }
      
      protected function §,!D§(param1:int) : void
      {
         (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).§@w§.text = §[4§.§2A§(§[4§.§ m§).pageIndexes[param1];
      }
   }
}
