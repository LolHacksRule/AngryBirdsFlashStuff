package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
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
      
      public function StateLevelSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(levelManager,initState,name,localizationManager);
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
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.smLevelMain.clearLevel();
         AngryBirdsEngine.smLevelMain.setVisible(false);
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
      
      protected function onKeyEvent(keyEvent:KeyboardEvent) : void
      {
         if(keyEvent.keyCode == Keyboard.LEFT)
         {
            this.gotoPrevPage();
         }
         else if(keyEvent.keyCode == Keyboard.RIGHT)
         {
            this.gotoNextPage();
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         this.checkIfPagePassed();
         this.coverFlowAlpha();
      }
      
      protected function checkIfPagePassed() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.mDots.length; i++)
         {
            if(-this.mPageLayer.x >= this.mPages[i].x && -this.mPrevPosition < this.mPages[i].x)
            {
               for(j = 0; j < this.mDots.length; j++)
               {
                  this.mDots[j].gotoAndStop("UnSelected");
               }
               this.mCurrentPage = i;
               this.mDots[i].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[i].x;
               this.updatePageNumber(i);
            }
            if(-this.mPageLayer.x <= this.mPages[i].x && -this.mPrevPosition > this.mPages[i].x)
            {
               for(j = 0; j < this.mDots.length; j++)
               {
                  this.mDots[j].gotoAndStop("UnSelected");
               }
               this.mCurrentPage = i;
               this.mDots[i].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[i].x;
               this.updatePageNumber(i);
            }
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
         var distance:Number = NaN;
         for(var i:int = 0; i < this.mPages.length; i++)
         {
            distance = this.mPageLayer.x + this.mPages[i].x;
            distance = Math.abs(distance);
            if(distance > 1000)
            {
               distance = 1000;
            }
            if(Math.abs(this.mPages[i].mClip.alpha - (1 - distance / 1000)) > 0.0001)
            {
               this.mPages[i].mClip.alpha = 1 - distance / 1000;
            }
            if(this.mPages[i].mClip.alpha < 1)
            {
               (this.mPages[i] as UIRepeaterRovio).setEnabled(false);
            }
            else
            {
               (this.mPages[i] as UIRepeaterRovio).setEnabled(true);
            }
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
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.length > 0 && component is UIRepeaterButtonRovio)
         {
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.isPageTweenPlaying)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(eventName.toLowerCase()));
                  setNextState(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function gotoNextPage() : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         if(!this.isPageTweenPlaying)
         {
            ++this.mSelectedPage;
            this.moveToPage(this.mSelectedPage);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         if(!this.isPageTweenPlaying)
         {
            --this.mSelectedPage;
            this.moveToPage(this.mSelectedPage);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var levels:Array = null;
         var leftThemeCls:Class = null;
         var leftThemeClip:MovieClip = null;
         var rightThemeCls:Class = null;
         var rightThemeClip:MovieClip = null;
         var offsetX:Number = 0;
         this.mPageColor = [];
         this.mLevelButtons = [];
         var episode:EpisodeModel = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.mSelectedPage = episode.currentPage;
         this.mNextPage = this.mSelectedPage;
         this.mCurrentPage = this.mSelectedPage;
         for(var i:Number = 0; i < episode.pageCount; i++)
         {
            levels = episode.getLevelNamesForPage(i);
            this.mPageColor.push(episode.getColorForPage(i));
            this.mLevelButtons.push(episode.getLevelButtonForPage(i));
            offsetX = this.addLevelPage(levels,i,offsetX,episode);
         }
         this.mColorFadeLayer = new ColorFadeLayer(this.mPageColor[this.mSelectedPage].red,this.mPageColor[this.mSelectedPage].green,this.mPageColor[this.mSelectedPage].blue,1);
         mUIView.getItemByName("MovieClip_ColorFade").changeMovieClip(this.mColorFadeLayer);
         if(episode.menuImageLeft)
         {
            leftThemeCls = AssetCache.getAssetFromCache(episode.menuImageLeft);
            leftThemeClip = new leftThemeCls();
            mUIView.getItemByName("MovieClip_ThemeLeft").changeMovieClip(leftThemeClip);
         }
         else
         {
            mUIView.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(episode.menuImageRight)
         {
            rightThemeCls = AssetCache.getAssetFromCache(episode.menuImageRight);
            rightThemeClip = new rightThemeCls();
            mUIView.getItemByName("MovieClip_ThemeRight").changeMovieClip(rightThemeClip);
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
      
      protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:EpisodeModel) : Number
      {
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         var list:Array = new Array();
         list[0] = new Array();
         var buttonCls:Class = AssetCache.getAssetFromCache(this.mLevelButtons[pageNum]);
         for(var i:Number = 0; i < levels.length; i++)
         {
            key = levels[i];
            isOpen = AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(key);
            clip = this.makeButtonForLevel(key,isOpen,buttonCls,i,pageNum);
            but = <Button/>;
            but.@name = key;
            if(isOpen || AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               but.@MouseUp = key;
            }
            but.@scaleOnMouseOver = "True";
            list[0].push(new Array(but,null,clip));
            if(isOpen)
            {
               clip.MovieClip_Stars.mouseEnabled = false;
            }
            clip.TextField_LevelNum.text.mouseEnabled = false;
         }
         repeaterXML = <Repeater/>;
         if(levels.length == 15)
         {
            repeaterXML.@name = "Repeater_LevelSelection15";
         }
         else if(levels.length == 12)
         {
            repeaterXML.@name = "Repeater_LevelSelection12";
         }
         else
         {
            repeaterXML.@name = "Repeater_LevelSelection";
         }
         repeaterXML.@button = this.mLevelButtons[pageNum];
         repeaterXML.@enabled = "True";
         repeaterXML.@buttonSelectionType = "NO_SELECTION";
         repeaterXML.@fromLibrary = "true";
         var levelRepeater:UIRepeaterRovio = new UIRepeaterRovio(repeaterXML,this.mPageLayer,null,null);
         levelRepeater.loadTabs(list);
         levelRepeater.setVisibility(true);
         levelRepeater.x += offsetX;
         this.mPageLayer.addComponent(levelRepeater);
         this.mPages.push(levelRepeater);
         return Number(offsetX + AngryBirdsBase.screenWidth);
      }
      
      protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var numStars:Number = NaN;
         var clip:MovieClip = new buttonClass();
         clip.TextField_LevelNum.text.text = (index + 1).toString();
         if(isOpen)
         {
            clip.gotoAndStop("Open");
            clip.MovieClip_MEInUse.visible = false;
            if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(level) == 100)
            {
               clip.MovieClip_Feather.gotoAndStop("Visible");
               clip.MovieClip_Feather.mouseEnabled = false;
            }
            else
            {
               clip.MovieClip_Feather.gotoAndStop("Hidden");
               clip.MovieClip_Feather.mouseEnabled = false;
            }
         }
         else
         {
            clip.gotoAndStop("Locked");
         }
         clip.isOpen = isOpen;
         if(isOpen)
         {
            numStars = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(level);
            clip.MovieClip_Stars.gotoAndStop(numStars.toString() + "_stars");
         }
         return clip;
      }
      
      protected function configurePageButtons() : void
      {
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(this.mPages.length == 1)
         {
            return;
         }
         var offsetX:Number = 0;
         this.mDotShortCutToPageNum = new Dictionary();
         for(var i:int = 0; i < this.mPages.length; i++)
         {
            dotCls = AssetCache.getAssetFromCache("Button_Dot");
            image = new dotCls();
            image.x = AngryBirdsBase.screenWidth / 2 + offsetX - this.mPages.length * image.width / 2;
            image.y = (mUIView.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            if(i == this.mSelectedPage)
            {
               image.gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = image.x;
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).y = image.y - image.height;
               this.updatePageNumber(i);
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            this.mSelectionContainer.mClip.addChild(image);
            this.mDotShortCutToPageNum[image] = i;
            this.mDots.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
            image.buttonMode = true;
         }
         offsetX = this.mPages.length * image.width / 2 + image.width * 1.5;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = (mUIView.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      protected function cleanDynamicContent() : void
      {
         if(this.mColorFadeLayer)
         {
            this.mColorFadeLayer.clean();
         }
         for(var i:int = 0; i < this.mDots.length; i++)
         {
            if(this.mSelectionContainer.mClip.contains(this.mDots[i]))
            {
               this.mDots[i].removeEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
               this.mSelectionContainer.mClip.removeChild(this.mDots[i]);
            }
         }
         this.mDots = [];
         this.mPageLayer.clearChildren();
         this.mPages = [];
      }
      
      protected function onDotClick(e:MouseEvent) : void
      {
         if(!this.isPageTweenPlaying)
         {
            this.moveToPage(this.mDotShortCutToPageNum[e.target]);
         }
      }
      
      protected function onChapterClick(e:MouseEvent) : void
      {
         if(!this.isPageTweenPlaying)
         {
            setNextState(StateLevelSelection.STATE_NAME);
         }
      }
      
      protected function moveToPage(pageNum:int, instantMove:Boolean = false) : void
      {
         this.isPageTweenPlaying = true;
         if(pageNum > this.mPages.length - 1)
         {
            pageNum = this.mPages.length - 1;
         }
         else if(pageNum < 0)
         {
            pageNum = 0;
         }
         this.mSelectedPage = pageNum;
         if(this.mSelectedPage > this.mCurrentPage)
         {
            this.mNextPage = this.mCurrentPage + 1;
         }
         else if(this.mSelectedPage < this.mCurrentPage)
         {
            this.mNextPage = this.mCurrentPage - 1;
         }
         var newX:Number = -this.mPages[pageNum].x;
         var distance:Number = this.mPages[pageNum].x + this.mPageLayer.x;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 1024;
         tweenTime *= TWEEN_TIME;
         if(this.mChapterTween != null)
         {
            this.mChapterTween.stop();
         }
         if(instantMove)
         {
            this.mPageLayer.x = newX;
         }
         else
         {
            this.mChapterTween = TweenManager.instance.createTween(this.mPageLayer,{"x":newX},null,tweenTime,Quadratic.easeOut);
            this.mChapterTween.onComplete = this.onPageTweenComplete;
         }
         if(instantMove)
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
         for(var i:int = 0; i < this.mDots.length; i++)
         {
            if(i == this.mSelectedPage)
            {
               this.mDots[i].gotoAndStop("Selected");
               (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).x = this.mDots[i].x;
               this.updatePageNumber(i);
            }
            else
            {
               this.mDots[i].gotoAndStop("UnSelected");
            }
         }
         this.isPageTweenPlaying = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.mSelectedPage;
      }
      
      protected function updatePageNumber(index:int) : void
      {
         (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).mTextField.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(index).toString();
      }
   }
}
