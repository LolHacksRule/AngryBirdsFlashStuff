package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
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
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
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
      
      public function StateEpisodeSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(levelManager,initObject,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.smLevelMain.setVisible(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var image:MovieClip = null;
         var episode:EpisodeModel = null;
         var chapterNum:int = 0;
         for each(image in this.mEpisodes)
         {
            episode = mLevelManager.getEpisode(chapterNum);
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(episode) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(episode);
            }
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(episode) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(episode);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForEpisode(episode);
            }
            chapterNum++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var chapter:EpisodeModel = null;
         this.mSelectionContainer = mUIView.getItemByName("Container_ChapterSelection") as UIContainerRovio;
         this.mEpisodes = [];
         this.mDots = [];
         var offsetX:Number = 0;
         this.mEpisodeLayer = new Sprite();
         this.mEpisodeLayer.y = AngryBirdsBase.screenHeight / 2;
         this.mChapterLayerX = AngryBirdsBase.screenWidth / 2;
         this.mEpisodeLayer.x = this.mChapterLayerX;
         this.mSelectionContainer.mClip.addChild(this.mEpisodeLayer);
         for(var chapterNum:int = 0; chapterNum < mLevelManager.getEpisodeCount(); chapterNum++)
         {
            chapter = mLevelManager.getEpisode(chapterNum);
            if(!chapter.isHidden)
            {
               offsetX = this.addEpisode(chapter.menuImage,offsetX,chapter);
            }
         }
         this.addExtraButtons(offsetX);
         this.configureChapterButtons();
      }
      
      protected function addExtraButtons(currentXoffset:Number) : void
      {
         currentXoffset = this.addEpisode("MovieClip_Chapter_Selection_More_Coming",currentXoffset);
         currentXoffset = this.addEpisode("MovieClip_Chapter_Selection_Shop",currentXoffset);
      }
      
      protected function configureChapterButtons() : void
      {
         var image:MovieClip = null;
         var offsetX:Number = 0;
         for(var i:int = 0; i < this.mEpisodes.length; i++)
         {
            image = new AssetCache.getAssetFromCache("Button_Dot")();
            if(i == this.mSelectedChapter)
            {
               image.gotoAndStop("Selected");
            }
            else
            {
               image.gotoAndStop("UnSelected");
            }
            image.x = AngryBirdsBase.screenWidth / 2 + offsetX - this.mEpisodes.length * image.width / 2;
            image.y = (mUIView.getItemByName("Button_Next") as UIButtonRovio).y - image.height / 2;
            this.mSelectionContainer.mClip.addChild(image);
            image.buttonMode = true;
            this.mDots.push(image);
            offsetX += image.width;
            image.addEventListener(MouseEvent.MOUSE_DOWN,this.onDotClick);
         }
         offsetX = this.mEpisodes.length * image.width / 2 + image.width * 1.5;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = AngryBirdsBase.screenWidth / 2;
         (mUIView.getItemByName("Button_Next") as UIButtonRovio).x = (mUIView.getItemByName("Button_Next") as UIButtonRovio).x + (offsetX + 10);
         (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x = (mUIView.getItemByName("Button_Prev") as UIButtonRovio).x - (offsetX + 10);
      }
      
      protected function addEpisode(menuImage:String, offsetX:Number, episode:EpisodeModel = null) : Number
      {
         var image:MovieClip = new AssetCache.getAssetFromCache(menuImage)();
         image.x = offsetX;
         this.mEpisodeLayer.addChild(image);
         this.mEpisodes.push(image);
         offsetX += image.width * 1.55;
         image.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         image.buttonMode = true;
         if(episode)
         {
            if(image.Textfield_CollectedStars != null)
            {
               image.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(episode) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(episode);
            }
            if(image.Textfield_Score != null)
            {
               image.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForEpisode(episode);
            }
            if(image.Textfield_ME_Score != null)
            {
               image.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(episode) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(episode);
            }
         }
         return offsetX;
      }
      
      private function onDotClick(e:MouseEvent) : void
      {
         if(!this.isChapterTweenPlaying)
         {
            this.moveToChapter(this.mDots.indexOf(e.target));
         }
      }
      
      protected function onChapterClick(e:MouseEvent) : void
      {
         var episodeIndex:int = 0;
         if(!this.isChapterTweenPlaying)
         {
            episodeIndex = this.mEpisodes.indexOf(e.currentTarget);
            if(this.mSelectedChapter != episodeIndex)
            {
               this.moveToChapter(episodeIndex);
            }
            else if(episodeIndex < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(episodeIndex);
               setNextState(StateLevelSelection.STATE_NAME);
            }
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         this.checkIfPagePassed();
         this.coverFlowScale();
      }
      
      protected function coverFlowScale() : void
      {
         var distance:Number = NaN;
         for(var i:int = 0; i < this.mEpisodes.length; i++)
         {
            distance = this.mEpisodeLayer.x + this.mEpisodes[i].x - AngryBirdsBase.screenWidth / 2;
            distance = Math.abs(distance);
            distance *= 0.55;
            if(distance > 1000)
            {
               distance = 1000;
            }
            this.mEpisodes[i].scaleX = 1.1 - distance / 1000;
            this.mEpisodes[i].scaleY = 1.1 - distance / 1000;
            this.mEpisodes[i].alpha = 1 - distance / 1000 * 1.5;
            this.mEpisodes[i].y = distance / 1000 * -200;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.mDots.length; i++)
         {
            if(-this.mEpisodeLayer.x + 800 >= this.mEpisodes[i].x && -this.mPrevPositionX < this.mEpisodes[i].x)
            {
               for(j = 0; j < this.mDots.length; j++)
               {
                  this.mDots[j].gotoAndStop("UnSelected");
               }
               this.mDots[i].gotoAndStop("Selected");
            }
            if(-this.mEpisodeLayer.x + 800 <= this.mEpisodes[i].x && -this.mPrevPositionX > this.mEpisodes[i].x)
            {
               for(j = 0; j < this.mDots.length; j++)
               {
                  this.mDots[j].gotoAndStop("UnSelected");
               }
               this.mDots[i].gotoAndStop("Selected");
            }
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
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateStart.STATE_NAME);
               break;
            case "PREV":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               if(!this.isChapterTweenPlaying)
               {
                  --this.mSelectedChapter;
                  this.moveToChapter(this.mSelectedChapter);
               }
               break;
            case "NEXT":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               if(!this.isChapterTweenPlaying)
               {
                  ++this.mSelectedChapter;
                  this.moveToChapter(this.mSelectedChapter);
               }
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function moveToChapter(chapterNum:int) : void
      {
         this.isChapterTweenPlaying = true;
         if(chapterNum > this.mEpisodes.length - 1)
         {
            chapterNum = this.mEpisodes.length - 1;
         }
         else if(chapterNum < 0)
         {
            chapterNum = 0;
         }
         this.mSelectedChapter = chapterNum;
         var newX:Number = -this.mEpisodes[chapterNum].x + this.mChapterLayerX;
         var distance:Number = this.mEpisodeLayer.x - newX;
         var tweenTime:Number = Math.abs(distance);
         tweenTime /= 400;
         tweenTime *= TWEEN_TIME;
         if(tweenTime > 1)
         {
            tweenTime = 1;
         }
         if(this.mChapterTween != null)
         {
            this.mChapterTween.stop();
         }
         this.mChapterTween = TweenManager.instance.createTween(this.mEpisodeLayer,{"x":newX},null,tweenTime,Quadratic.easeOut);
         this.mChapterTween.onComplete = this.onChapterTweenComplete;
         this.mChapterTween.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         for(var i:int = 0; i < this.mDots.length; i++)
         {
            if(i == this.mSelectedChapter)
            {
               this.mDots[i].gotoAndStop("Selected");
            }
            else
            {
               this.mDots[i].gotoAndStop("UnSelected");
            }
         }
         this.isChapterTweenPlaying = false;
      }
   }
}
