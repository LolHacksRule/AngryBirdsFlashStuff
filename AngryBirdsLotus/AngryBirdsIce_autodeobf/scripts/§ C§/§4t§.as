package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§?H§;
   import §[v§.§[!#§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §4t§ extends §-§
   {
      
      public static const §?B§:String = "LevelSelectionState";
      
      protected static const §,2§:Number = 0.5;
      
      public static var §7p§:String = "";
       
      
      protected var §%+§:Boolean = false;
      
      protected var §#-§:§&F§;
      
      protected var §]!7§:§&F§;
      
      protected var §6B§:MovieClip;
      
      protected var §[W§:Array;
      
      protected var §^H§:Array;
      
      protected var §[!!§:int = 0;
      
      protected var §`@§:int = 0;
      
      protected var §!O§:int = 0;
      
      protected var §'#§:Boolean = false;
      
      protected var §']§:§?A§ = null;
      
      protected var §#t§:Dictionary;
      
      protected var §8^§:Array;
      
      protected var §^U§:Array;
      
      protected var §^!D§:§6H§;
      
      protected var §#&§:Number = 0;
      
      public function §4t§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§<%§();
         while(this.§]!7§.mClip.numChildren > 0)
         {
            this.§]!7§.mClip.removeChildAt(0);
         }
         this.§^H§ = [];
         this.§[W§ = [];
      }
      
      protected function §<%§() : void
      {
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelSelection[0]);
         this.§]!7§ = §,R§.getItemByName("Container_LevelRepeaters") as §&F§;
         this.§#-§ = §,R§.getItemByName("Container_LevelSelection") as §&F§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[o§.§='§.clearLevel();
         §[o§.§='§.§"3§(false);
         this.§2!0§();
         AngryBirdsFP11.§]!"§();
         if(this.§^H§.length == 1)
         {
            (§,R§.getItemByName("Button_Prev") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_Next") as §^P§).setVisibility(false);
            (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).setVisibility(false);
         }
         else
         {
            (§,R§.getItemByName("Button_Prev") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_Next") as §^P§).setVisibility(true);
            (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).setVisibility(true);
         }
         this.§#&§ = this.§]!7§.x;
         if(§,R§.stage)
         {
            §,R§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!9§);
         }
      }
      
      protected function §6!9§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§0A§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§,C§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§%`§();
         this.§>'§();
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      protected function §%`§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[W§.length)
         {
            if(-this.§]!7§.x >= this.§^H§[_loc1_].x && -this.§#&§ < this.§^H§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[W§.length)
               {
                  this.§[W§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!O§ = _loc1_;
               this.§[W§[_loc1_].gotoAndStop("Selected");
               (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
               this.§%j§(_loc1_);
            }
            if(-this.§]!7§.x <= this.§^H§[_loc1_].x && -this.§#&§ > this.§^H§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[W§.length)
               {
                  this.§[W§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!O§ = _loc1_;
               this.§[W§[_loc1_].gotoAndStop("Selected");
               (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
               this.§%j§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§!O§ != this.§[!!§)
         {
            if(this.§[!!§ > this.§!O§)
            {
               this.§`@§ = this.§!O§ + 1;
            }
            else if(this.§[!!§ < this.§!O§)
            {
               this.§`@§ = this.§!O§ - 1;
            }
            else
            {
               this.§`@§ = this.§!O§;
            }
            this.§^!D§.§ !%§(this.§8^§[this.§`@§].red,this.§8^§[this.§`@§].green,this.§8^§[this.§`@§].blue);
         }
         this.§#&§ = this.§]!7§.x;
      }
      
      protected function §>'§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^H§.length)
         {
            _loc2_ = this.§]!7§.x + this.§^H§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§^H§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§^H§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§^H§[_loc1_].mClip.alpha < 1)
            {
               (this.§^H§[_loc1_] as §?H§).setEnabled(false);
            }
            else
            {
               (this.§^H§[_loc1_] as §?H§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§,R§.stage)
         {
            §,R§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6!9§);
         }
         super.deActivate();
         this.§%!1§();
         (§,R§.getItemByName("Button_Back") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §0$§.§>Q§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§']§)
         {
            this.§']§.stop();
            this.§']§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         if(param2.length > 0 && param3 is §[!#§)
         {
            if((param3 as §[!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §[!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§'#§)
               {
                  §0$§.§;4§(§0$§.§5D§(param2.toLowerCase()));
                  mNextState = StateCutScene.§?B§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@6§.playSound("Menu_Back");
               mNextState = §9,§.§?B§;
               break;
            case "NEXT":
               this.§,C§();
               break;
            case "PREV":
               this.§0A§();
               break;
            case "FULLSCREEN_BUTTON":
               §@6§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      protected function §,C§() : void
      {
         §@6§.playSound("Menu_Confirm");
         if(!this.§'#§)
         {
            ++this.§[!!§;
            this.§6!8§(this.§[!!§);
         }
      }
      
      protected function §0A§() : void
      {
         §@6§.playSound("Menu_Confirm");
         if(!this.§'#§)
         {
            --this.§[!!§;
            this.§6!8§(this.§[!!§);
         }
      }
      
      public function §2!0§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§8^§ = [];
         this.§^U§ = [];
         this.§[!!§ = §0$§.§]>§(§0$§.§=l§).§^A§;
         this.§`@§ = this.§[!!§;
         this.§!O§ = this.§[!!§;
         var _loc2_:§&9§ = §0$§.§]>§(§0$§.§=l§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§4!5§(_loc2_.pageIndexes[_loc3_]);
            this.§8^§.push(_loc2_.§6_§(_loc3_));
            this.§^U§.push(_loc2_.§"X§(_loc3_));
            _loc1_ = this.§!!>§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§^!D§ = new §6H§(this.§8^§[this.§[!!§].red,this.§8^§[this.§[!!§].green,this.§8^§[this.§[!!§].blue,1);
         §,R§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§^!D§);
         if(_loc2_.§-a§)
         {
            _loc6_ = new (_loc5_ = §>D§.§`C§(_loc2_.§-a§))();
            §,R§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §,R§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§ v§)
         {
            _loc8_ = new (_loc7_ = §>D§.§`C§(_loc2_.§ v§))();
            §,R§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §,R§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§<[§();
         if(§7p§ == StateCutScene.§?B§)
         {
            §7p§ = "";
            this.§6!8§(this.§!O§);
         }
         else
         {
            this.§6!8§(this.§[!!§,true);
         }
      }
      
      protected function §!!>§(param1:Array, param2:int, param3:Number, param4:§&9§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>D§.§`C§(this.§^U§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§64§.isLevelOpen(_loc10_);
            _loc12_ = this.§'d§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§'Q§)
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
         _loc8_.@button = this.§^U§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§?H§;
         (_loc9_ = new §?H§(_loc8_,this.§]!7§,null,null)).§+!+§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§]!7§.§&!?§(_loc9_);
         this.§^H§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §'d§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§64§.§!!@§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§64§.§1!8§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §<[§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§^H§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§#t§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§^H§.length)
         {
            _loc1_ = §>D§.§`C§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§^H§.length * _loc2_.width / 2;
            _loc2_.y = (§,R§.getItemByName("Button_Next") as §^P§).y - _loc2_.height / 2;
            if(_loc4_ == this.§[!!§)
            {
               _loc2_.gotoAndStop("Selected");
               (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = _loc2_.x;
               (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).y = _loc2_.y - _loc2_.height;
               this.§%j§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§#-§.mClip.addChild(_loc2_);
            this.§#t§[_loc2_] = _loc4_;
            this.§[W§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]j§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§^H§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§,R§.getItemByName("Button_Next") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
         (§,R§.getItemByName("Button_Prev") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
         (§,R§.getItemByName("Button_Next") as §^P§).x = (§,R§.getItemByName("Button_Next") as §^P§).x + (_loc3_ + 10);
         (§,R§.getItemByName("Button_Prev") as §^P§).x = (§,R§.getItemByName("Button_Prev") as §^P§).x - (_loc3_ + 10);
      }
      
      protected function §%!1§() : void
      {
         if(this.§^!D§)
         {
            this.§^!D§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§[W§.length)
         {
            if(this.§#-§.mClip.contains(this.§[W§[_loc1_]))
            {
               this.§[W§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]j§);
               this.§#-§.mClip.removeChild(this.§[W§[_loc1_]);
            }
            _loc1_++;
         }
         this.§[W§ = [];
         while(this.§]!7§.mClip.numChildren > 0)
         {
            this.§]!7§.mClip.removeChildAt(0);
         }
         this.§^H§ = [];
      }
      
      protected function §]j§(param1:MouseEvent) : void
      {
         if(!this.§'#§)
         {
            this.§6!8§(this.§#t§[param1.target]);
         }
      }
      
      protected function §7r§(param1:MouseEvent) : void
      {
         if(!this.§'#§)
         {
            mNextState = §4t§.§?B§;
         }
      }
      
      protected function §6!8§(param1:int, param2:Boolean = false) : void
      {
         this.§'#§ = true;
         if(param1 > this.§^H§.length - 1)
         {
            param1 = this.§^H§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§[!!§ = param1;
         if(this.§[!!§ > this.§!O§)
         {
            this.§`@§ = this.§!O§ + 1;
         }
         else if(this.§[!!§ < this.§!O§)
         {
            this.§`@§ = this.§!O§ - 1;
         }
         var _loc3_:Number = -this.§^H§[param1].x;
         var _loc4_:Number = this.§^H§[param1].x + this.§]!7§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §,2§;
         if(this.§']§ != null)
         {
            this.§']§.stop();
         }
         if(param2)
         {
            this.§]!7§.x = _loc3_;
         }
         else
         {
            this.§']§ = §";§.§[8§.§6!$§(this.§]!7§,{"x":_loc3_},null,_loc5_,§";§.§&w§);
            this.§']§.onComplete = this.§9!'§;
         }
         if(param2)
         {
            this.§9!'§();
         }
         else
         {
            this.§']§.play();
         }
      }
      
      protected function §9!'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[W§.length)
         {
            if(_loc1_ == this.§[!!§)
            {
               this.§[W§[_loc1_].gotoAndStop("Selected");
               (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
               this.§%j§(_loc1_);
            }
            else
            {
               this.§[W§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§'#§ = false;
         §0$§.§]>§(§0$§.§=l§).§^A§ = this.§[!!§;
      }
      
      protected function §%j§(param1:int) : void
      {
         (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).§8?§.text = §0$§.§]>§(§0$§.§=l§).pageIndexes[param1];
      }
   }
}
