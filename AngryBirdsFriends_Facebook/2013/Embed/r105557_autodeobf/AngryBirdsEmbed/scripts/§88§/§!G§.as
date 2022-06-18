package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §"?§.§]A§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§%!H§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §&U§.§`%§;
   import §1t§.§-!M§;
   import §1t§.§@B§;
   import §1t§.§`!B§;
   import §8T§.§@o§;
   import §<!M§.§#W§;
   import §<!M§.§[i§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!G§ extends §2q§
   {
      
      public static const §&! §:String = "LevelSelectionState";
      
      protected static const §<E§:Number = 0.5;
      
      public static var §;c§:String = "";
       
      
      protected var §1[§:Boolean = false;
      
      protected var §4!>§:§05§;
      
      protected var §,g§:§05§;
      
      protected var §7!J§:MovieClip;
      
      protected var §,G§:Array;
      
      protected var §,C§:Array;
      
      protected var §7I§:int = 0;
      
      protected var §`!K§:int = 0;
      
      protected var §finally§:int = 0;
      
      protected var § !I§:Boolean = false;
      
      protected var § w§:§+!B§ = null;
      
      protected var §4a§:Dictionary;
      
      protected var §3!-§:Array;
      
      protected var §0L§:Array;
      
      protected var §@v§:§]A§;
      
      protected var §6t§:Number = 0;
      
      public function §!G§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§04§();
         while(this.§,g§.mClip.numChildren > 0)
         {
            this.§,g§.mClip.removeChildAt(0);
         }
         this.§,C§ = [];
         this.§,G§ = [];
      }
      
      protected function §04§() : void
      {
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelSelection[0]);
         this.§,g§ = §=V§.getItemByName("Container_LevelRepeaters") as §05§;
         this.§4!>§ = §=V§.getItemByName("Container_LevelSelection") as §05§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'5§.§^;§.clearLevel();
         §'5§.§^;§.§]g§(false);
         this.§2e§();
         this.§7E§();
         if(this.§,C§.length == 1)
         {
            (§=V§.getItemByName("Button_Prev") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_Next") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).setVisibility(false);
         }
         else
         {
            (§=V§.getItemByName("Button_Prev") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_Next") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).setVisibility(true);
         }
         this.§6t§ = this.§,g§.x;
         if(§=V§.stage)
         {
            §=V§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!=§);
         }
      }
      
      protected function §7E§() : void
      {
         AngryBirdsFP11.§7E§();
      }
      
      protected function §0!=§(param1:KeyboardEvent) : void
      {
         if(this.§,C§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§;!<§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§'E§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<!$§();
         this.§ c§();
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      protected function §<!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,G§.length)
         {
            if(-this.§,g§.x >= this.§,C§[_loc1_].x && -this.§6t§ < this.§,C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,G§.length)
               {
                  this.§,G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§finally§ = _loc1_;
               this.§,G§[_loc1_].gotoAndStop("Selected");
               (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).x = this.§,G§[_loc1_].x;
               this.§`K§(_loc1_);
            }
            if(-this.§,g§.x <= this.§,C§[_loc1_].x && -this.§6t§ > this.§,C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,G§.length)
               {
                  this.§,G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§finally§ = _loc1_;
               this.§,G§[_loc1_].gotoAndStop("Selected");
               (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).x = this.§,G§[_loc1_].x;
               this.§`K§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§finally§ != this.§7I§)
         {
            if(this.§7I§ > this.§finally§)
            {
               this.§`!K§ = this.§finally§ + 1;
            }
            else if(this.§7I§ < this.§finally§)
            {
               this.§`!K§ = this.§finally§ - 1;
            }
            else
            {
               this.§`!K§ = this.§finally§;
            }
            if(this.§3!-§[this.§`!K§])
            {
               this.§@v§.§1!9§(this.§3!-§[this.§`!K§].red,this.§3!-§[this.§`!K§].green,this.§3!-§[this.§`!K§].blue);
            }
         }
         this.§6t§ = this.§,g§.x;
      }
      
      protected function § c§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,C§.length)
         {
            _loc2_ = this.§,g§.x + this.§,C§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§,C§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§,C§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§,C§[_loc1_].mClip.alpha < 1)
            {
               (this.§,C§[_loc1_] as §@B§).setEnabled(false);
            }
            else
            {
               (this.§,C§[_loc1_] as §@B§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§=V§.stage)
         {
            §=V§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!=§);
         }
         super.deActivate();
         this.§#!%§();
         (§=V§.getItemByName("Button_Back") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[i§.§+!8§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§ w§)
         {
            this.§ w§.stop();
            this.§ w§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         if(param2.length > 0 && param3 is §%!H§)
         {
            if((param3 as §%!H§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §%!H§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§ !I§)
               {
                  §[i§.§#!#§(§[i§.§0!M§(param2.toLowerCase()));
                  mNextState = StateCutScene.§&! §;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@o§.playSound("Menu_Back");
               mNextState = §@_§.§&! §;
               break;
            case "NEXT":
               this.§'E§();
               break;
            case "PREV":
               this.§;!<§();
               break;
            case "FULLSCREEN_BUTTON":
               §@o§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      protected function §'E§() : void
      {
         §@o§.playSound("Menu_Confirm");
         if(!this.§ !I§)
         {
            ++this.§7I§;
            this.§7#§(this.§7I§);
         }
      }
      
      protected function §;!<§() : void
      {
         §@o§.playSound("Menu_Confirm");
         if(!this.§ !I§)
         {
            --this.§7I§;
            this.§7#§(this.§7I§);
         }
      }
      
      public function §2e§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§3!-§ = [];
         this.§0L§ = [];
         this.§7I§ = §[i§.§'4§(§[i§.§%M§).§0!N§;
         this.§`!K§ = this.§7I§;
         this.§finally§ = this.§7I§;
         var _loc2_:§#W§ = §[i§.§'4§(§[i§.§%M§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§>!N§(_loc2_.pageIndexes[_loc3_]);
            this.§3!-§.push(_loc2_.§=!L§(_loc3_));
            this.§0L§.push(_loc2_.§@!$§(_loc3_));
            _loc1_ = this.§6>§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§@v§ = new §]A§(this.§3!-§[this.§7I§].red,this.§3!-§[this.§7I§].green,this.§3!-§[this.§7I§].blue,1);
         §=V§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@v§);
         if(_loc2_.§8Q§)
         {
            _loc6_ = new (_loc5_ = §&%§.§<7§(_loc2_.§8Q§))();
            §=V§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §=V§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§;F§)
         {
            _loc8_ = new (_loc7_ = §&%§.§<7§(_loc2_.§;F§))();
            §=V§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §=V§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§9E§();
         if(§;c§ == StateCutScene.§&! §)
         {
            §;c§ = "";
            this.§7#§(this.§finally§);
         }
         else
         {
            this.§7#§(this.§7I§,true);
         }
      }
      
      protected function §6>§(param1:Array, param2:int, param3:Number, param4:§#W§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §&%§.§<7§(this.§0L§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§"!0§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§7!!§)
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
         _loc8_.@button = this.§0L§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§`%§;
         (_loc9_ = new §`%§(_loc8_,this.§,g§,null,null)).§[`§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§,g§.§8!@§(_loc9_);
         this.§,C§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §"!0§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§&H§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§;<§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §9E§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§,C§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§4a§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§,C§.length)
         {
            _loc1_ = §&%§.§<7§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§,C§.length * _loc2_.width / 2;
            _loc2_.y = (§=V§.getItemByName("Button_Next") as §^!@§).y - _loc2_.height / 2;
            if(_loc4_ == this.§7I§)
            {
               _loc2_.gotoAndStop("Selected");
               (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).x = _loc2_.x;
               (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).y = _loc2_.y - _loc2_.height;
               this.§`K§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§4!>§.mClip.addChild(_loc2_);
            this.§4a§[_loc2_] = _loc4_;
            this.§,G§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!N§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§,C§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§=V§.getItemByName("Button_Next") as §^!@§).x = AngryBirdsFP11.screenWidth / 2;
         (§=V§.getItemByName("Button_Prev") as §^!@§).x = AngryBirdsFP11.screenWidth / 2;
         (§=V§.getItemByName("Button_Next") as §^!@§).x = (§=V§.getItemByName("Button_Next") as §^!@§).x + (_loc3_ + 10);
         (§=V§.getItemByName("Button_Prev") as §^!@§).x = (§=V§.getItemByName("Button_Prev") as §^!@§).x - (_loc3_ + 10);
      }
      
      protected function §#!%§() : void
      {
         if(this.§@v§)
         {
            this.§@v§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§,G§.length)
         {
            if(this.§4!>§.mClip.contains(this.§,G§[_loc1_]))
            {
               this.§,G§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!N§);
               this.§4!>§.mClip.removeChild(this.§,G§[_loc1_]);
            }
            _loc1_++;
         }
         this.§,G§ = [];
         while(this.§,g§.mClip.numChildren > 0)
         {
            this.§,g§.mClip.removeChildAt(0);
         }
         this.§,C§ = [];
      }
      
      protected function §]!N§(param1:MouseEvent) : void
      {
         if(!this.§ !I§)
         {
            this.§7#§(this.§4a§[param1.target]);
         }
      }
      
      protected function §>!<§(param1:MouseEvent) : void
      {
         if(!this.§ !I§)
         {
            mNextState = §!G§.§&! §;
         }
      }
      
      protected function §7#§(param1:int, param2:Boolean = false) : void
      {
         this.§ !I§ = true;
         if(param1 > this.§,C§.length - 1)
         {
            param1 = this.§,C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§7I§ = param1;
         if(this.§7I§ > this.§finally§)
         {
            this.§`!K§ = this.§finally§ + 1;
         }
         else if(this.§7I§ < this.§finally§)
         {
            this.§`!K§ = this.§finally§ - 1;
         }
         var _loc3_:Number = -this.§,C§[param1].x;
         var _loc4_:Number = this.§,C§[param1].x + this.§,g§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §<E§;
         if(this.§ w§ != null)
         {
            this.§ w§.stop();
         }
         if(param2)
         {
            this.§,g§.x = _loc3_;
         }
         else
         {
            this.§ w§ = §6;§.§&e§.§42§(this.§,g§,{"x":_loc3_},null,_loc5_,§6;§.§+!K§);
            this.§ w§.onComplete = this.§8^§;
         }
         if(param2)
         {
            this.§8^§();
         }
         else
         {
            this.§ w§.play();
         }
      }
      
      protected function §8^§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,G§.length)
         {
            if(_loc1_ == this.§7I§)
            {
               this.§,G§[_loc1_].gotoAndStop("Selected");
               (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).x = this.§,G§[_loc1_].x;
               this.§`K§(_loc1_);
            }
            else
            {
               this.§,G§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§ !I§ = false;
         §[i§.§'4§(§[i§.§%M§).§0!N§ = this.§7I§;
      }
      
      protected function §`K§(param1:int) : void
      {
         (§=V§.getItemByName("TextField_LevelNumberSmall") as § 3§).set.text = §[i§.§'4§(§[i§.§%M§).pageIndexes[param1];
      }
   }
}
