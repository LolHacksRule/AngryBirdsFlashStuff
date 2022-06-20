package com.rovio.states
{
   import com.rovio.data.localization.ILocalizable;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.factory.Log;
   import com.rovio.states.transitions.BasicTransition;
   import com.rovio.states.transitions.ITransition;
   import com.rovio.states.transitions.LabelTypes;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.utils.TransitionAnimationExtractor;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class StateBase implements ILocalizable
   {
      
      public static const DEFAULT_TARGET_FRAME_RATE:int = 60;
      
      public static const DUMMY_STATE:String = "dummyState";
      
      public static const STATE_STATUS_NOT_READY:int = 0;
      
      public static const STATE_STATUS_NOT_ACTIVE:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var smApplicationParameters:Object = null;
       
      
      protected var mReady:Boolean = false;
      
      private var mActive:Boolean = false;
      
      public var mName:String;
      
      public var mGenericState:Boolean = false;
      
      protected var mTransitionRunType:String = "none";
      
      protected var mPendingTransitionData:TransitionData;
      
      protected var mTransition:ITransition;
      
      protected var mPendingNextState:String;
      
      protected var mUseTransitionIn:Boolean = false;
      
      protected var mLoopRunTransition:Boolean = true;
      
      protected var mTransitionQuality:String = "best";
      
      public var skipTransition:Boolean = false;
      
      public var allowMouseSkipTransition:Boolean = true;
      
      private var mAnimationNames:Vector.<String>;
      
      protected var mAdditionalAnimationNames:Vector.<String>;
      
      public var mCleanUpAfterDeactivating:Boolean = false;
      
      public var mUIView:UIView;
      
      public var mAlternateViewList:Array;
      
      private var mNextState:String = "";
      
      private var mPreviousState:String = "";
      
      public var mSprite:Sprite = null;
      
      public var mApp:StateManager = null;
      
      protected var mLocalizationManager:LocalizationManager;
      
      public function StateBase(initObject:Boolean, name:String, localizationManager:LocalizationManager)
      {
         super();
         this.mName = name;
         this.mAlternateViewList = new Array();
         this.mSprite = new Sprite();
         this.mLocalizationManager = localizationManager;
         if(initObject)
         {
            this.initialize();
         }
      }
      
      public static function getApplicationParameter(key:String) : String
      {
         if(smApplicationParameters)
         {
            return smApplicationParameters[key];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.mPreviousState;
      }
      
      public function get nextState() : String
      {
         return this.mNextState;
      }
      
      public function get isReady() : Boolean
      {
         return this.mReady;
      }
      
      public function get isActive() : Boolean
      {
         return this.mActive;
      }
      
      private function initialize() : void
      {
         this.mAnimationNames = new Vector.<String>();
         this.mAdditionalAnimationNames = new Vector.<String>();
         this.createDefaultTransitionLabels();
         this.init();
         this.createTransitions();
         this.initComplete();
         this.mReady = true;
      }
      
      protected function createDefaultTransitionLabels() : void
      {
         this.mAnimationNames.push(LabelTypes.generateStartRunLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionInDefaultLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionOutDefaultLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionInLabel());
         this.mAnimationNames.push(LabelTypes.generateStartTransitionOutLabel());
         this.mAnimationNames.push(LabelTypes.ACTION_EXIT);
         this.mAnimationNames.push(LabelTypes.ACTION_END);
      }
      
      protected function init() : void
      {
      }
      
      protected function initComplete() : void
      {
      }
      
      private function createTransitions() : void
      {
         if(this.mUIView == null || this.mUIView.container == null || this.mUIView.container.mClip == null)
         {
            return;
         }
         var viewUIContainer:MovieClip = this.mUIView.container.mClip;
         var animationNames:Vector.<String> = this.mAnimationNames.concat(this.mAdditionalAnimationNames);
         var actualAnimations:Vector.<MovieClip> = new Vector.<MovieClip>();
         TransitionAnimationExtractor.fetchAnimationsRecursively(viewUIContainer,animationNames,actualAnimations,TransitionAnimationExtractor.SEARCHABLE_ANIMATION_CLIPS);
         this.createTransition(actualAnimations);
      }
      
      protected function createTransition(animations:Vector.<MovieClip>) : void
      {
         this.mTransition = new BasicTransition(animations,this.mSprite.stage);
      }
      
      private function onSkipTransition(event:MouseEvent) : void
      {
         this.setSkipTransitionMouseHandling(false);
         if(this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT)
         {
            this.skipTransition = true;
         }
         this.mTransition.stop(false);
      }
      
      private function setSkipTransitionMouseHandling(isOn:Boolean) : void
      {
         if(isOn)
         {
            this.mSprite.addEventListener(MouseEvent.CLICK,this.onSkipTransition);
         }
         else
         {
            this.mSprite.removeEventListener(MouseEvent.CLICK,this.onSkipTransition);
         }
         this.mSprite.buttonMode = isOn;
      }
      
      public function activate(previousState:String) : void
      {
         var view:UIView = null;
         this.mPreviousState = previousState;
         if(!this.mReady)
         {
            this.initialize();
         }
         if(this.mUIView)
         {
            this.mSprite.addChild(this.mUIView);
            this.mUIView.activateView();
         }
         for each(view in this.mAlternateViewList)
         {
            this.mSprite.addChild(view);
            view.deactivateView();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function activateComplete(skipTransitionIn:Boolean) : void
      {
         var data:TransitionData = null;
         if(this.mUseTransitionIn && !skipTransitionIn)
         {
            data = new TransitionData();
            data.endLabel = LabelTypes.ACTION_END;
            data.exitLabel = LabelTypes.ACTION_EXIT;
            data.startLabel = LabelTypes.generateStartTransitionInLabel(this.mPreviousState);
            data.type = TransitionData.TRANSITION_TYPE_IN;
            data.stageQuality = this.mTransitionQuality;
            this.setCurrentTransition(data);
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      public function deActivate() : void
      {
         var view:UIView = null;
         this.removeCurrentTransition();
         if(this.mUIView)
         {
            this.mUIView.deactivateView();
            this.mSprite.removeChild(this.mUIView);
         }
         for each(view in this.mAlternateViewList)
         {
            view.deactivateView();
            this.mSprite.removeChild(view);
         }
         if(!this.mActive)
         {
            if(this.mCleanUpAfterDeactivating)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.mCleanUpAfterDeactivating)
         {
            this.cleanup();
         }
      }
      
      private function setCurrentTransition(data:TransitionData) : void
      {
         this.removeCurrentTransition();
         if(this.mTransition && data.type != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransitionRunType = data.type;
            this.beforeTransitionStart(data);
            this.mTransition.addEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.start(data);
            if(this.mTransitionRunType == TransitionData.TRANSITION_TYPE_IN || this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT)
            {
               if(this.allowMouseSkipTransition)
               {
                  this.setSkipTransitionMouseHandling(true);
               }
            }
            this.onTransitionStart(this.mTransitionRunType);
         }
      }
      
      protected function beforeTransitionStart(data:TransitionData) : void
      {
      }
      
      private function removeCurrentTransition() : void
      {
         if(this.mTransition)
         {
            this.mTransition.removeEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.stop();
         }
         this.mTransitionRunType = TransitionData.TRANSITION_TYPE_NONE;
         this.setSkipTransitionMouseHandling(false);
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
      
      private function onTransitionRunComplete() : void
      {
         this.onTransitionComplete(this.mTransitionRunType);
         if(this.mPendingTransitionData)
         {
            this.setCurrentTransition(this.mPendingTransitionData);
            this.mPendingTransitionData = null;
         }
      }
      
      private function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(this.mTransitionRunType);
         this.removeCurrentTransition();
         this.mNextState = this.mPendingNextState;
         this.mPendingNextState = "";
      }
      
      private function onTransitionInComplete() : void
      {
         this.onTransitionComplete(this.mTransitionRunType);
         this.removeCurrentTransition();
         this.setCurrentTransition(this.getRunTransitionData());
      }
      
      protected function getRunTransitionData() : TransitionData
      {
         return new TransitionData(LabelTypes.generateStartRunLabel(),LabelTypes.ACTION_END,LabelTypes.ACTION_EXIT,TransitionData.TRANSITION_TYPE_RUN,this.mLoopRunTransition,this.mTransitionQuality);
      }
      
      protected function onTransitionComplete(transitionType:String) : void
      {
      }
      
      protected function onTransitionStart(transitionType:String) : void
      {
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
      
      protected function setNextState(state:String, useTransitionOut:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         var data:TransitionData = null;
         if(useTransitionOut)
         {
            data = new TransitionData();
            data.startLabel = LabelTypes.generateStartTransitionOutLabel(state);
            data.endLabel = LabelTypes.ACTION_END;
            data.exitLabel = LabelTypes.ACTION_EXIT;
            data.type = TransitionData.TRANSITION_TYPE_OUT;
            data.stageQuality = this.mTransitionQuality;
            this.stopAnimationsForTransition(data,waitForAnimationsToStop);
            this.mPendingNextState = state;
         }
         else
         {
            this.removeCurrentTransition();
            this.mPendingNextState = "";
            this.mNextState = state;
         }
      }
      
      public function setCleanUpAfterDeactivating(value:Boolean) : void
      {
         this.mCleanUpAfterDeactivating = value;
      }
      
      public function cleanup() : void
      {
         if(!this.mReady)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.mAlternateViewList.length > 0)
         {
            (this.mAlternateViewList.pop() as UIView).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.mReady = false;
      }
      
      public final function run(deltaTime:Number) : int
      {
         if(!this.mReady)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return STATE_STATUS_NOT_READY;
         }
         if(!this.mActive)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return STATE_STATUS_NOT_ACTIVE;
         }
         this.update(deltaTime);
         this.runAnimations(deltaTime);
         if(this.mNextState != "")
         {
            return STATE_STATUS_COMPLETED;
         }
         return STATE_STATUS_RUNNING;
      }
      
      protected function update(deltaTime:Number) : void
      {
      }
      
      protected function runAnimations(deltaTime:Number) : void
      {
         if(this.mTransition && this.mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransition.run(deltaTime);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.mGenericState;
      }
      
      public final function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(eventIndex,eventName,component);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.mTransition && this.mTransition.isRunning && (this.mTransitionRunType == TransitionData.TRANSITION_TYPE_IN || this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT);
      }
      
      protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(e:KeyboardEvent) : void
      {
      }
      
      public function keyUp(e:KeyboardEvent) : void
      {
      }
      
      public function addAlternateView(view:UIView) : void
      {
         this.mAlternateViewList.push(view);
      }
      
      public function addChildAt(obj:DisplayObject, index:Number) : void
      {
         this.mSprite.addChildAt(obj,index);
      }
      
      public function removeChild(obj:DisplayObject) : void
      {
         this.mSprite.removeChild(obj);
      }
      
      public function contains(obj:DisplayObject) : Boolean
      {
         return this.mSprite.contains(obj);
      }
      
      public function getAppWidth() : int
      {
         if(this.mApp)
         {
            return this.mApp.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.mApp)
         {
            return this.mApp.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(width:Number, height:Number) : void
      {
         if(this.mUIView)
         {
            this.mUIView.viewWidth = width;
            this.mUIView.viewHeight = height;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return DEFAULT_TARGET_FRAME_RATE;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
