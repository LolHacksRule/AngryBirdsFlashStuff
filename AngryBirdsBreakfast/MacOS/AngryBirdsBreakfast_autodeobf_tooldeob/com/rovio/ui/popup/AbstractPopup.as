package com.rovio.ui.popup
{
   import com.rovio.utils.TransitionAnimationExtractor;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.data.localization.ILocalizable;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.states.transitions.BasicTransition;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.states.transitions.LabelTypes;
   import com.rovio.states.transitions.ITransition;
   import com.rovio.BasicGame;
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
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.mLayerIndex = param1;
         this.mPriority = param2;
         this.mData = param3 || <xml></xml>;
         this.mId = param4;
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
      
      public function set priority(param1:int) : void
      {
         this.mPriority = param1;
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
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.mContainer.viewHeight = param2;
         this.mContainer.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:LocalizationManager, param3:BasicGame, param4:Boolean = false) : void
      {
         this.mLocalizationManager = param2;
         this.mApplication = param3;
         this.initialize(param1);
         this.createTransitionLabels();
         this.init();
         this.createTransitions();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.mContainer)
         {
            this.mContainer.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.mViewContainer = param1;
         this.mContainer = new UIContainerRovio(this.mData,null,null,null);
         this.mContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.uIInteractionHandler);
         this.mContainer.setVisibility(true);
         this.mContainer.setActiveStatus(true);
         this.mTransitionWrapper = new MovieClip();
         this.mTransitionWrapper.addChild(this.mContainer.mClip);
         this.mViewContainer.addChild(this.mTransitionWrapper);
         this.mContainer.mClip.name = "Container_" + this.mContainer.mClip.name;
         this.mAnimationNames = new Vector.<String>();
      }
      
      protected function uIInteractionHandler(param1:UIInteractionEvent) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               SoundEngine.playSound("close_popup_button_click");
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
         var _loc1_:MovieClip = this.mTransitionWrapper;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         TransitionAnimationExtractor.fetchAnimationsRecursively(_loc1_,this.mAnimationNames,_loc2_,TransitionAnimationExtractor.SEARCHABLE_ANIMATION_CLIPS);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.removeCurrentTransition();
         this.mTransition = new BasicTransition(param1,this.mContainer.mClip.stage);
      }
      
      protected function getRunTransitionData() : TransitionData
      {
         return new TransitionData(LabelTypes.generateStartRunLabel(),LabelTypes.ACTION_END,LabelTypes.ACTION_EXIT,TransitionData.TRANSITION_TYPE_RUN,this.mLoopRunTransition,this.mTransitionQuality);
      }
      
      protected function getTransitionInData() : TransitionData
      {
         var _loc1_:TransitionData = new TransitionData();
         _loc1_.endLabel = LabelTypes.ACTION_END;
         _loc1_.exitLabel = LabelTypes.ACTION_EXIT;
         _loc1_.startLabel = LabelTypes.generateStartTransitionInLabel();
         _loc1_.type = TransitionData.TRANSITION_TYPE_IN;
         _loc1_.stageQuality = this.mTransitionQuality;
         return _loc1_;
      }
      
      private function transitionComplete(param1:Event) : void
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
         var _loc1_:String = this.mTransitionRunType;
         this.removeCurrentTransition();
         this.onTransitionComplete(_loc1_);
         this.setCurrentTransition(this.getRunTransitionData());
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
      
      protected function setCurrentTransition(param1:TransitionData) : void
      {
         this.removeCurrentTransition();
         if(this.mTransition && param1.type != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransitionRunType = param1.type;
            this.mTransition.addEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.start(param1);
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
      
      protected function stopAnimationsForTransition(param1:TransitionData, param2:Boolean = false) : void
      {
         if(!this.mTransition.isRunning)
         {
            this.setCurrentTransition(param1);
            return;
         }
         this.mPendingTransitionData = param1;
         this.mTransition.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.mContainer.setVisibility(true);
         if(param1 && this.mTransition)
         {
            this.setCurrentTransition(this.getTransitionInData());
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:TransitionData = null;
         if(param1 && this.mTransition)
         {
            _loc3_ = new TransitionData();
            _loc3_.startLabel = LabelTypes.generateStartTransitionOutLabel();
            _loc3_.endLabel = LabelTypes.ACTION_END;
            _loc3_.exitLabel = LabelTypes.ACTION_EXIT;
            _loc3_.type = TransitionData.TRANSITION_TYPE_OUT;
            _loc3_.stageQuality = this.mTransitionQuality;
            this.stopAnimationsForTransition(_loc3_,param2);
         }
         else
         {
            this.removeCurrentTransition();
            this.onTransitionOutComplete();
         }
      }
      
      protected function runTransition(param1:FrameUpdateEvent) : void
      {
         if(this.mTransition && this.mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransition.run(param1.deltaTimeMilliSeconds);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
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
