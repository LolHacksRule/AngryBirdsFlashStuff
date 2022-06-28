package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §_-UO§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelSelectionState";
      
      protected static const §_-045§:Number = 0.5;
      
      public static var §_-yr§:String = "";
       
      
      protected var §_-RV§:Boolean = false;
      
      protected var §_-gT§:§_-gt§;
      
      protected var §_-g§:§_-gt§;
      
      protected var §_-Ii§:MovieClip;
      
      protected var §_-k2§:Array;
      
      protected var §_-0C§:Array;
      
      protected var §_-oC§:int = 0;
      
      protected var §_-00N§:int = 0;
      
      protected var §_-TW§:int = 0;
      
      protected var §_-0Ew§:Boolean = false;
      
      protected var §_-yx§:§_-dd§ = null;
      
      protected var §_-Ey§:Dictionary;
      
      protected var §_-se§:Array;
      
      protected var §_-t7§:Array;
      
      protected var §_-ny§:§_-0AO§;
      
      protected var §_-WL§:Number = 0;
      
      public function §_-UO§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§_-g§.mClip.numChildren > 0)
         {
            this.§_-g§.mClip.removeChildAt(0);
         }
         this.§_-0C§ = [];
         this.§_-k2§ = [];
      }
      
      protected function initView() : void
      {
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelSelection[0]);
         this.§_-g§ = §_-s0§.getItemByName("Container_LevelRepeaters") as §_-gt§;
         this.§_-gT§ = §_-s0§.getItemByName("Container_LevelSelection") as §_-gt§;
      }
      
      override public function activate() : void
      {
         super.activate();
         § in§.§_-Dc§.clearLevel();
         § in§.§_-Dc§.§_-Vf§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§_-0C§.length == 1)
         {
            (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_Next") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).setVisibility(false);
         }
         else
         {
            (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Next") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).setVisibility(true);
         }
         this.§_-WL§ = this.§_-g§.x;
         if(§_-s0§.stage)
         {
            §_-s0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-0BG§);
         }
      }
      
      protected function §_-0BG§(param1:KeyboardEvent) : void
      {
         if(this.§_-0C§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§_-rT§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§_-DB§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-6o§();
         this.§_-PD§();
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      protected function §_-6o§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-k2§.length)
         {
            if(-this.§_-g§.x >= this.§_-0C§[_loc1_].x && -this.§_-WL§ < this.§_-0C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§_-k2§.length)
               {
                  this.§_-k2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§_-TW§ = _loc1_;
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
               (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§_-g§.x <= this.§_-0C§[_loc1_].x && -this.§_-WL§ > this.§_-0C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§_-k2§.length)
               {
                  this.§_-k2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§_-TW§ = _loc1_;
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
               (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§_-TW§ != this.§_-oC§)
         {
            if(this.§_-oC§ > this.§_-TW§)
            {
               this.§_-00N§ = this.§_-TW§ + 1;
            }
            else if(this.§_-oC§ < this.§_-TW§)
            {
               this.§_-00N§ = this.§_-TW§ - 1;
            }
            else
            {
               this.§_-00N§ = this.§_-TW§;
            }
            this.§_-ny§.§_-A2§(this.§_-se§[this.§_-00N§].red,this.§_-se§[this.§_-00N§].green,this.§_-se§[this.§_-00N§].blue);
         }
         this.§_-WL§ = this.§_-g§.x;
      }
      
      protected function §_-PD§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-0C§.length)
         {
            _loc2_ = this.§_-g§.x + this.§_-0C§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§_-0C§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§_-0C§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§_-0C§[_loc1_].mClip.alpha < 1)
            {
               (this.§_-0C§[_loc1_] as §_-rD§).setEnabled(false);
            }
            else
            {
               (this.§_-0C§[_loc1_] as §_-rD§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§_-s0§.stage)
         {
            §_-s0§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-0BG§);
         }
         super.deActivate();
         this.§_-06O§();
         (§_-s0§.getItemByName("Button_Back") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§_-4w§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§_-yx§)
         {
            this.§_-yx§.stop();
            this.§_-yx§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         if(param2.length > 0 && param3 is §_-Ev§)
         {
            if((param3 as §_-Ev§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §_-Ev§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§_-0Ew§)
               {
                  LevelManager.§_-s8§(LevelManager.§_-Hc§(param2.toLowerCase()));
                  mNextState = StateCutScene.§_-pk§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §_-pX§.playSound("Menu_Back");
               mNextState = §_-Rp§.§_-pk§;
               break;
            case "NEXT":
               this.§_-DB§();
               break;
            case "PREV":
               this.§_-rT§();
               break;
            case "FULLSCREEN_BUTTON":
               §_-pX§.playSound("Menu_Confirm");
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      protected function §_-DB§() : void
      {
         §_-pX§.playSound("Menu_Confirm");
         if(!this.§_-0Ew§)
         {
            ++this.§_-oC§;
            this.§_-Mx§(this.§_-oC§);
         }
      }
      
      protected function §_-rT§() : void
      {
         §_-pX§.playSound("Menu_Confirm");
         if(!this.§_-0Ew§)
         {
            --this.§_-oC§;
            this.§_-Mx§(this.§_-oC§);
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
         this.§_-se§ = [];
         this.§_-t7§ = [];
         this.§_-oC§ = LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§;
         this.§_-00N§ = this.§_-oC§;
         this.§_-TW§ = this.§_-oC§;
         var _loc2_:§_-0C5§ = LevelManager.§_-h8§(LevelManager.§_-07s§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§_-27§(_loc2_.pageIndexes[_loc3_]);
            this.§_-se§.push(_loc2_.§_-3k§(_loc3_));
            this.§_-t7§.push(_loc2_.§_-vx§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§_-ny§ = new §_-0AO§(this.§_-se§[this.§_-oC§].red,this.§_-se§[this.§_-oC§].green,this.§_-se§[this.§_-oC§].blue,1);
         §_-s0§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§_-ny§);
         if(_loc2_.§_-Rx§)
         {
            _loc6_ = new (_loc5_ = §_-Fc§.§_-YE§(_loc2_.§_-Rx§))();
            §_-s0§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §_-s0§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§_-dx§)
         {
            _loc8_ = new (_loc7_ = §_-Fc§.§_-YE§(_loc2_.§_-dx§))();
            §_-s0§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §_-s0§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§_-Bi§();
         if(§_-yr§ == StateCutScene.§_-pk§)
         {
            §_-yr§ = "";
            this.§_-Mx§(this.§_-TW§);
         }
         else
         {
            this.§_-Mx§(this.§_-oC§,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§_-0C5§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §_-Fc§.§_-YE§(this.§_-t7§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§_-LI§)
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
         _loc8_.@button = this.§_-t7§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§_-05d§;
         (_loc9_ = new §_-05d§(_loc8_,this.§_-g§,null,null)).§_-OQ§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§_-g§.addComponent(_loc9_);
         this.§_-0C§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§_-Uj§);
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
      
      protected function §_-Bi§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§_-0C§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§_-Ey§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-0C§.length)
         {
            _loc1_ = §_-Fc§.§_-YE§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§_-Uj§ / 2 + _loc3_ - this.§_-0C§.length * _loc2_.width / 2;
            _loc2_.y = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).y - _loc2_.height / 2;
            if(_loc4_ == this.§_-oC§)
            {
               _loc2_.gotoAndStop("Selected");
               (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = _loc2_.x;
               (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§_-gT§.mClip.addChild(_loc2_);
            this.§_-Ey§[_loc2_] = _loc4_;
            this.§_-k2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-xn§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§_-0C§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
         (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
         (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x + (_loc3_ + 10);
         (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x - (_loc3_ + 10);
      }
      
      protected function §_-06O§() : void
      {
         if(this.§_-ny§)
         {
            this.§_-ny§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-k2§.length)
         {
            if(this.§_-gT§.mClip.contains(this.§_-k2§[_loc1_]))
            {
               this.§_-k2§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-xn§);
               this.§_-gT§.mClip.removeChild(this.§_-k2§[_loc1_]);
            }
            _loc1_++;
         }
         this.§_-k2§ = [];
         while(this.§_-g§.mClip.numChildren > 0)
         {
            this.§_-g§.mClip.removeChildAt(0);
         }
         this.§_-0C§ = [];
      }
      
      protected function §_-xn§(param1:MouseEvent) : void
      {
         if(!this.§_-0Ew§)
         {
            this.§_-Mx§(this.§_-Ey§[param1.target]);
         }
      }
      
      protected function §_-04o§(param1:MouseEvent) : void
      {
         if(!this.§_-0Ew§)
         {
            mNextState = §_-UO§.§_-pk§;
         }
      }
      
      protected function §_-Mx§(param1:int, param2:Boolean = false) : void
      {
         this.§_-0Ew§ = true;
         if(param1 > this.§_-0C§.length - 1)
         {
            param1 = this.§_-0C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§_-oC§ = param1;
         if(this.§_-oC§ > this.§_-TW§)
         {
            this.§_-00N§ = this.§_-TW§ + 1;
         }
         else if(this.§_-oC§ < this.§_-TW§)
         {
            this.§_-00N§ = this.§_-TW§ - 1;
         }
         var _loc3_:Number = -this.§_-0C§[param1].x;
         var _loc4_:Number = this.§_-0C§[param1].x + this.§_-g§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §_-045§;
         if(this.§_-yx§ != null)
         {
            this.§_-yx§.stop();
         }
         if(param2)
         {
            this.§_-g§.x = _loc3_;
         }
         else
         {
            this.§_-yx§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-g§,{"x":_loc3_},null,_loc5_,§_-cx§.§_-037§);
            this.§_-yx§.onComplete = this.§_-zQ§;
         }
         if(param2)
         {
            this.§_-zQ§();
         }
         else
         {
            this.§_-yx§.play();
         }
      }
      
      protected function §_-zQ§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-k2§.length)
         {
            if(_loc1_ == this.§_-oC§)
            {
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
               (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).x = this.§_-k2§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§_-k2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§_-0Ew§ = false;
         LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§ = this.§_-oC§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).§_-ab§.text = LevelManager.§_-h8§(LevelManager.§_-07s§).pageIndexes[param1];
      }
   }
}
