package com.rovio.ui.popup
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.ILocalizable;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.transitions.BasicTransition;
   import com.rovio.states.transitions.ITransition;
   import com.rovio.states.transitions.LabelTypes;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIComponentFactory;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.TransitionAnimationExtractor;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements IPopup, ILocalizable
   {
       
      
      protected var mContainer:UIContainerRovio;
      
      private var mViewContainer:MovieClip;
      
      private var mTransitionWrapper:MovieClip;
      
      protected var mData:XML;
      
      protected var mLayerIndex:int;
      
      protected var mPriority:int;
      
      protected var mId:String;
      
      protected var mTransitionRunType:String = "none";
      
      protected var mTransitionQuality:String = "best";
      
      protected var mLoopRunTransition:Boolean = true;
      
      protected var mTransition:ITransition;
      
      protected var mAnimationNames:Vector.<String>;
      
      protected var mPendingTransitionData:TransitionData;
      
      protected var mLocalizationManager:LocalizationManager;
      
      protected var mApplication:BasicGame;
      
      public function AbstractPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         super();
         this.mLayerIndex = layerIndex;
         this.mPriority = priority;
         this.mData = data || <xml></xml>;
         this.mId = id;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get layerIndex() : int
      {
         return this.mLayerIndex;
      }
      
      public function get priority() : int
      {
         return this.mPriority;
      }
      
      public function set priority(value:int) : void
      {
         this.mPriority = value;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.mTransition && this.mTransition.isRunning && (this.mTransitionRunType == TransitionData.TRANSITION_TYPE_IN || this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.mContainer.removeEventListener(UIInteractionEvent.UI_INTERACTION,this.uIInteractionHandler);
         this.removeCurrentTransition();
         if(this.mTransition)
         {
            this.mTransition.dispose();
            this.mTransition = null;
         }
         this.mContainer.clear();
         if(this.mContainer.mClip && this.mContainer.mClip.parent && this.mContainer.mClip.parent == this.mTransitionWrapper)
         {
            this.mTransitionWrapper.removeChild(this.mContainer.mClip);
         }
         if(this.mTransitionWrapper && this.mTransitionWrapper.parent && this.mTransitionWrapper.parent == this.mViewContainer)
         {
            this.mViewContainer.removeChild(this.mTransitionWrapper);
         }
         this.mViewContainer = null;
         this.mContainer = null;
         if(this.mLocalizationManager)
         {
            this.mLocalizationManager.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(width:int, height:int) : void
      {
         this.mContainer.viewHeight = height;
         this.mContainer.viewWidth = width;
      }
      
      public final function open(viewContainer:MovieClip, localizationManager:LocalizationManager, application:BasicGame, useTransition:Boolean = false) : void
      {
         this.mLocalizationManager = localizationManager;
         this.mApplication = application;
         this.initialize(viewContainer);
         this.createTransitionLabels();
         this.init();
         this.createTransitions();
         this.show(useTransition);
      }
      
      public final function close(useTransition:Boolean = false, playSound:Boolean = true) : void
      {
         if(this.mContainer)
         {
            if(playSound)
            {
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
            }
            this.mContainer.setEnabled(false);
            this.hide(useTransition);
         }
      }
      
      private function initialize(viewContainer:MovieClip) : void
      {
         this.mViewContainer = viewContainer;
         this.mContainer = UIComponentFactory.createContainer(this.mData,null,null,null);
         this.mContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.uIInteractionHandler);
         this.mContainer.setVisibility(true);
         this.mContainer.setActiveStatus(true);
         this.mTransitionWrapper = new MovieClip();
         this.mTransitionWrapper.addChild(this.mContainer.mClip);
         this.mViewContainer.addChild(this.mTransitionWrapper);
         this.mContainer.mClip.name = "Container_" + this.mContainer.mClip.name;
         this.mAnimationNames = new Vector.<String>();
         this.mViewContainer.tabChildren = false;
      }
      
      protected function uIInteractionHandler(event:UIInteractionEvent) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(event.eventIndex,event.eventName,event.component);
      }
      
      protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new PopupEvent(PopupEvent.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.mLocalizationManager.addLocalizationTarget(this);
      }
      
      protected function createTransitionLabels() : void
      {
         this.mAnimationNames.push(LabelTypes.generateStartRunLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionInDefaultLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionOutDefaultLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionInLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionOutLabel());
         this.mAnimationNames.push(LabelTypes.ACTION_EXIT);
         this.mAnimationNames.push(LabelTypes.ACTION_END);
      }
      
      protected function createTransitions() : void
      {
         if(this.mContainer == null || this.mContainer.mClip == null)
         {
            return;
         }
         var uiContainer:MovieClip = this.mTransitionWrapper;
         var actualAnimations:Vector.<MovieClip> = new Vector.<MovieClip>();
         TransitionAnimationExtractor.fetchAnimationsRecursively(uiContainer,this.mAnimationNames,actualAnimations,TransitionAnimationExtractor.SEARCHABLE_ANIMATION_CLIPS);
         if(actualAnimations.length == 0)
         {
            return;
         }
         this.createTransition(actualAnimations);
      }
      
      protected function createTransition(animations:Vector.<MovieClip>) : void
      {
         this.removeCurrentTransition();
         this.mTransition = new BasicTransition(animations,this.mContainer.mClip.stage);
      }
      
      protected function getRunTransitionData() : TransitionData
      {
         return new TransitionData(LabelTypes.generateStartRunLabel(),LabelTypes.ACTION_END,LabelTypes.ACTION_EXIT,TransitionData.TRANSITION_TYPE_RUN,this.mLoopRunTransition,this.mTransitionQuality);
      }
      
      protected function getTransitionInData() : TransitionData
      {
         var data:TransitionData = new TransitionData();
         data.endLabel = LabelTypes.ACTION_END;
         data.exitLabel = LabelTypes.ACTION_EXIT;
         data.startLabel = LabelTypes.generateStartTransitionInLabel();
         data.type = TransitionData.TRANSITION_TYPE_IN;
         data.stageQuality = this.mTransitionQuality;
         return data;
      }
      
      private function transitionComplete(event:Event) : void
      {
         switch(this.mTransitionRunType)
         {
            case TransitionData.TRANSITION_TYPE_RUN:
               this.onTransitionRunComplete();
               break;
            case TransitionData.TRANSITION_TYPE_IN:
               this.onTransitionInComplete();
               break;
            case TransitionData.TRANSITION_TYPE_OUT:
               this.onTransitionOutComplete();
         }
      }
      
      protected function onTransitionInComplete() : void
      {
         var runType:String = this.mTransitionRunType;
         this.removeCurrentTransition();
         this.onTransitionComplete(runType);
         this.setCurrentTransition(this.getRunTransitionData());
         dispatchEvent(new PopupEvent(PopupEvent.OPEN_COMPLETE,this));
      }
      
      protected function onTransitionRunComplete() : void
      {
         this.onTransitionComplete(this.mTransitionRunType);
         if(this.mPendingTransitionData)
         {
            this.setCurrentTransition(this.mPendingTransitionData);
            this.mPendingTransitionData = null;
         }
      }
      
      protected function onTransitionOutComplete() : void
      {
         this.removeCurrentTransition();
         this.onTransitionComplete(this.mTransitionRunType);
         this.mContainer.setVisibility(false);
         this.onPopupCloseDone();
      }
      
      protected function setCurrentTransition(data:TransitionData) : void
      {
         this.removeCurrentTransition();
         if(this.mTransition && data.type != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransitionRunType = data.type;
            this.mTransition.addEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.start(data);
            this.onTransitionStart(this.mTransitionRunType);
            if(this.mApplication)
            {
               this.mApplication.addEventListener(FrameUpdateEvent.UPDATE,this.runTransition);
            }
         }
      }
      
      protected function removeCurrentTransition() : void
      {
         if(this.mTransition)
         {
            this.mTransition.removeEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.stop();
         }
         this.mTransitionRunType = TransitionData.TRANSITION_TYPE_NONE;
         if(this.mApplication)
         {
            this.mApplication.removeEventListener(FrameUpdateEvent.UPDATE,this.runTransition);
         }
      }
      
      protected function stopAnimationsForTransition(data:TransitionData, waitForAnimationToStop:Boolean = false) : void
      {
         if(!this.mTransition.isRunning)
         {
            this.setCurrentTransition(data);
            return;
         }
         this.mPendingTransitionData = data;
         this.mTransition.stop(waitForAnimationToStop);
      }
      
      protected function show(useTransition:Boolean = false) : void
      {
         this.mContainer.setVisibility(true);
         if(useTransition && this.mTransition)
         {
            this.setCurrentTransition(this.getTransitionInData());
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         var data:TransitionData = null;
         if(useTransition && this.mTransition)
         {
            data = new TransitionData();
            data.startLabel = LabelTypes.generateStartTransitionOutLabel();
            data.endLabel = LabelTypes.ACTION_END;
            data.exitLabel = LabelTypes.ACTION_EXIT;
            data.type = TransitionData.TRANSITION_TYPE_OUT;
            data.stageQuality = this.mTransitionQuality;
            this.stopAnimationsForTransition(data,waitForAnimationsToStop);
         }
         else
         {
            this.removeCurrentTransition();
            this.onTransitionOutComplete();
         }
      }
      
      protected function runTransition(event:FrameUpdateEvent) : void
      {
         if(this.mTransition && this.mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransition.run(event.deltaTimeMilliSeconds);
         }
      }
      
      protected function onTransitionComplete(transitionType:String) : void
      {
      }
      
      protected function onTransitionStart(transitionType:String) : void
      {
      }
      
      protected final function onPopupCloseDone() : void
      {
         this.dispose();
         dispatchEvent(new PopupEvent(PopupEvent.CLOSE_COMPLETE,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
