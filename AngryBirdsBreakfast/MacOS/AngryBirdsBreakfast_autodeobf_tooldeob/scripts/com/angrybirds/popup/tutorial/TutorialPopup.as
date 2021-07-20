package com.angrybirds.popup.tutorial
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.SoundEffect;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.states.transitions.TransitionData;
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
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:ITutorialTitleSolver, param6:Boolean = true)
      {
         super(param1,param2,ViewXMLLibrary.mLibrary.Popups.Popup_Tutorial[0],ID);
         this.mTutorialName = param4;
         this.mTitleSolver = param5;
         this.mFirstRun = param6;
         mLoopRunTransition = true;
         this.mTutorialClip = param3;
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
         var _loc1_:MovieClip = mContainer.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = mContainer.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.mTutorialClip);
         this.mTitleField = TextField(mContainer.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.mTitleField.text = this.title;
         this.mCloseButtonContainer = UIContainerRovio(mContainer.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         removeCurrentTransition();
         mTransition = new TutorialTransition(param1,mContainer.mClip.stage,1000 / 60);
         if(this.mFirstRun)
         {
            mTransition.addEventListener(TutorialTransition.EVENT_LOOP,this.onTransitionLoop);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!mTutorialMusic)
         {
            mTutorialMusic = SoundEngine.playSound(BIRD_TUTORIAL_MUSIC,SoundEngine.DEFAULT_CHANNEL_NAME,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && mTutorialMusic)
         {
            mTutorialMusic.stop();
            mTutorialMusic.forceSoundCompleted();
            mTutorialMusic = null;
         }
         super.hide(param1);
      }
      
      protected function onTransitionLoop(param1:Event) : void
      {
         if(mTransition)
         {
            mTransition.removeEventListener(TutorialTransition.EVENT_LOOP,this.onTransitionLoop);
         }
         this.mFirstRun = false;
         this.mCloseButtonContainer.visible = !this.mFirstRun;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = mContainer.getItemByName("MovieClip_Title").mClip;
         if(param1 == TransitionData.TRANSITION_TYPE_RUN)
         {
            this.mCloseButtonContainer.visible = !this.mFirstRun;
            _loc2_.visible = true;
         }
         if(param1 == TransitionData.TRANSITION_TYPE_OUT)
         {
            this.mCloseButtonContainer.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == TransitionData.TRANSITION_TYPE_IN)
         {
            this.mCloseButtonContainer.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.mFirstRun)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
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
