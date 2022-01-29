package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const TWEEN_TIME:Number = 0.5;
       
      
      protected var mEpisodeLayer:Sprite;
      
      protected var mSelectionContainer:UIContainerRovio;
      
      protected var mEpisodes:Array;
      
      protected var mDots:Array;
      
      protected var mSelectedChapter:int = 0;
      
      protected var mChapterLayerX:Number = 0;
      
      protected var mChapterLayerY:Number = 0;
      
      protected var mChapterTween:ISimpleTween = null;
      
      protected var isChapterTweenPlaying:Boolean = false;
      
      protected var mPrevPositionX:Number = 0;
      
      public function StateEpisodeSelection(param1:LevelManager, param2:LocalizationManager, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsEngine.smLevelMain.setVisible(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:EpisodeModel = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mEpisodes)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForEpisode(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc3_:EpisodeModel = null;
         this.mSelectionContainer = mUIView.getItemByName("Container_ChapterSelection") as UIContainerRovio;
         this.mEpisodes = [];
         this.mDots = [];
         var _loc1_:Number = 0;
         this.mEpisodeLayer = new Sprite();
         this.mEpisodeLayer.y = AngryBirdsBase.screenHeight / 2;
         this.mChapterLayerX = AngryBirdsBase.screenWidth / 2;
         this.mEpisodeLayer.x = this.mChapterLayerX;
         this.mSelectionContainer.mClip.addChild(this.mEpisodeLayer);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.isHidden)
            {
               _loc1_ = this.addEpisode(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.addExtraButtons(_loc1_);
         this.configureChapterButtons();
      }
      
      protected function addExtraButtons(param1:Number) : void
      {
         param1 = this.addEpisode("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.addEpisode("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mEpisodes.length)
         {
            _loc3_ = new AssetCache.getAssetFromCache("Button_Dot")();
            if(_loc2_ == this.mSelectedChapter)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.mEpisodes.length * _loc3_.width / 2;
            _loc3_.y = (mUIView.getItemByName("Button_Next") as UIButtonRovio).y - _loc3_.height / 2;
            this.mSelectionContainer.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.mDots.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
            _loc2_++;
         }
         _loc1_ = this.mEpisodes.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = (mUIView.getItemByName("Button_Next") as UIButtonRovio).x + (_loc1_ + 10);
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x - (_loc1_ + 10);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:EpisodeModel = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new AssetCache.getAssetFromCache(param1)()).x = param2;
         this.mEpisodeLayer.addChild(_loc4_);
         this.mEpisodes.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForEpisode(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(param3);
            }
         }
         return param2;
      }
      
      private function onDotClick(param1:MouseEvent) : void
      {
         if(!this.isChapterTweenPlaying)
         {
            this.moveToChapter(this.mDots.indexOf(param1.target));
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.isChapterTweenPlaying)
         {
            _loc2_ = this.mEpisodes.indexOf(param1.currentTarget);
            if(this.mSelectedChapter != _loc2_)
            {
               this.moveToChapter(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               setNextState(StateLevelSelection.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.checkIfPagePassed();
         this.coverFlowScale();
      }
      
      protected function coverFlowScale() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.mEpisodes.length)
         {
            _loc2_ = this.mEpisodeLayer.x + this.mEpisodes[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.mEpisodes[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.mEpisodes[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.mEpisodes[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.mEpisodes[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.mDots.length)
         {
            if(-this.mEpisodeLayer.x + 800 >= this.mEpisodes[_loc1_].x && -this.mPrevPositionX < this.mEpisodes[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.mDots.length)
               {
                  this.mDots[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.mDots[_loc1_].gotoAndStop("Selected");
            }
            if(-this.mEpisodeLayer.x + 800 <= this.mEpisodes[_loc1_].x && -this.mPrevPositionX > this.mEpisodes[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.mDots.length)
               {
                  this.mDots[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.mDots[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.mPrevPositionX = this.mEpisodeLayer.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsEngine.smLevelMain.clearLevel();
         this.resetButtons();
      }
      
      protected function resetButtons() : void
      {
         (mUIView.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back");
               setNextState(StateStart.STATE_NAME);
               break;
            case "PREV":
               SoundEngine.playSound("Menu_Confirm");
               if(!this.isChapterTweenPlaying)
               {
                  --this.mSelectedChapter;
                  this.moveToChapter(this.mSelectedChapter);
                  break;
               }
               break;
            case "NEXT":
               SoundEngine.playSound("Menu_Confirm");
               if(!this.isChapterTweenPlaying)
               {
                  ++this.mSelectedChapter;
                  this.moveToChapter(this.mSelectedChapter);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function moveToChapter(param1:int) : void
      {
         this.isChapterTweenPlaying = true;
         if(param1 > this.mEpisodes.length - 1)
         {
            param1 = this.mEpisodes.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.mSelectedChapter = param1;
         var _loc2_:Number = -this.mEpisodes[param1].x + this.mChapterLayerX;
         var _loc3_:Number = this.mEpisodeLayer.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * TWEEN_TIME) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mChapterTween != null)
         {
            this.mChapterTween.stop();
         }
         this.mChapterTween = TweenManager.instance.createTween(this.mEpisodeLayer,{"x":_loc2_},null,_loc4_,Quadratic.easeOut);
         this.mChapterTween.onComplete = this.onChapterTweenComplete;
         this.mChapterTween.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mDots.length)
         {
            if(_loc1_ == this.mSelectedChapter)
            {
               this.mDots[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.mDots[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.isChapterTweenPlaying = false;
      }
   }
}
