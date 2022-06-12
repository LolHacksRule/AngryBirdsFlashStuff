package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4!w§;
   import §%i§.§4"9§;
   import §%i§.§7!t§;
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §9"@§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const § !p§:Number = 0.5;
      
      public static var §8!]§:String = "";
       
      
      protected var §8!w§:Boolean = false;
      
      protected var §4W§:§0!Y§;
      
      protected var § !n§:§0!Y§;
      
      protected var §3^§:MovieClip;
      
      protected var § "9§:Array;
      
      protected var §>§:Array;
      
      protected var §3!7§:int = 0;
      
      protected var §0!y§:int = 0;
      
      protected var §6"B§:int = 0;
      
      protected var §?"[§:Boolean = false;
      
      protected var §&!i§:§6!K§ = null;
      
      protected var §["=§:Dictionary;
      
      protected var §,"'§:Array;
      
      protected var §<!&§:Array;
      
      protected var §;!@§:§3"K§;
      
      protected var §6!1§:Number = 0;
      
      public function §9"@§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§ !n§.mClip.numChildren > 0)
         {
            this.§ !n§.mClip.removeChildAt(0);
         }
         this.§>§ = [];
         this.§ "9§ = [];
      }
      
      protected function initView() : void
      {
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelSelection[0]);
         this.§ !n§ = §2"@§.getItemByName("Container_LevelRepeaters") as §0!Y§;
         this.§4W§ = §2"@§.getItemByName("Container_LevelSelection") as §0!Y§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?l§.§'h§.clearLevel();
         §?l§.§'h§.§#"[§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§>§.length == 1)
         {
            (§2"@§.getItemByName("Button_Prev") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_Next") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).setVisibility(false);
         }
         else
         {
            (§2"@§.getItemByName("Button_Prev") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Next") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).setVisibility(true);
         }
         this.§6!1§ = this.§ !n§.x;
         if(§2"@§.stage)
         {
            §2"@§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !s§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function § !s§(param1:KeyboardEvent) : void
      {
         if(this.§>§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.gotoPrevPage();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.gotoNextPage();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5!>§();
         this.§'![§();
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      protected function §5!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "9§.length)
         {
            if(-this.§ !n§.x >= this.§>§[_loc1_].x && -this.§6!1§ < this.§>§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§ "9§.length)
               {
                  this.§ "9§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6"B§ = _loc1_;
               this.§ "9§[_loc1_].gotoAndStop("Selected");
               (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§ !n§.x <= this.§>§[_loc1_].x && -this.§6!1§ > this.§>§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§ "9§.length)
               {
                  this.§ "9§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6"B§ = _loc1_;
               this.§ "9§[_loc1_].gotoAndStop("Selected");
               (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§6"B§ != this.§3!7§)
         {
            if(this.§3!7§ > this.§6"B§)
            {
               this.§0!y§ = this.§6"B§ + 1;
            }
            else if(this.§3!7§ < this.§6"B§)
            {
               this.§0!y§ = this.§6"B§ - 1;
            }
            else
            {
               this.§0!y§ = this.§6"B§;
            }
            if(this.§,"'§[this.§0!y§])
            {
               this.§;!@§.§'W§(this.§,"'§[this.§0!y§].red,this.§,"'§[this.§0!y§].green,this.§,"'§[this.§0!y§].blue);
            }
         }
         this.§6!1§ = this.§ !n§.x;
      }
      
      protected function §'![§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>§.length)
         {
            _loc2_ = this.§ !n§.x + this.§>§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§>§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§>§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§>§[_loc1_].mClip.alpha < 1)
            {
               (this.§>§[_loc1_] as §!>§).setEnabled(false);
            }
            else
            {
               (this.§>§[_loc1_] as §!>§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§2"@§.stage)
         {
            §2"@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !s§);
         }
         super.deActivate();
         this.§6!x§();
         (§2"@§.getItemByName("Button_Back") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§&"V§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§&!i§)
         {
            this.§&!i§.stop();
            this.§&!i§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         if(param2.length > 0 && param3 is §4!w§)
         {
            if((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§?"[§)
               {
                  LevelManager.§,!m§(LevelManager.§["S§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@"M§.§3"C§("Menu_Back");
               mNextState = §9!V§.STATE_NAME;
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §@"M§.§3"C§("Menu_Confirm");
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §@"M§.§3"C§("Menu_Confirm");
         if(!this.§?"[§)
         {
            ++this.§3!7§;
            this.§+!O§(this.§3!7§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §@"M§.§3"C§("Menu_Confirm");
         if(!this.§?"[§)
         {
            --this.§3!7§;
            this.§+!O§(this.§3!7§);
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
         this.§,"'§ = [];
         this.§<!&§ = [];
         this.§3!7§ = LevelManager.§1!m§(LevelManager.§,m§).§4t§;
         this.§0!y§ = this.§3!7§;
         this.§6"B§ = this.§3!7§;
         var _loc2_:§3-§ = LevelManager.§1!m§(LevelManager.§,m§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§3B§(_loc2_.pageIndexes[_loc3_]);
            this.§,"'§.push(_loc2_.§-D§(_loc3_));
            this.§<!&§.push(_loc2_.§2T§(_loc3_));
            _loc1_ = this.§?;§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§;!@§ = new §3"K§(this.§,"'§[this.§3!7§].red,this.§,"'§[this.§3!7§].green,this.§,"'§[this.§3!7§].blue,1);
         §2"@§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§;!@§);
         if(_loc2_.§#">§)
         {
            _loc6_ = new (_loc5_ = §?q§.§ q§(_loc2_.§#">§))();
            §2"@§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §2"@§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§2A§)
         {
            _loc8_ = new (_loc7_ = §?q§.§ q§(_loc2_.§2A§))();
            §2"@§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §2"@§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§'!4§();
         if(§8!]§ == StateCutScene.STATE_NAME)
         {
            §8!]§ = "";
            this.§+!O§(this.§6"B§);
         }
         else
         {
            this.§+!O§(this.§3!7§,true);
         }
      }
      
      protected function §?;§(param1:Array, param2:int, param3:Number, param4:§3-§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §?q§.§ q§(this.§<!&§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§#V§)
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
         _loc8_.@button = this.§<!&§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§7!t§;
         (_loc9_ = new §7!t§(_loc8_,this.§ !n§,null,null)).§%%§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§ !n§.§2!I§(_loc9_);
         this.§>§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§'!m§);
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
      
      protected function §'!4§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§>§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§["=§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§>§.length)
         {
            _loc1_ = §?q§.§ q§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§'!m§ / 2 + _loc3_ - this.§>§.length * _loc2_.width / 2;
            _loc2_.y = (§2"@§.getItemByName("Button_Next") as §7"0§).y - _loc2_.height / 2;
            if(_loc4_ == this.§3!7§)
            {
               _loc2_.gotoAndStop("Selected");
               (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = _loc2_.x;
               (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§4W§.mClip.addChild(_loc2_);
            this.§["=§[_loc2_] = _loc4_;
            this.§ "9§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!e§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§>§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2"@§.getItemByName("Button_Next") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
         (§2"@§.getItemByName("Button_Prev") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
         (§2"@§.getItemByName("Button_Next") as §7"0§).x = (§2"@§.getItemByName("Button_Next") as §7"0§).x + (_loc3_ + 10);
         (§2"@§.getItemByName("Button_Prev") as §7"0§).x = (§2"@§.getItemByName("Button_Prev") as §7"0§).x - (_loc3_ + 10);
      }
      
      protected function §6!x§() : void
      {
         if(this.§;!@§)
         {
            this.§;!@§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "9§.length)
         {
            if(this.§4W§.mClip.contains(this.§ "9§[_loc1_]))
            {
               this.§ "9§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!e§);
               this.§4W§.mClip.removeChild(this.§ "9§[_loc1_]);
            }
            _loc1_++;
         }
         this.§ "9§ = [];
         while(this.§ !n§.mClip.numChildren > 0)
         {
            this.§ !n§.mClip.removeChildAt(0);
         }
         this.§>§ = [];
      }
      
      protected function §<!e§(param1:MouseEvent) : void
      {
         if(!this.§?"[§)
         {
            this.§+!O§(this.§["=§[param1.target]);
         }
      }
      
      protected function §"!H§(param1:MouseEvent) : void
      {
         if(!this.§?"[§)
         {
            mNextState = §9"@§.STATE_NAME;
         }
      }
      
      protected function §+!O§(param1:int, param2:Boolean = false) : void
      {
         this.§?"[§ = true;
         if(param1 > this.§>§.length - 1)
         {
            param1 = this.§>§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§3!7§ = param1;
         if(this.§3!7§ > this.§6"B§)
         {
            this.§0!y§ = this.§6"B§ + 1;
         }
         else if(this.§3!7§ < this.§6"B§)
         {
            this.§0!y§ = this.§6"B§ - 1;
         }
         var _loc3_:Number = -this.§>§[param1].x;
         var _loc4_:Number = this.§>§[param1].x + this.§ !n§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * § !p§;
         if(this.§&!i§ != null)
         {
            this.§&!i§.stop();
         }
         if(param2)
         {
            this.§ !n§.x = _loc3_;
         }
         else
         {
            this.§&!i§ = §0W§.§&"5§.§]!r§(this.§ !n§,{"x":_loc3_},null,_loc5_,§0W§.§'I§);
            this.§&!i§.onComplete = this.§=Z§;
         }
         if(param2)
         {
            this.§=Z§();
         }
         else
         {
            this.§&!i§.play();
         }
      }
      
      protected function §=Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "9§.length)
         {
            if(_loc1_ == this.§3!7§)
            {
               this.§ "9§[_loc1_].gotoAndStop("Selected");
               (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).x = this.§ "9§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§ "9§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§?"[§ = false;
         LevelManager.§1!m§(LevelManager.§,m§).§4t§ = this.§3!7§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).§-" §.text = LevelManager.§1!m§(LevelManager.§,m§).pageIndexes[param1];
      }
   }
}
