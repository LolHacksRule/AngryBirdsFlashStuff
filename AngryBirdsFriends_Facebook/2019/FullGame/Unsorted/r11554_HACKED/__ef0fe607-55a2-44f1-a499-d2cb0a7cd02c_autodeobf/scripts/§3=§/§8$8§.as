package §3=§
{
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§#$-§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>;§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §9#^§.§"$ §;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§]U§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §8$8§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §;#-§:Number = 0.5;
      
      public static var §[">§:String = "";
       
      
      protected var §4"x§:Boolean = false;
      
      protected var §[q§:§<c§;
      
      protected var §+$'§:§<c§;
      
      protected var §@j§:MovieClip;
      
      protected var §%!u§:Array;
      
      protected var §]D§:Array;
      
      protected var §&#>§:int = 0;
      
      protected var §#"J§:int = 0;
      
      protected var §#"0§:int = 0;
      
      protected var §6"G§:Boolean = false;
      
      protected var §%#-§:§]%§ = null;
      
      protected var §4"$§:Dictionary;
      
      protected var §]W§:Array;
      
      protected var §3q§:Array;
      
      protected var §>5§:§]U§;
      
      protected var §]#&§:Number = 0;
      
      public function §8$8§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§+$'§.mClip.numChildren > 0)
         {
            this.§+$'§.mClip.removeChildAt(0);
         }
         this.§]D§ = [];
         this.§%!u§ = [];
      }
      
      protected function initView() : void
      {
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelSelection[0]);
         this.§+$'§ = §<"`§.getItemByName("Container_LevelRepeaters") as §<c§;
         this.§[q§ = §<"`§.getItemByName("Container_LevelSelection") as §<c§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.§;`§.clearLevel();
         §%"T§.§;`§.setVisible(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§]D§.length == 1)
         {
            (§<"`§.getItemByName("Button_Prev") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_Next") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).setVisibility(false);
         }
         else
         {
            (§<"`§.getItemByName("Button_Prev") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Next") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).setVisibility(true);
         }
         this.§]#&§ = this.§+$'§.x;
         if(§<"`§.stage)
         {
            §<"`§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
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
         this.§0$=§();
         this.§8q§();
      }
      
      protected function §0$=§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!u§.length)
         {
            if(-this.§+$'§.x >= this.§]D§[_loc1_].x && -this.§]#&§ < this.§]D§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%!u§.length)
               {
                  this.§%!u§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#"0§ = _loc1_;
               this.§%!u§[_loc1_].gotoAndStop("Selected");
               (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).x = this.§%!u§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§+$'§.x <= this.§]D§[_loc1_].x && -this.§]#&§ > this.§]D§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%!u§.length)
               {
                  this.§%!u§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#"0§ = _loc1_;
               this.§%!u§[_loc1_].gotoAndStop("Selected");
               (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).x = this.§%!u§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§#"0§ != this.§&#>§)
         {
            if(this.§&#>§ > this.§#"0§)
            {
               this.§#"J§ = this.§#"0§ + 1;
            }
            else if(this.§&#>§ < this.§#"0§)
            {
               this.§#"J§ = this.§#"0§ - 1;
            }
            else
            {
               this.§#"J§ = this.§#"0§;
            }
            this.§>5§.§1#,§(this.§]W§[this.§#"J§].red,this.§]W§[this.§#"J§].green,this.§]W§[this.§#"J§].blue);
         }
         this.§]#&§ = this.§+$'§.x;
      }
      
      protected function §8q§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]D§.length)
         {
            _loc2_ = this.§+$'§.x + this.§]D§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§]D§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§]D§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§]D§[_loc1_].mClip.alpha < 1)
            {
               (this.§]D§[_loc1_] as §>;§).setEnabled(false);
            }
            else
            {
               (this.§]D§[_loc1_] as §>;§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§<"`§.stage)
         {
            §<"`§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§<!#§();
         (§<"`§.getItemByName("Button_Back") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§%#-§)
         {
            this.§%#-§.stop();
            this.§%#-§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         if(param2.length > 0 && param3 is §#$-§)
         {
            if((param3 as §#$-§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §#$-§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§6"G§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §%D§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§7W§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         if(!this.§6"G§)
         {
            ++this.§&#>§;
            this.moveToPage(this.§&#>§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         if(!this.§6"G§)
         {
            --this.§&#>§;
            this.moveToPage(this.§&#>§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc6_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§]W§ = [];
         this.§3q§ = [];
         var _loc2_:§[#5§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§&#>§ = _loc2_.currentPage;
         this.§#"J§ = this.§&#>§;
         this.§#"0§ = this.§&#>§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§'B§)
         {
            _loc4_ = _loc2_.§4@§(_loc3_);
            this.§]W§.push(_loc2_.§3P§(_loc3_));
            this.§3q§.push(_loc2_.§=!w§(_loc3_));
            _loc1_ = this.§8_§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§>5§ = new §]U§(this.§]W§[this.§&#>§].red,this.§]W§[this.§&#>§].green,this.§]W§[this.§&#>§].blue,1);
         §<"`§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§>5§);
         if(_loc2_.§,"B§)
         {
            _loc6_ = new §2"O§.§`>§(_loc2_.§,"B§)();
            §<"`§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §<"`§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§>!E§)
         {
            _loc8_ = new §2"O§.§`>§(_loc2_.§>!E§)();
            §<"`§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §<"`§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§?0§();
         if(§[">§ == StateCutScene.STATE_NAME)
         {
            §[">§ = "";
            this.moveToPage(this.§#"0§);
         }
         else
         {
            this.moveToPage(this.§&#>§,true);
         }
      }
      
      protected function §8_§(param1:Array, param2:int, param3:Number, param4:§[#5§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §2"O§.§`>§(this.§3q§[param2]);
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
         _loc8_.@button = this.§3q§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§>;§;
         (_loc9_ = new §>;§(_loc8_,this.§+$'§,null,null)).§""]§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§+$'§.§0$$§(_loc9_);
         this.§]D§.push(_loc9_);
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
      
      protected function §?0§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§]D§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§4"$§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§]D§.length)
         {
            _loc1_ = §2"O§.§`>§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§]D§.length * _loc2_.width / 2;
            _loc2_.y = (§<"`§.getItemByName("Button_Next") as §"S§).y - _loc2_.height / 2;
            if(_loc4_ == this.§&#>§)
            {
               _loc2_.gotoAndStop("Selected");
               (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).x = _loc2_.x;
               (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§[q§.mClip.addChild(_loc2_);
            this.§4"$§[_loc2_] = _loc4_;
            this.§%!u§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#c§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§]D§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§<"`§.getItemByName("Button_Next") as §"S§).x = AngryBirdsBase.screenWidth / 2;
         (§<"`§.getItemByName("Button_Prev") as §"S§).x = AngryBirdsBase.screenWidth / 2;
         (§<"`§.getItemByName("Button_Next") as §"S§).x = (§<"`§.getItemByName("Button_Next") as §"S§).x + (_loc3_ + 10);
         (§<"`§.getItemByName("Button_Prev") as §"S§).x = (§<"`§.getItemByName("Button_Prev") as §"S§).x - (_loc3_ + 10);
      }
      
      protected function §<!#§() : void
      {
         if(this.§>5§)
         {
            this.§>5§.§4#y§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!u§.length)
         {
            if(this.§[q§.mClip.contains(this.§%!u§[_loc1_]))
            {
               this.§%!u§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#c§);
               this.§[q§.mClip.removeChild(this.§%!u§[_loc1_]);
            }
            _loc1_++;
         }
         this.§%!u§ = [];
         this.§+$'§.§8#s§();
         this.§]D§ = [];
      }
      
      protected function §#c§(param1:MouseEvent) : void
      {
         if(!this.§6"G§)
         {
            this.moveToPage(this.§4"$§[param1.target]);
         }
      }
      
      protected function §;!h§(param1:MouseEvent) : void
      {
         if(!this.§6"G§)
         {
            §%D§(§8$8§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§6"G§ = true;
         if(param1 > this.§]D§.length - 1)
         {
            param1 = this.§]D§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§&#>§ = param1;
         if(this.§&#>§ > this.§#"0§)
         {
            this.§#"J§ = this.§#"0§ + 1;
         }
         else if(this.§&#>§ < this.§#"0§)
         {
            this.§#"J§ = this.§#"0§ - 1;
         }
         var _loc3_:Number = -this.§]D§[param1].x;
         var _loc4_:Number = this.§]D§[param1].x + this.§+$'§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §;#-§;
         if(this.§%#-§ != null)
         {
            this.§%#-§.stop();
         }
         if(param2)
         {
            this.§+$'§.x = _loc3_;
         }
         else
         {
            this.§%#-§ = §'#n§.§?q§.§9!N§(this.§+$'§,{"x":_loc3_},null,_loc5_,§"$ §.easeOut);
            this.§%#-§.onComplete = this.§3#§;
         }
         if(param2)
         {
            this.§3#§();
         }
         else
         {
            this.§%#-§.play();
         }
      }
      
      protected function §3#§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!u§.length)
         {
            if(_loc1_ == this.§&#>§)
            {
               this.§%!u§[_loc1_].gotoAndStop("Selected");
               (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).x = this.§%!u§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§%!u§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§6"G§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§&#>§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).§^g§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
