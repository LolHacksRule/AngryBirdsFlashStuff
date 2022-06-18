package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §,!$§.§8O§;
   import §-!'§.;
   import §-!'§.§&!H§;
   import §-!'§.§;;§;
   import §-!'§.§;f§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §-!C§.§=W§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §#u§ extends §3!'§
   {
      
      public static const §9"§:String = "LevelSelectionState";
      
      protected static const §&!4§:Number = 0.5;
      
      public static var §,x§:String = "";
       
      
      protected var §%!<§:Boolean = false;
      
      protected var §+!8§:§in §;
      
      protected var §<g§:§in §;
      
      protected var §'!<§:MovieClip;
      
      protected var §9s§:Array;
      
      protected var §2!§:Array;
      
      protected var §@r§:int = 0;
      
      protected var §#B§:int = 0;
      
      protected var §=X§:int = 0;
      
      protected var §1r§:Boolean = false;
      
      protected var §`p§:§`!-§ = null;
      
      protected var §3w§:Dictionary;
      
      protected var §-!;§:Array;
      
      protected var §8s§:Array;
      
      protected var §,!>§:§8O§;
      
      protected var §'s§:Number = 0;
      
      public function §#u§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§1i§();
         while(this.§<g§.mClip.numChildren > 0)
         {
            this.§<g§.mClip.removeChildAt(0);
         }
         this.§2!§ = [];
         this.§9s§ = [];
      }
      
      protected function §1i§() : void
      {
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelSelection[0]);
         this.§<g§ = §+!2§.getItemByName("Container_LevelRepeaters") as §in §;
         this.§+!8§ = §+!2§.getItemByName("Container_LevelSelection") as §in §;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]3§.§;v§.clearLevel();
         §]3§.§;v§.§@!A§(false);
         this.§;a§();
         AngryBirdsFP11.§[! §();
         if(this.§2!§.length == 1)
         {
            (§+!2§.getItemByName("Button_Prev") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_Next") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).setVisibility(false);
         }
         else
         {
            (§+!2§.getItemByName("Button_Prev") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_Next") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).setVisibility(true);
         }
         this.§'s§ = this.§<g§.x;
         if(§+!2§.stage)
         {
            §+!2§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§9!%§);
         }
      }
      
      protected function §9!%§(param1:KeyboardEvent) : void
      {
         if(this.§2!§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§-K§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§4O§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,w§();
         this.§1f§();
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      protected function §,w§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9s§.length)
         {
            if(-this.§<g§.x >= this.§2!§[_loc1_].x && -this.§'s§ < this.§2!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9s§.length)
               {
                  this.§9s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=X§ = _loc1_;
               this.§9s§[_loc1_].gotoAndStop("Selected");
               (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).x = this.§9s§[_loc1_].x;
               this.§8d§(_loc1_);
            }
            if(-this.§<g§.x <= this.§2!§[_loc1_].x && -this.§'s§ > this.§2!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9s§.length)
               {
                  this.§9s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=X§ = _loc1_;
               this.§9s§[_loc1_].gotoAndStop("Selected");
               (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).x = this.§9s§[_loc1_].x;
               this.§8d§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§=X§ != this.§@r§)
         {
            if(this.§@r§ > this.§=X§)
            {
               this.§#B§ = this.§=X§ + 1;
            }
            else if(this.§@r§ < this.§=X§)
            {
               this.§#B§ = this.§=X§ - 1;
            }
            else
            {
               this.§#B§ = this.§=X§;
            }
            this.§,!>§.§?!&§(this.§-!;§[this.§#B§].red,this.§-!;§[this.§#B§].green,this.§-!;§[this.§#B§].blue);
         }
         this.§'s§ = this.§<g§.x;
      }
      
      protected function §1f§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!§.length)
         {
            _loc2_ = this.§<g§.x + this.§2!§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§2!§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§2!§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§2!§[_loc1_].mClip.alpha < 1)
            {
               (this.§2!§[_loc1_] as §#7§).setEnabled(false);
            }
            else
            {
               (this.§2!§[_loc1_] as §#7§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§+!2§.stage)
         {
            §+!2§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§9!%§);
         }
         super.deActivate();
         this.§8R§();
         (§+!2§.getItemByName("Button_Back") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#!G§.§0E§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§`p§)
         {
            this.§`p§.stop();
            this.§`p§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         if(param2.length > 0 && param3 is §;;§)
         {
            if((param3 as §;;§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §;;§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§1r§)
               {
                  §#!G§.§=I§(§#!G§.§"b§(param2.toLowerCase()));
                  mNextState = StateCutScene.§9"§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §^]§.§1g§("Menu_Back");
               mNextState = §5!?§.§9"§;
               break;
            case "NEXT":
               this.§4O§();
               break;
            case "PREV":
               this.§-K§();
               break;
            case "FULLSCREEN_BUTTON":
               §^]§.§1g§("Menu_Confirm");
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      protected function §4O§() : void
      {
         §^]§.§1g§("Menu_Confirm");
         if(!this.§1r§)
         {
            ++this.§@r§;
            this.§<8§(this.§@r§);
         }
      }
      
      protected function §-K§() : void
      {
         §^]§.§1g§("Menu_Confirm");
         if(!this.§1r§)
         {
            --this.§@r§;
            this.§<8§(this.§@r§);
         }
      }
      
      public function §;a§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§-!;§ = [];
         this.§8s§ = [];
         this.§@r§ = §#!G§.§^<§(§#!G§.§7!?§).§0V§;
         this.§#B§ = this.§@r§;
         this.§=X§ = this.§@r§;
         var _loc2_:§=W§ = §#!G§.§^<§(§#!G§.§7!?§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§,H§(_loc2_.pageIndexes[_loc3_]);
            this.§-!;§.push(_loc2_.§?;§(_loc3_));
            this.§8s§.push(_loc2_.§ R§(_loc3_));
            _loc1_ = this.§2o§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§,!>§ = new §8O§(this.§-!;§[this.§@r§].red,this.§-!;§[this.§@r§].green,this.§-!;§[this.§@r§].blue,1);
         §+!2§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§,!>§);
         if(_loc2_.§'^§)
         {
            _loc6_ = new (_loc5_ = §''§.§-C§(_loc2_.§'^§))();
            §+!2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §+!2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§%!-§)
         {
            _loc8_ = new (_loc7_ = §''§.§-C§(_loc2_.§%!-§))();
            §+!2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §+!2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§0!%§();
         if(§,x§ == StateCutScene.§9"§)
         {
            §,x§ = "";
            this.§<8§(this.§=X§);
         }
         else
         {
            this.§<8§(this.§@r§,true);
         }
      }
      
      protected function §2o§(param1:Array, param2:int, param3:Number, param4:§=W§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §''§.§-C§(this.§8s§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§`!<§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§;!9§)
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
         _loc8_.@button = this.§8s§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§#7§;
         (_loc9_ = new §#7§(_loc8_,this.§<g§,null,null)).§'A§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§<g§.§2'§(_loc9_);
         this.§2!§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §`!<§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§4f§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§1W§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §0!%§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§2!§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§3w§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§2!§.length)
         {
            _loc1_ = §''§.§-C§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§2!§.length * _loc2_.width / 2;
            _loc2_.y = (§+!2§.getItemByName("Button_Next") as §;f§).y - _loc2_.height / 2;
            if(_loc4_ == this.§@r§)
            {
               _loc2_.gotoAndStop("Selected");
               (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).x = _loc2_.x;
               (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).y = _loc2_.y - _loc2_.height;
               this.§8d§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§+!8§.mClip.addChild(_loc2_);
            this.§3w§[_loc2_] = _loc4_;
            this.§9s§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§'R§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§2!§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!2§.getItemByName("Button_Next") as §;f§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!2§.getItemByName("Button_Prev") as §;f§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!2§.getItemByName("Button_Next") as §;f§).x = (§+!2§.getItemByName("Button_Next") as §;f§).x + (_loc3_ + 10);
         (§+!2§.getItemByName("Button_Prev") as §;f§).x = (§+!2§.getItemByName("Button_Prev") as §;f§).x - (_loc3_ + 10);
      }
      
      protected function §8R§() : void
      {
         if(this.§,!>§)
         {
            this.§,!>§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§9s§.length)
         {
            if(this.§+!8§.mClip.contains(this.§9s§[_loc1_]))
            {
               this.§9s§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§'R§);
               this.§+!8§.mClip.removeChild(this.§9s§[_loc1_]);
            }
            _loc1_++;
         }
         this.§9s§ = [];
         while(this.§<g§.mClip.numChildren > 0)
         {
            this.§<g§.mClip.removeChildAt(0);
         }
         this.§2!§ = [];
      }
      
      protected function §'R§(param1:MouseEvent) : void
      {
         if(!this.§1r§)
         {
            this.§<8§(this.§3w§[param1.target]);
         }
      }
      
      protected function §-b§(param1:MouseEvent) : void
      {
         if(!this.§1r§)
         {
            mNextState = §#u§.§9"§;
         }
      }
      
      protected function §<8§(param1:int, param2:Boolean = false) : void
      {
         this.§1r§ = true;
         if(param1 > this.§2!§.length - 1)
         {
            param1 = this.§2!§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§@r§ = param1;
         if(this.§@r§ > this.§=X§)
         {
            this.§#B§ = this.§=X§ + 1;
         }
         else if(this.§@r§ < this.§=X§)
         {
            this.§#B§ = this.§=X§ - 1;
         }
         var _loc3_:Number = -this.§2!§[param1].x;
         var _loc4_:Number = this.§2!§[param1].x + this.§<g§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §&!4§;
         if(this.§`p§ != null)
         {
            this.§`p§.stop();
         }
         if(param2)
         {
            this.§<g§.x = _loc3_;
         }
         else
         {
            this.§`p§ = §;q§.§9r§.§%!#§(this.§<g§,{"x":_loc3_},null,_loc5_,§;q§.§-'§);
            this.§`p§.onComplete = this.§[!9§;
         }
         if(param2)
         {
            this.§[!9§();
         }
         else
         {
            this.§`p§.play();
         }
      }
      
      protected function §[!9§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9s§.length)
         {
            if(_loc1_ == this.§@r§)
            {
               this.§9s§[_loc1_].gotoAndStop("Selected");
               (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).x = this.§9s§[_loc1_].x;
               this.§8d§(_loc1_);
            }
            else
            {
               this.§9s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§1r§ = false;
         §#!G§.§^<§(§#!G§.§7!?§).§0V§ = this.§@r§;
      }
      
      protected function §8d§(param1:int) : void
      {
         (§+!2§.getItemByName("TextField_LevelNumberSmall") as §&!H§).§#C§.text = §#!G§.§^<§(§#!G§.§7!?§).pageIndexes[param1];
      }
   }
}
