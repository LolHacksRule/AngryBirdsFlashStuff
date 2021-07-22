package §,!=§
{
   import § §.§7#L§;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §6"r§.§0"<§;
   import §6"r§.§3#@§;
   import §6"r§.§9a§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §<!=§.§;§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §<!B§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §2!p§:Number = 0.5;
      
      public static var §+R§:String = "";
       
      
      protected var §<D§:Boolean = false;
      
      protected var §[">§:§0"<§;
      
      protected var §3##§:§0"<§;
      
      protected var §8#F§:MovieClip;
      
      protected var §6!n§:Array;
      
      protected var §9![§:Array;
      
      protected var §>"c§:int = 0;
      
      protected var §?"1§:int = 0;
      
      protected var §`$!§:int = 0;
      
      protected var §7!s§:Boolean = false;
      
      protected var §0"5§:§+,§ = null;
      
      protected var §#'§:Dictionary;
      
      protected var §`!S§:Array;
      
      protected var §7!w§:Array;
      
      protected var §"?§:§;#1§;
      
      protected var §["A§:Number = 0;
      
      public function §<!B§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§3##§.mClip.numChildren > 0)
         {
            this.§3##§.mClip.removeChildAt(0);
         }
         this.§9![§ = [];
         this.§6!n§ = [];
      }
      
      protected function initView() : void
      {
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelSelection[0]);
         this.§3##§ = §!$§.getItemByName("Container_LevelRepeaters") as §0"<§;
         this.§[">§ = §!$§.getItemByName("Container_LevelSelection") as §0"<§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.§3#'§.clearLevel();
         §>"$§.§3#'§.§5'§(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§9![§.length == 1)
         {
            (§!$§.getItemByName("Button_Prev") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_Next") as §=O§).setVisibility(false);
            (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).setVisibility(false);
         }
         else
         {
            (§!$§.getItemByName("Button_Prev") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Next") as §=O§).setVisibility(true);
            (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).setVisibility(true);
         }
         this.§["A§ = this.§3##§.x;
         if(§!$§.stage)
         {
            §!$§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
      }
      
      protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.gotoPrevPage();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.gotoNextPage();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§>$5§();
         this.§,$#§();
      }
      
      protected function §>$5§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!n§.length)
         {
            if(-this.§3##§.x >= this.§9![§[_loc1_].x && -this.§["A§ < this.§9![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6!n§.length)
               {
                  this.§6!n§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`$!§ = _loc1_;
               this.§6!n§[_loc1_].gotoAndStop("Selected");
               (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).x = this.§6!n§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§3##§.x <= this.§9![§[_loc1_].x && -this.§["A§ > this.§9![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6!n§.length)
               {
                  this.§6!n§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`$!§ = _loc1_;
               this.§6!n§[_loc1_].gotoAndStop("Selected");
               (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).x = this.§6!n§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§`$!§ != this.§>"c§)
         {
            if(this.§>"c§ > this.§`$!§)
            {
               this.§?"1§ = this.§`$!§ + 1;
            }
            else if(this.§>"c§ < this.§`$!§)
            {
               this.§?"1§ = this.§`$!§ - 1;
            }
            else
            {
               this.§?"1§ = this.§`$!§;
            }
            this.§"?§.§6!=§(this.§`!S§[this.§?"1§].red,this.§`!S§[this.§?"1§].green,this.§`!S§[this.§?"1§].blue);
         }
         this.§["A§ = this.§3##§.x;
      }
      
      protected function §,$#§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9![§.length)
         {
            _loc2_ = this.§3##§.x + this.§9![§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§9![§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§9![§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§9![§[_loc1_].mClip.alpha < 1)
            {
               (this.§9![§[_loc1_] as §3#@§).setEnabled(false);
            }
            else
            {
               (this.§9![§[_loc1_] as §3#@§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§!$§.stage)
         {
            §!$§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§7! §();
         (§!$§.getItemByName("Button_Back") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§0"5§)
         {
            this.§0"5§.stop();
            this.§0"5§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         if(param2.length > 0 && param3 is §9a§)
         {
            if((param3 as §9a§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §9a§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§7!s§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §7P§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§]4§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         if(!this.§7!s§)
         {
            ++this.§>"c§;
            this.moveToPage(this.§>"c§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         if(!this.§7!s§)
         {
            --this.§>"c§;
            this.moveToPage(this.§>"c§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc6_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§`!S§ = [];
         this.§7!w§ = [];
         var _loc2_:§=!Z§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§>"c§ = _loc2_.currentPage;
         this.§?"1§ = this.§>"c§;
         this.§`$!§ = this.§>"c§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§5"L§)
         {
            _loc4_ = _loc2_.§=#e§(_loc3_);
            this.§`!S§.push(_loc2_.§?p§(_loc3_));
            this.§7!w§.push(_loc2_.§<8§(_loc3_));
            _loc1_ = this.§6#0§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§"?§ = new §;#1§(this.§`!S§[this.§>"c§].red,this.§`!S§[this.§>"c§].green,this.§`!S§[this.§>"c§].blue,1);
         §!$§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§"?§);
         if(_loc2_.§4"5§)
         {
            _loc6_ = new §@`§.§4!i§(_loc2_.§4"5§)();
            §!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§&q§)
         {
            _loc8_ = new §@`§.§4!i§(_loc2_.§&q§)();
            §!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§,"J§();
         if(§+R§ == StateCutScene.STATE_NAME)
         {
            §+R§ = "";
            this.moveToPage(this.§`$!§);
         }
         else
         {
            this.moveToPage(this.§>"c§,true);
         }
      }
      
      protected function §6#0§(param1:Array, param2:int, param3:Number, param4:§=!Z§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §@`§.§4!i§(this.§7!w§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsBase.DEBUG_MODE_ENABLED)
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
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§7!w§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§3#@§;
         (_loc9_ = new §3#@§(_loc8_,this.§3##§,null,null)).§@$0§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§3##§.§1#5§(_loc9_);
         this.§9![§.push(_loc9_);
         return Number(param3 + AngryBirdsBase.screenWidth);
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
            if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §,"J§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§9![§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§#'§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§9![§.length)
         {
            _loc1_ = §@`§.§4!i§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§9![§.length * _loc2_.width / 2;
            _loc2_.y = (§!$§.getItemByName("Button_Next") as §=O§).y - _loc2_.height / 2;
            if(_loc4_ == this.§>"c§)
            {
               _loc2_.gotoAndStop("Selected");
               (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).x = _loc2_.x;
               (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§[">§.mClip.addChild(_loc2_);
            this.§#'§[_loc2_] = _loc4_;
            this.§6!n§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!G§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§9![§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§!$§.getItemByName("Button_Next") as §=O§).x = AngryBirdsBase.screenWidth / 2;
         (§!$§.getItemByName("Button_Prev") as §=O§).x = AngryBirdsBase.screenWidth / 2;
         (§!$§.getItemByName("Button_Next") as §=O§).x = (§!$§.getItemByName("Button_Next") as §=O§).x + (_loc3_ + 10);
         (§!$§.getItemByName("Button_Prev") as §=O§).x = (§!$§.getItemByName("Button_Prev") as §=O§).x - (_loc3_ + 10);
      }
      
      protected function §7! §() : void
      {
         if(this.§"?§)
         {
            this.§"?§.§4#1§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!n§.length)
         {
            if(this.§[">§.mClip.contains(this.§6!n§[_loc1_]))
            {
               this.§6!n§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!G§);
               this.§[">§.mClip.removeChild(this.§6!n§[_loc1_]);
            }
            _loc1_++;
         }
         this.§6!n§ = [];
         this.§3##§.§%$8§();
         this.§9![§ = [];
      }
      
      protected function §`!G§(param1:MouseEvent) : void
      {
         if(!this.§7!s§)
         {
            this.moveToPage(this.§#'§[param1.target]);
         }
      }
      
      protected function §88§(param1:MouseEvent) : void
      {
         if(!this.§7!s§)
         {
            §7P§(§<!B§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§7!s§ = true;
         if(param1 > this.§9![§.length - 1)
         {
            param1 = this.§9![§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§>"c§ = param1;
         if(this.§>"c§ > this.§`$!§)
         {
            this.§?"1§ = this.§`$!§ + 1;
         }
         else if(this.§>"c§ < this.§`$!§)
         {
            this.§?"1§ = this.§`$!§ - 1;
         }
         var _loc3_:Number = -this.§9![§[param1].x;
         var _loc4_:Number = this.§9![§[param1].x + this.§3##§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §2!p§;
         if(this.§0"5§ != null)
         {
            this.§0"5§.stop();
         }
         if(param2)
         {
            this.§3##§.x = _loc3_;
         }
         else
         {
            this.§0"5§ = §""Z§.§3!]§.§5"0§(this.§3##§,{"x":_loc3_},null,_loc5_,§7#L§.easeOut);
            this.§0"5§.onComplete = this.§<"6§;
         }
         if(param2)
         {
            this.§<"6§();
         }
         else
         {
            this.§0"5§.play();
         }
      }
      
      protected function §<"6§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!n§.length)
         {
            if(_loc1_ == this.§>"c§)
            {
               this.§6!n§[_loc1_].gotoAndStop("Selected");
               (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).x = this.§6!n§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§6!n§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§7!s§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§>"c§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).§@]§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
