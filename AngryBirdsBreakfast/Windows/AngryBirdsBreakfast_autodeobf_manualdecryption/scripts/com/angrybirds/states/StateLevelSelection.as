package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class StateLevelSelection extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const TWEEN_TIME:Number = 0.5;
      
      public static var sPreviousState:String = "";
       
      
      protected var mStatsRequested:Boolean = false;
      
      protected var mSelectionContainer:UIContainerRovio;
      
      protected var mPageLayer:UIContainerRovio;
      
      protected var mMightyEagleInUseClip:MovieClip;
      
      protected var mDots:Array;
      
      protected var mPages:Array;
      
      protected var mSelectedPage:int = 0;
      
      protected var mNextPage:int = 0;
      
      protected var mCurrentPage:int = 0;
      
      protected var isPageTweenPlaying:Boolean = false;
      
      protected var mChapterTween:ISimpleTween = null;
      
      protected var mDotShortCutToPageNum:Dictionary;
      
      protected var mPageColor:Array;
      
      protected var mLevelButtons:Array;
      
      protected var mColorFadeLayer:ColorFadeLayer;
      
      protected var mPrevPosition:Number = 0;
      
      public function StateLevelSelection(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.mPageLayer.mClip.numChildren > 0)
         {
            this.mPageLayer.mClip.removeChildAt(0);
         }
         this.mPages = [];
         this.mDots = [];
      }
      
      protected function initView() : void
      {
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelSelection[0]);
         this.mPageLayer = mUIView.getItemByName("Container_LevelRepeaters") as UIContainerRovio;
         this.mSelectionContainer = mUIView.getItemByName("Container_LevelSelection") as UIContainerRovio;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsEngine.mIsRunning.clearLevel();
         AngryBirdsEngine.mIsRunning.setVisible(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.mPages.length == 1)
         {
            (mUIView.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_Next") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(false);
         }
         else
         {
            (mUIView.getItemByName("Button_Prev") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Next") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).setVisibility(true);
         }
         this.mPrevPosition = this.mPageLayer.x;
         if(mUIView.stage)
         {
            mUIView.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
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
         this.checkIfPagePassed();
         this.coverFlowAlpha();
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.mDots.length)
         {
            if(-this.mPageLayer.x >= this.mPages[_loc1_].x && -this.mPrevPosition < this.mPages[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.mDots.length)
               {
                  this.mDots[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.mCurrentPage = _loc1_;
               this.mDots[_loc1_].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.mPageLayer.x <= this.mPages[_loc1_].x && -this.mPrevPosition > this.mPages[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.mDots.length)
               {
                  this.mDots[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.mCurrentPage = _loc1_;
               this.mDots[_loc1_].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.mCurrentPage != this.mSelectedPage)
         {
            if(this.mSelectedPage > this.mCurrentPage)
            {
               this.mNextPage = this.mCurrentPage + 1;
            }
            else if(this.mSelectedPage < this.mCurrentPage)
            {
               this.mNextPage = this.mCurrentPage - 1;
            }
            else
            {
               this.mNextPage = this.mCurrentPage;
            }
            this.mColorFadeLayer.fadeToColor(this.mPageColor[this.mNextPage].red,this.mPageColor[this.mNextPage].green,this.mPageColor[this.mNextPage].blue);
         }
         this.mPrevPosition = this.mPageLayer.x;
      }
      
      protected function coverFlowAlpha() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.mPages.length)
         {
            _loc2_ = this.mPageLayer.x + this.mPages[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.mPages[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.mPages[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.mPages[_loc1_].mClip.alpha < 1)
            {
               (this.mPages[_loc1_] as UIRepeaterRovio).setEnabled(false);
            }
            else
            {
               (this.mPages[_loc1_] as UIRepeaterRovio).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(mUIView.stage)
         {
            mUIView.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.cleanDynamicContent();
         (mUIView.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.mChapterTween)
         {
            this.mChapterTween.stop();
            this.mChapterTween = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(param2.length > 0 && param3 is UIRepeaterButtonRovio)
         {
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.isPageTweenPlaying)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  setNextState(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back");
               setNextState(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function gotoNextPage() : void
      {
         SoundEngine.playSound("Menu_Confirm");
         if(!this.isPageTweenPlaying)
         {
            ++this.mSelectedPage;
            this.moveToPage(this.mSelectedPage);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         SoundEngine.playSound("Menu_Confirm");
         if(!this.isPageTweenPlaying)
         {
            --this.mSelectedPage;
            this.moveToPage(this.mSelectedPage);
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
         this.mPageColor = [];
         this.mLevelButtons = [];
         var _loc2_:EpisodeModel = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.mSelectedPage = _loc2_.currentPage;
         this.mNextPage = this.mSelectedPage;
         this.mCurrentPage = this.mSelectedPage;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageCount)
         {
            _loc4_ = _loc2_.getLevelNamesForPage(_loc3_);
            this.mPageColor.push(_loc2_.getColorForPage(_loc3_));
            this.mLevelButtons.push(_loc2_.getLevelButtonForPage(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.mColorFadeLayer = new ColorFadeLayer(this.mPageColor[this.mSelectedPage].red,this.mPageColor[this.mSelectedPage].green,this.mPageColor[this.mSelectedPage].blue,1);
         mUIView.getItemByName("MovieClip_ColorFade").changeMovieClip(this.mColorFadeLayer);
         if(_loc2_.menuImageLeft)
         {
            _loc6_ = new (_loc5_ = AssetCache.getAssetFromCache(_loc2_.menuImageLeft))();
            mUIView.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            mUIView.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.menuImageRight)
         {
            _loc8_ = new (_loc7_ = AssetCache.getAssetFromCache(_loc2_.menuImageRight))();
            mUIView.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            mUIView.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.configurePageButtons();
         if(sPreviousState == StateCutScene.STATE_NAME)
         {
            sPreviousState = "";
            this.moveToPage(this.mCurrentPage);
         }
         else
         {
            this.moveToPage(this.mSelectedPage,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:EpisodeModel) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = AssetCache.getAssetFromCache(this.mLevelButtons[param2]);
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
         _loc8_.@button = this.mLevelButtons[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:UIRepeaterRovio;
         (_loc9_ = new UIRepeaterRovio(_loc8_,this.mPageLayer,null,null)).loadTabs(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.mPageLayer.com.angrybirds.sfx(_loc9_);
         this.mPages.push(_loc9_);
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
      
      protected function configurePageButtons() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.mPages.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.mDotShortCutToPageNum = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.mPages.length)
         {
            _loc1_ = AssetCache.getAssetFromCache("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.mPages.length * _loc2_.width / 2;
            _loc2_.y = (mUIView.getItemByName("Button_Next") as UIButtonRovio).y - _loc2_.height / 2;
            if(_loc4_ == this.mSelectedPage)
            {
               _loc2_.gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = _loc2_.x;
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.mSelectionContainer.mClip.addChild(_loc2_);
            this.mDotShortCutToPageNum[_loc2_] = _loc4_;
            this.mDots.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.mPages.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = (mUIView.getItemByName("Button_Next") as UIButtonRovio).x + (_loc3_ + 10);
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x - (_loc3_ + 10);
      }
      
      protected function cleanDynamicContent() : void
      {
         if(this.mColorFadeLayer)
         {
            this.mColorFadeLayer.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.mDots.length)
         {
            if(this.mSelectionContainer.mClip.contains(this.mDots[_loc1_]))
            {
               this.mDots[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
               this.mSelectionContainer.mClip.removeChild(this.mDots[_loc1_]);
            }
            _loc1_++;
         }
         this.mDots = [];
         while(this.mPageLayer.mClip.numChildren > 0)
         {
            this.mPageLayer.mClip.removeChildAt(0);
         }
         this.mPages = [];
      }
      
      protected function onDotClick(param1:MouseEvent) : void
      {
         if(!this.isPageTweenPlaying)
         {
            this.moveToPage(this.mDotShortCutToPageNum[param1.target]);
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!this.isPageTweenPlaying)
         {
            setNextState(StateLevelSelection.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.isPageTweenPlaying = true;
         if(param1 > this.mPages.length - 1)
         {
            param1 = this.mPages.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.mSelectedPage = param1;
         if(this.mSelectedPage > this.mCurrentPage)
         {
            this.mNextPage = this.mCurrentPage + 1;
         }
         else if(this.mSelectedPage < this.mCurrentPage)
         {
            this.mNextPage = this.mCurrentPage - 1;
         }
         var _loc3_:Number = -this.mPages[param1].x;
         var _loc4_:Number = this.mPages[param1].x + this.mPageLayer.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * TWEEN_TIME;
         if(this.mChapterTween != null)
         {
            this.mChapterTween.stop();
         }
         if(param2)
         {
            this.mPageLayer.x = _loc3_;
         }
         else
         {
            this.mChapterTween = TweenManager.instance.createTween(this.mPageLayer,{"x":_loc3_},null,_loc5_,Quadratic.easeOut);
            this.mChapterTween.onComplete = this.onPageTweenComplete;
         }
         if(param2)
         {
            this.onPageTweenComplete();
         }
         else
         {
            this.mChapterTween.play();
         }
      }
      
      protected function onPageTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mDots.length)
         {
            if(_loc1_ == this.mSelectedPage)
            {
               this.mDots[_loc1_].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.mDots[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.isPageTweenPlaying = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.mSelectedPage;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).mTextField.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
