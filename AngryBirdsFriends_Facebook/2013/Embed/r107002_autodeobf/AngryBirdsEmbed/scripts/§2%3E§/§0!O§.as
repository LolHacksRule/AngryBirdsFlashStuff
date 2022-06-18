package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §+3§.§8O§;
   import §2T§.§#!'§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §2T§.include;
   import §6Z§.§ in§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§07§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §0!O§ extends §9Y§
   {
      
      public static const §]! §:String = "LevelSelectionState";
      
      protected static const §90§:Number = 0.5;
      
      public static var §`!H§:String = "";
       
      
      protected var §3!H§:Boolean = false;
      
      protected var §4L§:§&M§;
      
      protected var §>I§:§&M§;
      
      protected var §3!3§:MovieClip;
      
      protected var §0!,§:Array;
      
      protected var §^D§:Array;
      
      protected var §@!3§:int = 0;
      
      protected var §@@§:int = 0;
      
      protected var §6q§:int = 0;
      
      protected var §]!A§:Boolean = false;
      
      protected var §2!%§:§9;§ = null;
      
      protected var §"l§:Dictionary;
      
      protected var § 1§:Array;
      
      protected var §[!B§:Array;
      
      protected var §22§:§8O§;
      
      protected var §9+§:Number = 0;
      
      public function §0!O§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§%!K§();
         while(this.§>I§.mClip.numChildren > 0)
         {
            this.§>I§.mClip.removeChildAt(0);
         }
         this.§^D§ = [];
         this.§0!,§ = [];
      }
      
      protected function §%!K§() : void
      {
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelSelection[0]);
         this.§>I§ = §!s§.getItemByName("Container_LevelRepeaters") as §&M§;
         this.§4L§ = §!s§.getItemByName("Container_LevelSelection") as §&M§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!4§.§continue§.clearLevel();
         §[!4§.§continue§.§3!;§(false);
         this.§3%§();
         this.§,3§();
         if(this.§^D§.length == 1)
         {
            (§!s§.getItemByName("Button_Prev") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_Next") as §2H§).setVisibility(false);
            (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).setVisibility(false);
         }
         else
         {
            (§!s§.getItemByName("Button_Prev") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_Next") as §2H§).setVisibility(true);
            (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).setVisibility(true);
         }
         this.§9+§ = this.§>I§.x;
         if(§!s§.stage)
         {
            §!s§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[x§);
         }
      }
      
      protected function §,3§() : void
      {
         AngryBirdsFP11.§,3§();
      }
      
      protected function §[x§(param1:KeyboardEvent) : void
      {
         if(this.§^D§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§^Z§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§`p§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!<§();
         this.§;!=§();
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      protected function §8!<§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            if(-this.§>I§.x >= this.§^D§[_loc1_].x && -this.§9+§ < this.§^D§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!,§.length)
               {
                  this.§0!,§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6q§ = _loc1_;
               this.§0!,§[_loc1_].gotoAndStop("Selected");
               (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).x = this.§0!,§[_loc1_].x;
               this.§4Q§(_loc1_);
            }
            if(-this.§>I§.x <= this.§^D§[_loc1_].x && -this.§9+§ > this.§^D§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!,§.length)
               {
                  this.§0!,§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6q§ = _loc1_;
               this.§0!,§[_loc1_].gotoAndStop("Selected");
               (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).x = this.§0!,§[_loc1_].x;
               this.§4Q§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§6q§ != this.§@!3§)
         {
            if(this.§@!3§ > this.§6q§)
            {
               this.§@@§ = this.§6q§ + 1;
            }
            else if(this.§@!3§ < this.§6q§)
            {
               this.§@@§ = this.§6q§ - 1;
            }
            else
            {
               this.§@@§ = this.§6q§;
            }
            if(this.§ 1§[this.§@@§])
            {
               this.§22§.§%!4§(this.§ 1§[this.§@@§].red,this.§ 1§[this.§@@§].green,this.§ 1§[this.§@@§].blue);
            }
         }
         this.§9+§ = this.§>I§.x;
      }
      
      protected function §;!=§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^D§.length)
         {
            _loc2_ = this.§>I§.x + this.§^D§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§^D§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§^D§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§^D§[_loc1_].mClip.alpha < 1)
            {
               (this.§^D§[_loc1_] as §07§).setEnabled(false);
            }
            else
            {
               (this.§^D§[_loc1_] as §07§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§!s§.stage)
         {
            §!s§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[x§);
         }
         super.deActivate();
         this.§3!8§();
         (§!s§.getItemByName("Button_Back") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §'?§.§9T§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§2!%§)
         {
            this.§2!%§.stop();
            this.§2!%§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         if(param2.length > 0 && param3 is include)
         {
            if((param3 as include).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as include).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§]!A§)
               {
                  §'?§.§4y§(§'?§.§0E§(param2.toLowerCase()));
                  mNextState = StateCutScene.§]! §;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §]!2§.playSound("Menu_Back");
               mNextState = §9%§.§]! §;
               break;
            case "NEXT":
               this.§`p§();
               break;
            case "PREV":
               this.§^Z§();
               break;
            case "FULLSCREEN_BUTTON":
               §]!2§.playSound("Menu_Confirm");
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      protected function §`p§() : void
      {
         §]!2§.playSound("Menu_Confirm");
         if(!this.§]!A§)
         {
            ++this.§@!3§;
            this.§=!8§(this.§@!3§);
         }
      }
      
      protected function §^Z§() : void
      {
         §]!2§.playSound("Menu_Confirm");
         if(!this.§]!A§)
         {
            --this.§@!3§;
            this.§=!8§(this.§@!3§);
         }
      }
      
      public function §3%§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§ 1§ = [];
         this.§[!B§ = [];
         this.§@!3§ = §'?§.§-7§(§'?§.§5!G§).§2L§;
         this.§@@§ = this.§@!3§;
         this.§6q§ = this.§@!3§;
         var _loc2_:§ in§ = §'?§.§-7§(§'?§.§5!G§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§#V§(_loc2_.pageIndexes[_loc3_]);
            this.§ 1§.push(_loc2_.§;5§(_loc3_));
            this.§[!B§.push(_loc2_.§1K§(_loc3_));
            _loc1_ = this.§&v§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§22§ = new §8O§(this.§ 1§[this.§@!3§].red,this.§ 1§[this.§@!3§].green,this.§ 1§[this.§@!3§].blue,1);
         §!s§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§22§);
         if(_loc2_.§[!7§)
         {
            _loc6_ = new (_loc5_ = §5R§.§6+§(_loc2_.§[!7§))();
            §!s§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §!s§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§%!>§)
         {
            _loc8_ = new (_loc7_ = §5R§.§6+§(_loc2_.§%!>§))();
            §!s§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §!s§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§4P§();
         if(§`!H§ == StateCutScene.§]! §)
         {
            §`!H§ = "";
            this.§=!8§(this.§6q§);
         }
         else
         {
            this.§=!8§(this.§@!3§,true);
         }
      }
      
      protected function §&v§(param1:Array, param2:int, param3:Number, param4:§ in§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §5R§.§6+§(this.§[!B§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§ F§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§78§)
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
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§[!B§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§#!'§;
         (_loc9_ = new §#!'§(_loc8_,this.§>I§,null,null)).§>]§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>I§.§,!A§(_loc9_);
         this.§^D§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function § F§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§%!E§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§2l§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §4P§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§^D§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§"l§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§^D§.length)
         {
            _loc1_ = §5R§.§6+§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§^D§.length * _loc2_.width / 2;
            _loc2_.y = (§!s§.getItemByName("Button_Next") as §2H§).y - _loc2_.height / 2;
            if(_loc4_ == this.§@!3§)
            {
               _loc2_.gotoAndStop("Selected");
               (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).x = _loc2_.x;
               (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).y = _loc2_.y - _loc2_.height;
               this.§4Q§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§4L§.mClip.addChild(_loc2_);
            this.§"l§[_loc2_] = _loc4_;
            this.§0!,§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§use§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§^D§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§!s§.getItemByName("Button_Next") as §2H§).x = AngryBirdsFP11.screenWidth / 2;
         (§!s§.getItemByName("Button_Prev") as §2H§).x = AngryBirdsFP11.screenWidth / 2;
         (§!s§.getItemByName("Button_Next") as §2H§).x = (§!s§.getItemByName("Button_Next") as §2H§).x + (_loc3_ + 10);
         (§!s§.getItemByName("Button_Prev") as §2H§).x = (§!s§.getItemByName("Button_Prev") as §2H§).x - (_loc3_ + 10);
      }
      
      protected function §3!8§() : void
      {
         if(this.§22§)
         {
            this.§22§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            if(this.§4L§.mClip.contains(this.§0!,§[_loc1_]))
            {
               this.§0!,§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§use§);
               this.§4L§.mClip.removeChild(this.§0!,§[_loc1_]);
            }
            _loc1_++;
         }
         this.§0!,§ = [];
         while(this.§>I§.mClip.numChildren > 0)
         {
            this.§>I§.mClip.removeChildAt(0);
         }
         this.§^D§ = [];
      }
      
      protected function §use§(param1:MouseEvent) : void
      {
         if(!this.§]!A§)
         {
            this.§=!8§(this.§"l§[param1.target]);
         }
      }
      
      protected function §0k§(param1:MouseEvent) : void
      {
         if(!this.§]!A§)
         {
            mNextState = §0!O§.§]! §;
         }
      }
      
      protected function §=!8§(param1:int, param2:Boolean = false) : void
      {
         this.§]!A§ = true;
         if(param1 > this.§^D§.length - 1)
         {
            param1 = this.§^D§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§@!3§ = param1;
         if(this.§@!3§ > this.§6q§)
         {
            this.§@@§ = this.§6q§ + 1;
         }
         else if(this.§@!3§ < this.§6q§)
         {
            this.§@@§ = this.§6q§ - 1;
         }
         var _loc3_:Number = -this.§^D§[param1].x;
         var _loc4_:Number = this.§^D§[param1].x + this.§>I§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §90§;
         if(this.§2!%§ != null)
         {
            this.§2!%§.stop();
         }
         if(param2)
         {
            this.§>I§.x = _loc3_;
         }
         else
         {
            this.§2!%§ = §'!A§.§5+§.§;h§(this.§>I§,{"x":_loc3_},null,_loc5_,§'!A§.§=T§);
            this.§2!%§.onComplete = this.§<!%§;
         }
         if(param2)
         {
            this.§<!%§();
         }
         else
         {
            this.§2!%§.play();
         }
      }
      
      protected function §<!%§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            if(_loc1_ == this.§@!3§)
            {
               this.§0!,§[_loc1_].gotoAndStop("Selected");
               (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).x = this.§0!,§[_loc1_].x;
               this.§4Q§(_loc1_);
            }
            else
            {
               this.§0!,§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§]!A§ = false;
         §'?§.§-7§(§'?§.§5!G§).§2L§ = this.§@!3§;
      }
      
      protected function §4Q§(param1:int) : void
      {
         (§!s§.getItemByName("TextField_LevelNumberSmall") as §5@§).§[!J§.text = §'?§.§-7§(§'?§.§5!G§).pageIndexes[param1];
      }
   }
}
