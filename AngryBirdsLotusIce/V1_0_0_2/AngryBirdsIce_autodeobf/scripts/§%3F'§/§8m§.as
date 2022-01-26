package §?'§
{
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§>!>§;
   import §%S§.§]r§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §2U§.§'0§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;f§.§9y§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import §in§.§%K§;
   import §in§.§9c§;
   
   public class §8m§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelSelectionState";
      
      protected static const §>!B§:Number = 0.5;
      
      public static var §5z§:String = "";
       
      
      protected var §=x§:Boolean = false;
      
      protected var §[!1§:§,1§;
      
      protected var § !$§:§,1§;
      
      protected var §?>§:MovieClip;
      
      protected var §=;§:Array;
      
      protected var §%!,§:Array;
      
      protected var §0!5§:int = 0;
      
      protected var §[k§:int = 0;
      
      protected var §?§:int = 0;
      
      protected var §=p§:Boolean = false;
      
      protected var §3g§:§]G§ = null;
      
      protected var §`!8§:Dictionary;
      
      protected var §9N§:Array;
      
      protected var §?!D§:Array;
      
      protected var §30§:§'0§;
      
      protected var §#A§:Number = 0;
      
      public function §8m§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!E§();
         while(this.§ !$§.mClip.numChildren > 0)
         {
            this.§ !$§.mClip.removeChildAt(0);
         }
         this.§%!,§ = [];
         this.§=;§ = [];
      }
      
      protected function §!!E§() : void
      {
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelSelection[0]);
         this.§ !$§ = §<o§.getItemByName("Container_LevelRepeaters") as §,1§;
         this.§[!1§ = §<o§.getItemByName("Container_LevelSelection") as §,1§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8[§.§import§.clearLevel();
         §8[§.§import§.§5q§(false);
         this.§-!F§();
         AngryBirdsFP11.§!!9§();
         if(this.§%!,§.length == 1)
         {
            (§<o§.getItemByName("Button_Prev") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_Next") as §%X§).setVisibility(false);
            (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).setVisibility(false);
         }
         else
         {
            (§<o§.getItemByName("Button_Prev") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_Next") as §%X§).setVisibility(true);
            (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).setVisibility(true);
         }
         this.§#A§ = this.§ !$§.x;
         if(§<o§.stage)
         {
            §<o§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8Q§);
         }
      }
      
      protected function §8Q§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§#!?§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§1!,§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§>j§();
         this.§`=§();
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      protected function §>j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=;§.length)
         {
            if(-this.§ !$§.x >= this.§%!,§[_loc1_].x && -this.§#A§ < this.§%!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=;§.length)
               {
                  this.§=;§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?§ = _loc1_;
               this.§=;§[_loc1_].gotoAndStop("Selected");
               (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).x = this.§=;§[_loc1_].x;
               this.§^R§(_loc1_);
            }
            if(-this.§ !$§.x <= this.§%!,§[_loc1_].x && -this.§#A§ > this.§%!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=;§.length)
               {
                  this.§=;§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?§ = _loc1_;
               this.§=;§[_loc1_].gotoAndStop("Selected");
               (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).x = this.§=;§[_loc1_].x;
               this.§^R§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§?§ != this.§0!5§)
         {
            if(this.§0!5§ > this.§?§)
            {
               this.§[k§ = this.§?§ + 1;
            }
            else if(this.§0!5§ < this.§?§)
            {
               this.§[k§ = this.§?§ - 1;
            }
            else
            {
               this.§[k§ = this.§?§;
            }
            this.§30§.get(this.§9N§[this.§[k§].red,this.§9N§[this.§[k§].green,this.§9N§[this.§[k§].blue);
         }
         this.§#A§ = this.§ !$§.x;
      }
      
      protected function §`=§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!,§.length)
         {
            _loc2_ = this.§ !$§.x + this.§%!,§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§%!,§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§%!,§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§%!,§[_loc1_].mClip.alpha < 1)
            {
               (this.§%!,§[_loc1_] as §]r§).setEnabled(false);
            }
            else
            {
               (this.§%!,§[_loc1_] as §]r§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§<o§.stage)
         {
            §<o§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8Q§);
         }
         super.deActivate();
         this.§=!9§();
         (§<o§.getItemByName("Button_Back") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&#§.§=Q§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§3g§)
         {
            this.§3g§.stop();
            this.§3g§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         if(param2.length > 0 && param3 is §>!>§)
         {
            if((param3 as §>!>§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §>!>§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§=p§)
               {
                  §&#§.§9,§(§&#§.§9j§(param2.toLowerCase()));
                  mNextState = StateCutScene.§`%§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §2;§.playSound("Menu_Back");
               mNextState = §1w§.§`%§;
               break;
            case "NEXT":
               this.§1!,§();
               break;
            case "PREV":
               this.§#!?§();
               break;
            case "FULLSCREEN_BUTTON":
               §2;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      protected function §1!,§() : void
      {
         §2;§.playSound("Menu_Confirm");
         if(!this.§=p§)
         {
            ++this.§0!5§;
            this.§@+§(this.§0!5§);
         }
      }
      
      protected function §#!?§() : void
      {
         §2;§.playSound("Menu_Confirm");
         if(!this.§=p§)
         {
            --this.§0!5§;
            this.§@+§(this.§0!5§);
         }
      }
      
      public function §-!F§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§9N§ = [];
         this.§?!D§ = [];
         this.§0!5§ = §&#§.§0+§(§&#§.§3!@§).§8w§;
         this.§[k§ = this.§0!5§;
         this.§?§ = this.§0!5§;
         var _loc2_:§9y§ = §&#§.§0+§(§&#§.§3!@§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§?!0§(_loc2_.pageIndexes[_loc3_]);
            this.§9N§.push(_loc2_.§'<§(_loc3_));
            this.§?!D§.push(_loc2_.§;R§(_loc3_));
            _loc1_ = this.§'f§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§30§ = new §'0§(this.§9N§[this.§0!5§].red,this.§9N§[this.§0!5§].green,this.§9N§[this.§0!5§].blue,1);
         §<o§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§30§);
         if(_loc2_.§&C§)
         {
            _loc6_ = new (_loc5_ = §-!1§.§-T§(_loc2_.§&C§))();
            §<o§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §<o§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§!F§)
         {
            _loc8_ = new (_loc7_ = §-!1§.§-T§(_loc2_.§!F§))();
            §<o§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §<o§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§0>§();
         if(§5z§ == StateCutScene.§`%§)
         {
            §5z§ = "";
            this.§@+§(this.§?§);
         }
         else
         {
            this.§@+§(this.§0!5§,true);
         }
      }
      
      protected function §'f§(param1:Array, param2:int, param3:Number, param4:§9y§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §-!1§.§-T§(this.§?!D§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§[l§.isLevelOpen(_loc10_);
            _loc12_ = this.§^A§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§<! §)
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
         _loc8_.@button = this.§?!D§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§]r§;
         (_loc9_ = new §]r§(_loc8_,this.§ !$§,null,null)).§`!<§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§ !$§.§&>§(_loc9_);
         this.§%!,§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §^A§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§[l§.§7!;§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§[l§.§9!F§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §0>§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§%!,§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§`!8§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%!,§.length)
         {
            _loc1_ = §-!1§.§-T§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%!,§.length * _loc2_.width / 2;
            _loc2_.y = (§<o§.getItemByName("Button_Next") as §%X§).y - _loc2_.height / 2;
            if(_loc4_ == this.§0!5§)
            {
               _loc2_.gotoAndStop("Selected");
               (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).x = _loc2_.x;
               (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).y = _loc2_.y - _loc2_.height;
               this.§^R§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§[!1§.mClip.addChild(_loc2_);
            this.§`!8§[_loc2_] = _loc4_;
            this.§=;§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!'§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§%!,§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§<o§.getItemByName("Button_Next") as §%X§).x = AngryBirdsFP11.screenWidth / 2;
         (§<o§.getItemByName("Button_Prev") as §%X§).x = AngryBirdsFP11.screenWidth / 2;
         (§<o§.getItemByName("Button_Next") as §%X§).x = (§<o§.getItemByName("Button_Next") as §%X§).x + (_loc3_ + 10);
         (§<o§.getItemByName("Button_Prev") as §%X§).x = (§<o§.getItemByName("Button_Prev") as §%X§).x - (_loc3_ + 10);
      }
      
      protected function §=!9§() : void
      {
         if(this.§30§)
         {
            this.§30§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§=;§.length)
         {
            if(this.§[!1§.mClip.contains(this.§=;§[_loc1_]))
            {
               this.§=;§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!'§);
               this.§[!1§.mClip.removeChild(this.§=;§[_loc1_]);
            }
            _loc1_++;
         }
         this.§=;§ = [];
         while(this.§ !$§.mClip.numChildren > 0)
         {
            this.§ !$§.mClip.removeChildAt(0);
         }
         this.§%!,§ = [];
      }
      
      protected function §-!'§(param1:MouseEvent) : void
      {
         if(!this.§=p§)
         {
            this.§@+§(this.§`!8§[param1.target]);
         }
      }
      
      protected function §'n§(param1:MouseEvent) : void
      {
         if(!this.§=p§)
         {
            mNextState = §8m§.§`%§;
         }
      }
      
      protected function §@+§(param1:int, param2:Boolean = false) : void
      {
         this.§=p§ = true;
         if(param1 > this.§%!,§.length - 1)
         {
            param1 = this.§%!,§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§0!5§ = param1;
         if(this.§0!5§ > this.§?§)
         {
            this.§[k§ = this.§?§ + 1;
         }
         else if(this.§0!5§ < this.§?§)
         {
            this.§[k§ = this.§?§ - 1;
         }
         var _loc3_:Number = -this.§%!,§[param1].x;
         var _loc4_:Number = this.§%!,§[param1].x + this.§ !$§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §>!B§;
         if(this.§3g§ != null)
         {
            this.§3g§.stop();
         }
         if(param2)
         {
            this.§ !$§.x = _loc3_;
         }
         else
         {
            this.§3g§ = §!j§.§5!B§.§+I§(this.§ !$§,{"x":_loc3_},null,_loc5_,§!j§.§?!F§);
            this.§3g§.onComplete = this.§?D§;
         }
         if(param2)
         {
            this.§?D§();
         }
         else
         {
            this.§3g§.play();
         }
      }
      
      protected function §?D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=;§.length)
         {
            if(_loc1_ == this.§0!5§)
            {
               this.§=;§[_loc1_].gotoAndStop("Selected");
               (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).x = this.§=;§[_loc1_].x;
               this.§^R§(_loc1_);
            }
            else
            {
               this.§=;§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=p§ = false;
         §&#§.§0+§(§&#§.§3!@§).§8w§ = this.§0!5§;
      }
      
      protected function §^R§(param1:int) : void
      {
         (§<o§.getItemByName("TextField_LevelNumberSmall") as §7g§).§1p§.text = §&#§.§0+§(§&#§.§3!@§).pageIndexes[param1];
      }
   }
}
