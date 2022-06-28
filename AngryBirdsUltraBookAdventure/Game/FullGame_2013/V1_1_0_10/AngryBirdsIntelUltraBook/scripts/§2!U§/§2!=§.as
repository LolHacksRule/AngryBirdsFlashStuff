package §2!U§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§8!k§;
   import §2y§.§<N§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §2!=§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelSelectionState";
      
      protected static const §`!?§:Number = 0.5;
      
      public static var §%!i§:String = "";
       
      
      protected var §9!d§:Boolean = false;
      
      protected var §>!+§:§^! §;
      
      protected var §>&§:§^! §;
      
      protected var §@L§:MovieClip;
      
      protected var §]!<§:Array;
      
      protected var §?J§:Array;
      
      protected var §8C§:int = 0;
      
      protected var §'!m§:int = 0;
      
      protected var §<#§:int = 0;
      
      protected var §>!@§:Boolean = false;
      
      protected var §!!Z§:§^v§ = null;
      
      protected var § !%§:Dictionary;
      
      protected var §&!S§:Array;
      
      protected var §8!d§:Array;
      
      protected var §`!%§:§!^§;
      
      protected var § !I§:Number = 0;
      
      public function §2!=§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§>&§.mClip.numChildren > 0)
         {
            this.§>&§.mClip.removeChildAt(0);
         }
         this.§?J§ = [];
         this.§]!<§ = [];
      }
      
      protected function initView() : void
      {
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelSelection[0]);
         this.§>&§ = §'!Q§.getItemByName("Container_LevelRepeaters") as §^! §;
         this.§>!+§ = §'!Q§.getItemByName("Container_LevelSelection") as §^! §;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!s§.§=!I§.clearLevel();
         §,!s§.§=!I§.§!C§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§?J§.length == 1)
         {
            (§'!Q§.getItemByName("Button_Prev") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_Next") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).setVisibility(false);
         }
         else
         {
            (§'!Q§.getItemByName("Button_Prev") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Next") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).setVisibility(true);
         }
         this.§ !I§ = this.§>&§.x;
         if(§'!Q§.stage)
         {
            §'!Q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2!X§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function §2!X§(param1:KeyboardEvent) : void
      {
         if(this.§?J§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§'!J§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§1!E§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§>R§();
         this.§2!e§();
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      protected function §>R§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!<§.length)
         {
            if(-this.§>&§.x >= this.§?J§[_loc1_].x && -this.§ !I§ < this.§?J§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!<§.length)
               {
                  this.§]!<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<#§ = _loc1_;
               this.§]!<§[_loc1_].gotoAndStop("Selected");
               (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§>&§.x <= this.§?J§[_loc1_].x && -this.§ !I§ > this.§?J§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!<§.length)
               {
                  this.§]!<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<#§ = _loc1_;
               this.§]!<§[_loc1_].gotoAndStop("Selected");
               (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§<#§ != this.§8C§)
         {
            if(this.§8C§ > this.§<#§)
            {
               this.§'!m§ = this.§<#§ + 1;
            }
            else if(this.§8C§ < this.§<#§)
            {
               this.§'!m§ = this.§<#§ - 1;
            }
            else
            {
               this.§'!m§ = this.§<#§;
            }
            if(this.§&!S§[this.§'!m§])
            {
               this.§`!%§.§,n§(this.§&!S§[this.§'!m§].red,this.§&!S§[this.§'!m§].green,this.§&!S§[this.§'!m§].blue);
            }
         }
         this.§ !I§ = this.§>&§.x;
      }
      
      protected function §2!e§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?J§.length)
         {
            _loc2_ = this.§>&§.x + this.§?J§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§?J§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§?J§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§?J§[_loc1_].mClip.alpha < 1)
            {
               (this.§?J§[_loc1_] as §7!>§).setEnabled(false);
            }
            else
            {
               (this.§?J§[_loc1_] as §7!>§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§'!Q§.stage)
         {
            §'!Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!X§);
         }
         super.deActivate();
         this.§;w§();
         (§'!Q§.getItemByName("Button_Back") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§>l§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§!!Z§)
         {
            this.§!!Z§.stop();
            this.§!!Z§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         if(param2.length > 0 && param3 is §8!k§)
         {
            if((param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §8!k§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§>!@§)
               {
                  LevelManager.§`!O§(LevelManager.§5l§(param2.toLowerCase()));
                  mNextState = StateCutScene.§'!q§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §-!Q§.§#3§("Menu_Back");
               mNextState = §8"!§.§'!q§;
               break;
            case "NEXT":
               this.§1!E§();
               break;
            case "PREV":
               this.§'!J§();
               break;
            case "FULLSCREEN_BUTTON":
               §-!Q§.§#3§("Menu_Confirm");
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      protected function §1!E§() : void
      {
         §-!Q§.§#3§("Menu_Confirm");
         if(!this.§>!@§)
         {
            ++this.§8C§;
            this.§5!]§(this.§8C§);
         }
      }
      
      protected function §'!J§() : void
      {
         §-!Q§.§#3§("Menu_Confirm");
         if(!this.§>!@§)
         {
            --this.§8C§;
            this.§5!]§(this.§8C§);
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
         this.§&!S§ = [];
         this.§8!d§ = [];
         this.§8C§ = LevelManager.§!!A§(LevelManager.§`^§).§9J§;
         this.§'!m§ = this.§8C§;
         this.§<#§ = this.§8C§;
         var _loc2_:§8K§ = LevelManager.§!!A§(LevelManager.§`^§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§#E§(_loc2_.pageIndexes[_loc3_]);
            this.§&!S§.push(_loc2_.§;y§(_loc3_));
            this.§8!d§.push(_loc2_.§,G§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§`!%§ = new §!^§(this.§&!S§[this.§8C§].red,this.§&!S§[this.§8C§].green,this.§&!S§[this.§8C§].blue,1);
         §'!Q§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§`!%§);
         if(_loc2_.§?E§)
         {
            _loc6_ = new (_loc5_ = §,!j§.§!!N§(_loc2_.§?E§))();
            §'!Q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §'!Q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§2?§)
         {
            _loc8_ = new (_loc7_ = §,!j§.§!!N§(_loc2_.§2?§))();
            §'!Q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §'!Q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2!A§();
         if(§%!i§ == StateCutScene.§'!q§)
         {
            §%!i§ = "";
            this.§5!]§(this.§<#§);
         }
         else
         {
            this.§5!]§(this.§8C§,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§8K§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §,!j§.§!!N§(this.§8!d§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§?C§)
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
         _loc8_.@button = this.§8!d§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§<N§;
         (_loc9_ = new §<N§(_loc8_,this.§>&§,null,null)).§>k§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>&§.addComponent(_loc9_);
         this.§?J§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§!Z§);
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
      
      protected function §2!A§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§?J§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§ !%§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§?J§.length)
         {
            _loc1_ = §,!j§.§!!N§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§!Z§ / 2 + _loc3_ - this.§?J§.length * _loc2_.width / 2;
            _loc2_.y = (§'!Q§.getItemByName("Button_Next") as §[!i§).y - _loc2_.height / 2;
            if(_loc4_ == this.§8C§)
            {
               _loc2_.gotoAndStop("Selected");
               (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = _loc2_.x;
               (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§>!+§.mClip.addChild(_loc2_);
            this.§ !%§[_loc2_] = _loc4_;
            this.§]!<§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§?J§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§'!Q§.getItemByName("Button_Next") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
         (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
         (§'!Q§.getItemByName("Button_Next") as §[!i§).x = (§'!Q§.getItemByName("Button_Next") as §[!i§).x + (_loc3_ + 10);
         (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = (§'!Q§.getItemByName("Button_Prev") as §[!i§).x - (_loc3_ + 10);
      }
      
      protected function §;w§() : void
      {
         if(this.§`!%§)
         {
            this.§`!%§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!<§.length)
         {
            if(this.§>!+§.mClip.contains(this.§]!<§[_loc1_]))
            {
               this.§]!<§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
               this.§>!+§.mClip.removeChild(this.§]!<§[_loc1_]);
            }
            _loc1_++;
         }
         this.§]!<§ = [];
         while(this.§>&§.mClip.numChildren > 0)
         {
            this.§>&§.mClip.removeChildAt(0);
         }
         this.§?J§ = [];
      }
      
      protected function §]!X§(param1:MouseEvent) : void
      {
         if(!this.§>!@§)
         {
            this.§5!]§(this.§ !%§[param1.target]);
         }
      }
      
      protected function §3W§(param1:MouseEvent) : void
      {
         if(!this.§>!@§)
         {
            mNextState = §2!=§.§'!q§;
         }
      }
      
      protected function §5!]§(param1:int, param2:Boolean = false) : void
      {
         this.§>!@§ = true;
         if(param1 > this.§?J§.length - 1)
         {
            param1 = this.§?J§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§8C§ = param1;
         if(this.§8C§ > this.§<#§)
         {
            this.§'!m§ = this.§<#§ + 1;
         }
         else if(this.§8C§ < this.§<#§)
         {
            this.§'!m§ = this.§<#§ - 1;
         }
         var _loc3_:Number = -this.§?J§[param1].x;
         var _loc4_:Number = this.§?J§[param1].x + this.§>&§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §`!?§;
         if(this.§!!Z§ != null)
         {
            this.§!!Z§.stop();
         }
         if(param2)
         {
            this.§>&§.x = _loc3_;
         }
         else
         {
            this.§!!Z§ = §`!G§.§[U§.§-]§(this.§>&§,{"x":_loc3_},null,_loc5_,§`!G§.§-!%§);
            this.§!!Z§.onComplete = this.§7S§;
         }
         if(param2)
         {
            this.§7S§();
         }
         else
         {
            this.§!!Z§.play();
         }
      }
      
      protected function §7S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!<§.length)
         {
            if(_loc1_ == this.§8C§)
            {
               this.§]!<§[_loc1_].gotoAndStop("Selected");
               (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).x = this.§]!<§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§]!<§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§>!@§ = false;
         LevelManager.§!!A§(LevelManager.§`^§).§9J§ = this.§8C§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).§5!B§.text = LevelManager.§!!A§(LevelManager.§`^§).pageIndexes[param1];
      }
   }
}
