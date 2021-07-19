package com.angrybirds.popup.tutorial
{
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const BIRD_TUTORIAL_MUSIC:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var mTutorialMusic:SoundEffect;
       
      
      protected var mTutorialClip:MovieClip;
      
      protected var mTutorialName:String;
      
      protected var mTitleSolver:ITutorialTitleSolver;
      
      protected var mFirstRun:Boolean;
      
      protected var mCloseButtonContainer:UIContainerRovio;
      
      protected var mTitleField:TextField;
      
      private var mRedrawRegionsFixed:Boolean = false;
      
      public function TutorialPopup(layerIndex:int, priority:int, tutorialClip:MovieClip, name:String, titleSolver:ITutorialTitleSolver, firstRun:Boolean = true)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_Tutorial[0],ID);
         this.mTutorialName = name;
         this.mTitleSolver = titleSolver;
         this.mFirstRun = firstRun;
         mLoopRunTransition = true;
         this.mTutorialClip = tutorialClip;
         this.mTutorialClip.gotoAndStop(1);
         this.mTutorialClip.name = "MovieClip_TutorialClip";
      }
      
      public function get tutorialName() : String
      {
         return this.mTutorialName;
      }
      
      public function get title() : String
      {
         return this.mTitleSolver.solve(this.tutorialName);
      }
      
      override protected function init() : void
      {
         super.init();
         var contentMask:MovieClip = mContainer.getItemByName("MovieClip_ContentMask").mClip;
         var container:MovieClip = mContainer.getItemByName("Container_Animation").mClip;
         container.addChild(this.mTutorialClip);
         this.mTitleField = TextField(mContainer.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.mTitleField.text = this.title;
         this.mCloseButtonContainer = UIContainerRovio(mContainer.getItemByName("Container_CloseButton"));
         container.mask = contentMask;
      }
      
      override protected function createTransition(animations:Vector.<MovieClip>) : void
      {
         removeCurrentTransition();
         mTransition = new TutorialTransition(animations,mContainer.mClip.stage,1000 / 60);
         if(this.mFirstRun)
         {
            mTransition.addEventListener(TutorialTransition.EVENT_LOOP,this.onTransitionLoop);
         }
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         if(!mTutorialMusic)
         {
            mTutorialMusic = SoundEngine.playSound(BIRD_TUTORIAL_MUSIC,SoundEngine.DEFAULT_CHANNEL_NAME,int.MAX_VALUE);
         }
         super.show(useTransition);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && mTutorialMusic)
         {
            mTutorialMusic.stop();
            mTutorialMusic.forceSoundCompleted();
            mTutorialMusic = null;
         }
         super.hide(useTransition);
      }
      
      protected function onTransitionLoop(event:Event) : void
      {
         if(mTransition)
         {
            mTransition.removeEventListener(TutorialTransition.EVENT_LOOP,this.onTransitionLoop);
         }
         this.mFirstRun = false;
         this.mCloseButtonContainer.visible = !this.mFirstRun;
      }
      
      override protected function onTransitionStart(transitionType:String) : void
      {
         var titleClip:MovieClip = mContainer.getItemByName("MovieClip_Title").mClip;
         if(transitionType == TransitionData.TRANSITION_TYPE_RUN)
         {
            this.mCloseButtonContainer.visible = !this.mFirstRun;
            titleClip.visible = true;
         }
         if(transitionType == TransitionData.TRANSITION_TYPE_OUT)
         {
            this.mCloseButtonContainer.visible = false;
            titleClip.visible = false;
         }
         if(transitionType == TransitionData.TRANSITION_TYPE_IN)
         {
            this.mCloseButtonContainer.visible = false;
            titleClip.visible = false;
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.toUpperCase() == "CLOSE" && this.mFirstRun)
         {
            return;
         }
         super.onUIInteraction(eventIndex,eventName,component);
      }
      
      override public function dispose() : void
      {
         if(mTransition)
         {
            mTransition.removeEventListener(TutorialTransition.EVENT_LOOP,this.onTransitionLoop);
         }
         this.mTutorialClip.gotoAndStop(this.mTutorialClip.totalFrames);
         super.dispose();
      }
   }
}
