package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §##C§.§'!'§;
   import §'",§.§6#s§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §<h§.§"!X§;
   import §<h§.§%M§;
   import §<h§.§=$4§;
   import §<h§.§>"0§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §1S§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §`!P§:Number = 0.5;
      
      public static var §!!d§:String = "";
       
      
      protected var §+"V§:Boolean = false;
      
      protected var § #h§:§[#K§;
      
      protected var §@#Y§:§[#K§;
      
      protected var §?`§:MovieClip;
      
      protected var §=#@§:Array;
      
      protected var §1!q§:Array;
      
      protected var §="8§:int = 0;
      
      protected var §<!2§:int = 0;
      
      protected var §"#+§:int = 0;
      
      protected var §+"#§:Boolean = false;
      
      protected var §>s§:§4[§ = null;
      
      protected var §^!O§:Dictionary;
      
      protected var §+$-§:Array;
      
      protected var §1!U§:Array;
      
      protected var §"!7§:§6#s§;
      
      protected var §8$1§:Number = 0;
      
      public function §1S§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§@#Y§.mClip.numChildren > 0)
         {
            this.§@#Y§.mClip.removeChildAt(0);
         }
         this.§1!q§ = [];
         this.§=#@§ = [];
      }
      
      protected function initView() : void
      {
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelSelection[0]);
         this.§@#Y§ = §`!H§.getItemByName("Container_LevelRepeaters") as §[#K§;
         this.§ #h§ = §`!H§.getItemByName("Container_LevelSelection") as §[#K§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.§#$4§.clearLevel();
         §3#U§.§#$4§.§;"?§(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§1!q§.length == 1)
         {
            (§`!H§.getItemByName("Button_Prev") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_Next") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).setVisibility(false);
         }
         else
         {
            (§`!H§.getItemByName("Button_Prev") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Next") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).setVisibility(true);
         }
         this.§8$1§ = this.§@#Y§.x;
         if(§`!H§.stage)
         {
            §`!H§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
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
         this.§5"j§();
         this.§3#-§();
      }
      
      protected function §5"j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#@§.length)
         {
            if(-this.§@#Y§.x >= this.§1!q§[_loc1_].x && -this.§8$1§ < this.§1!q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=#@§.length)
               {
                  this.§=#@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§"#+§ = _loc1_;
               this.§=#@§[_loc1_].gotoAndStop("Selected");
               (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).x = this.§=#@§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§@#Y§.x <= this.§1!q§[_loc1_].x && -this.§8$1§ > this.§1!q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=#@§.length)
               {
                  this.§=#@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§"#+§ = _loc1_;
               this.§=#@§[_loc1_].gotoAndStop("Selected");
               (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).x = this.§=#@§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§"#+§ != this.§="8§)
         {
            if(this.§="8§ > this.§"#+§)
            {
               this.§<!2§ = this.§"#+§ + 1;
            }
            else if(this.§="8§ < this.§"#+§)
            {
               this.§<!2§ = this.§"#+§ - 1;
            }
            else
            {
               this.§<!2§ = this.§"#+§;
            }
            this.§"!7§.§#$<§(this.§+$-§[this.§<!2§].red,this.§+$-§[this.§<!2§].green,this.§+$-§[this.§<!2§].blue);
         }
         this.§8$1§ = this.§@#Y§.x;
      }
      
      protected function §3#-§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!q§.length)
         {
            _loc2_ = this.§@#Y§.x + this.§1!q§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§1!q§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§1!q§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§1!q§[_loc1_].mClip.alpha < 1)
            {
               (this.§1!q§[_loc1_] as §=$4§).setEnabled(false);
            }
            else
            {
               (this.§1!q§[_loc1_] as §=$4§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§`!H§.stage)
         {
            §`!H§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§<!n§();
         (§`!H§.getItemByName("Button_Back") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§>s§)
         {
            this.§>s§.stop();
            this.§>s§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         if(param2.length > 0 && param3 is §"!X§)
         {
            if((param3 as §"!X§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §"!X§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§+"#§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §1"h§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§^!§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         if(!this.§+"#§)
         {
            ++this.§="8§;
            this.moveToPage(this.§="8§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         if(!this.§+"#§)
         {
            --this.§="8§;
            this.moveToPage(this.§="8§);
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
         this.§+$-§ = [];
         this.§1!U§ = [];
         var _loc2_:§"m§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§="8§ = _loc2_.currentPage;
         this.§<!2§ = this.§="8§;
         this.§"#+§ = this.§="8§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@#&§)
         {
            _loc4_ = _loc2_.§0#s§(_loc3_);
            this.§+$-§.push(_loc2_.§!#A§(_loc3_));
            this.§1!U§.push(_loc2_.§#",§(_loc3_));
            _loc1_ = this.§^#o§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§"!7§ = new §6#s§(this.§+$-§[this.§="8§].red,this.§+$-§[this.§="8§].green,this.§+$-§[this.§="8§].blue,1);
         §`!H§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§"!7§);
         if(_loc2_.§^$$§)
         {
            _loc6_ = new (_loc5_ = §!"f§.§##?§(_loc2_.§^$$§))();
            §`!H§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §`!H§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§7!!§)
         {
            _loc8_ = new (_loc7_ = §!"f§.§##?§(_loc2_.§7!!§))();
            §`!H§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §`!H§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§[!y§();
         if(§!!d§ == StateCutScene.STATE_NAME)
         {
            §!!d§ = "";
            this.moveToPage(this.§"#+§);
         }
         else
         {
            this.moveToPage(this.§="8§,true);
         }
      }
      
      protected function §^#o§(param1:Array, param2:int, param3:Number, param4:§"m§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §!"f§.§##?§(this.§1!U§[param2]);
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
         _loc8_.@button = this.§1!U§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§=$4§;
         (_loc9_ = new §=$4§(_loc8_,this.§@#Y§,null,null)).§19§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§@#Y§.§'!z§(_loc9_);
         this.§1!q§.push(_loc9_);
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
      
      protected function §[!y§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§1!q§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§^!O§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§1!q§.length)
         {
            _loc1_ = §!"f§.§##?§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§1!q§.length * _loc2_.width / 2;
            _loc2_.y = (§`!H§.getItemByName("Button_Next") as §>"0§).y - _loc2_.height / 2;
            if(_loc4_ == this.§="8§)
            {
               _loc2_.gotoAndStop("Selected");
               (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).x = _loc2_.x;
               (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§ #h§.mClip.addChild(_loc2_);
            this.§^!O§[_loc2_] = _loc4_;
            this.§=#@§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§`#8§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§1!q§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`!H§.getItemByName("Button_Next") as §>"0§).x = AngryBirdsBase.screenWidth / 2;
         (§`!H§.getItemByName("Button_Prev") as §>"0§).x = AngryBirdsBase.screenWidth / 2;
         (§`!H§.getItemByName("Button_Next") as §>"0§).x = (§`!H§.getItemByName("Button_Next") as §>"0§).x + (_loc3_ + 10);
         (§`!H§.getItemByName("Button_Prev") as §>"0§).x = (§`!H§.getItemByName("Button_Prev") as §>"0§).x - (_loc3_ + 10);
      }
      
      protected function §<!n§() : void
      {
         if(this.§"!7§)
         {
            this.§"!7§.§,"I§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#@§.length)
         {
            if(this.§ #h§.mClip.contains(this.§=#@§[_loc1_]))
            {
               this.§=#@§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§`#8§);
               this.§ #h§.mClip.removeChild(this.§=#@§[_loc1_]);
            }
            _loc1_++;
         }
         this.§=#@§ = [];
         this.§@#Y§.§%!G§();
         this.§1!q§ = [];
      }
      
      protected function §`#8§(param1:MouseEvent) : void
      {
         if(!this.§+"#§)
         {
            this.moveToPage(this.§^!O§[param1.target]);
         }
      }
      
      protected function §`_§(param1:MouseEvent) : void
      {
         if(!this.§+"#§)
         {
            §1"h§(§1S§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§+"#§ = true;
         if(param1 > this.§1!q§.length - 1)
         {
            param1 = this.§1!q§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§="8§ = param1;
         if(this.§="8§ > this.§"#+§)
         {
            this.§<!2§ = this.§"#+§ + 1;
         }
         else if(this.§="8§ < this.§"#+§)
         {
            this.§<!2§ = this.§"#+§ - 1;
         }
         var _loc3_:Number = -this.§1!q§[param1].x;
         var _loc4_:Number = this.§1!q§[param1].x + this.§@#Y§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §`!P§;
         if(this.§>s§ != null)
         {
            this.§>s§.stop();
         }
         if(param2)
         {
            this.§@#Y§.x = _loc3_;
         }
         else
         {
            this.§>s§ = §&"H§.§6!§.§6C§(this.§@#Y§,{"x":_loc3_},null,_loc5_,§'!'§.easeOut);
            this.§>s§.onComplete = this.§;6§;
         }
         if(param2)
         {
            this.§;6§();
         }
         else
         {
            this.§>s§.play();
         }
      }
      
      protected function §;6§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#@§.length)
         {
            if(_loc1_ == this.§="8§)
            {
               this.§=#@§[_loc1_].gotoAndStop("Selected");
               (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).x = this.§=#@§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§=#@§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§+"#§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§="8§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).§4!"§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
