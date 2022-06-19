package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"%§;
   import §"",§.§+§;
   import §"",§.§2[§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §#""§.§+!J§;
   import §+I§.§9!%§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§#z§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §=B§ extends §,-§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §="8§:Number = 0.5;
      
      public static var §;!@§:String = "";
       
      
      protected var §5z§:Boolean = false;
      
      protected var §?Z§:§<+§;
      
      protected var §]!0§:§<+§;
      
      protected var §0!a§:MovieClip;
      
      protected var §3"'§:Array;
      
      protected var §9!h§:Array;
      
      protected var §#!7§:int = 0;
      
      protected var §]!5§:int = 0;
      
      protected var §3A§:int = 0;
      
      protected var §@!s§:Boolean = false;
      
      protected var §var§:§-!F§ = null;
      
      protected var §+!f§:Dictionary;
      
      protected var §6"-§:Array;
      
      protected var §,"3§:Array;
      
      protected var §#!i§:§+!J§;
      
      protected var §#!G§:Number = 0;
      
      public function §=B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§]!0§.mClip.numChildren > 0)
         {
            this.§]!0§.mClip.removeChildAt(0);
         }
         this.§9!h§ = [];
         this.§3"'§ = [];
      }
      
      protected function initView() : void
      {
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelSelection[0]);
         this.§]!0§ = §2"-§.getItemByName("Container_LevelRepeaters") as §<+§;
         this.§?Z§ = §2"-§.getItemByName("Container_LevelSelection") as §<+§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §9!%§.§!!M§.clearLevel();
         §9!%§.§!!M§.§5"!§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§9!h§.length == 1)
         {
            (§2"-§.getItemByName("Button_Prev") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_Next") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).setVisibility(false);
         }
         else
         {
            (§2"-§.getItemByName("Button_Prev") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_Next") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).setVisibility(true);
         }
         this.§#!G§ = this.§]!0§.x;
         if(§2"-§.stage)
         {
            §2"-§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§]C§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function §]C§(param1:KeyboardEvent) : void
      {
         if(this.§9!h§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§0[§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§!,§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`=§();
         this.§2z§();
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      protected function §`=§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"'§.length)
         {
            if(-this.§]!0§.x >= this.§9!h§[_loc1_].x && -this.§#!G§ < this.§9!h§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3"'§.length)
               {
                  this.§3"'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3A§ = _loc1_;
               this.§3"'§[_loc1_].gotoAndStop("Selected");
               (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).x = this.§3"'§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§]!0§.x <= this.§9!h§[_loc1_].x && -this.§#!G§ > this.§9!h§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3"'§.length)
               {
                  this.§3"'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3A§ = _loc1_;
               this.§3"'§[_loc1_].gotoAndStop("Selected");
               (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).x = this.§3"'§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§3A§ != this.§#!7§)
         {
            if(this.§#!7§ > this.§3A§)
            {
               this.§]!5§ = this.§3A§ + 1;
            }
            else if(this.§#!7§ < this.§3A§)
            {
               this.§]!5§ = this.§3A§ - 1;
            }
            else
            {
               this.§]!5§ = this.§3A§;
            }
            if(this.§6"-§[this.§]!5§])
            {
               this.§#!i§.§4!e§(this.§6"-§[this.§]!5§].red,this.§6"-§[this.§]!5§].green,this.§6"-§[this.§]!5§].blue);
            }
         }
         this.§#!G§ = this.§]!0§.x;
      }
      
      protected function §2z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!h§.length)
         {
            _loc2_ = this.§]!0§.x + this.§9!h§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§9!h§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§9!h§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§9!h§[_loc1_].mClip.alpha < 1)
            {
               (this.§9!h§[_loc1_] as §#z§).setEnabled(false);
            }
            else
            {
               (this.§9!h§[_loc1_] as §#z§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§2"-§.stage)
         {
            §2"-§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]C§);
         }
         super.deActivate();
         this.§+n§();
         (§2"-§.getItemByName("Button_Back") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§>!t§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§var§)
         {
            this.§var§.stop();
            this.§var§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         if(param2.length > 0 && param3 is §2[§)
         {
            if((param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§@!s§)
               {
                  LevelManager.§'!"§(LevelManager.§?">§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §%4§.§>f§("Menu_Back");
               mNextState = §=!e§.STATE_NAME;
               break;
            case "NEXT":
               this.§!,§();
               break;
            case "PREV":
               this.§0[§();
               break;
            case "FULLSCREEN_BUTTON":
               §%4§.§>f§("Menu_Confirm");
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      protected function §!,§() : void
      {
         §%4§.§>f§("Menu_Confirm");
         if(!this.§@!s§)
         {
            ++this.§#!7§;
            this.§&!"§(this.§#!7§);
         }
      }
      
      protected function §0[§() : void
      {
         §%4§.§>f§("Menu_Confirm");
         if(!this.§@!s§)
         {
            --this.§#!7§;
            this.§&!"§(this.§#!7§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§6"-§ = [];
         this.§,"3§ = [];
         this.§#!7§ = LevelManager.§3"1§(LevelManager.§@O§).§4z§;
         this.§]!5§ = this.§#!7§;
         this.§3A§ = this.§#!7§;
         var _loc2_:§]f§ = LevelManager.§3"1§(LevelManager.§@O§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§ !%§(_loc2_.pageIndexes[_loc3_]);
            this.§6"-§.push(_loc2_.§2!u§(_loc3_));
            this.§,"3§.push(_loc2_.§&"4§(_loc3_));
            _loc1_ = this.§@S§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§#!i§ = new §+!J§(this.§6"-§[this.§#!7§].red,this.§6"-§[this.§#!7§].green,this.§6"-§[this.§#!7§].blue,1);
         §2"-§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§#!i§);
         if(_loc2_.§&#§)
         {
            _loc6_ = new (_loc5_ = §#!J§.§1!Y§(_loc2_.§&#§))();
            §2"-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §2"-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§@i§)
         {
            _loc8_ = new (_loc7_ = §#!J§.§1!Y§(_loc2_.§@i§))();
            §2"-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §2"-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2!2§();
         if(§;!@§ == StateCutScene.STATE_NAME)
         {
            §;!@§ = "";
            this.§&!"§(this.§3A§);
         }
         else
         {
            this.§&!"§(this.§#!7§,true);
         }
      }
      
      protected function §@S§(param1:Array, param2:int, param3:Number, param4:§]f§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §#!J§.§1!Y§(this.§,"3§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§+1§)
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
         _loc8_.@button = this.§,"3§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§"%§;
         (_loc9_ = new §"%§(_loc8_,this.§]!0§,null,null)).§7!z§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§]!0§.addComponent(_loc9_);
         this.§9!h§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§#!T§);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §2!2§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§9!h§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§+!f§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§9!h§.length)
         {
            _loc1_ = §#!J§.§1!Y§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§#!T§ / 2 + _loc3_ - this.§9!h§.length * _loc2_.width / 2;
            _loc2_.y = (§2"-§.getItemByName("Button_Next") as §<?§).y - _loc2_.height / 2;
            if(_loc4_ == this.§#!7§)
            {
               _loc2_.gotoAndStop("Selected");
               (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).x = _loc2_.x;
               (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§?Z§.mClip.addChild(_loc2_);
            this.§+!f§[_loc2_] = _loc4_;
            this.§3"'§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]"8§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§9!h§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2"-§.getItemByName("Button_Next") as §<?§).x = AngryBirdsFP11.§#!T§ / 2;
         (§2"-§.getItemByName("Button_Prev") as §<?§).x = AngryBirdsFP11.§#!T§ / 2;
         (§2"-§.getItemByName("Button_Next") as §<?§).x = (§2"-§.getItemByName("Button_Next") as §<?§).x + (_loc3_ + 10);
         (§2"-§.getItemByName("Button_Prev") as §<?§).x = (§2"-§.getItemByName("Button_Prev") as §<?§).x - (_loc3_ + 10);
      }
      
      protected function §+n§() : void
      {
         if(this.§#!i§)
         {
            this.§#!i§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"'§.length)
         {
            if(this.§?Z§.mClip.contains(this.§3"'§[_loc1_]))
            {
               this.§3"'§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]"8§);
               this.§?Z§.mClip.removeChild(this.§3"'§[_loc1_]);
            }
            _loc1_++;
         }
         this.§3"'§ = [];
         while(this.§]!0§.mClip.numChildren > 0)
         {
            this.§]!0§.mClip.removeChildAt(0);
         }
         this.§9!h§ = [];
      }
      
      protected function §]"8§(param1:MouseEvent) : void
      {
         if(!this.§@!s§)
         {
            this.§&!"§(this.§+!f§[param1.target]);
         }
      }
      
      protected function §"!'§(param1:MouseEvent) : void
      {
         if(!this.§@!s§)
         {
            mNextState = §=B§.STATE_NAME;
         }
      }
      
      protected function §&!"§(param1:int, param2:Boolean = false) : void
      {
         this.§@!s§ = true;
         if(param1 > this.§9!h§.length - 1)
         {
            param1 = this.§9!h§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#!7§ = param1;
         if(this.§#!7§ > this.§3A§)
         {
            this.§]!5§ = this.§3A§ + 1;
         }
         else if(this.§#!7§ < this.§3A§)
         {
            this.§]!5§ = this.§3A§ - 1;
         }
         var _loc3_:Number = -this.§9!h§[param1].x;
         var _loc4_:Number = this.§9!h§[param1].x + this.§]!0§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §="8§;
         if(this.§var§ != null)
         {
            this.§var§.stop();
         }
         if(param2)
         {
            this.§]!0§.x = _loc3_;
         }
         else
         {
            this.§var§ = §7!b§.§8c§.§4&§(this.§]!0§,{"x":_loc3_},null,_loc5_,§7!b§.§4"0§);
            this.§var§.onComplete = this.§+!O§;
         }
         if(param2)
         {
            this.§+!O§();
         }
         else
         {
            this.§var§.play();
         }
      }
      
      protected function §+!O§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"'§.length)
         {
            if(_loc1_ == this.§#!7§)
            {
               this.§3"'§[_loc1_].gotoAndStop("Selected");
               (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).x = this.§3"'§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§3"'§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§@!s§ = false;
         LevelManager.§3"1§(LevelManager.§@O§).§4z§ = this.§#!7§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).§"<§.text = LevelManager.§3"1§(LevelManager.§@O§).pageIndexes[param1];
      }
   }
}
