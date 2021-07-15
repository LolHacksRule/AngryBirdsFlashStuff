package com.rovio.states
{
   import com.rovio.utils.TransitionAnimationExtractor;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.data.localization.ILocalizable;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.states.transitions.BasicTransition;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.states.transitions.LabelTypes;
   import com.rovio.states.transitions.ITransition;
   import com.rovio.factory.Log;
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
       
      
      private var mReady:Boolean = false;
      
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
      
      public var mApp:LocalizationManager = null;
      
      protected var mLocalizationManager:LocalizationManager;
      
      public function StateBase(param1:Boolean, param2:String, param3:LocalizationManager)
      {
         super();
         this.mName = param2;
         this.mAlternateViewList = new Array();
         this.mSprite = new Sprite();
         this.mLocalizationManager = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(smApplicationParameters)
         {
            return smApplicationParameters[param1];
         }
         return null;
      }
      
      public function get maxLengthB() : String
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
         this._incidentEdge();
         this.init();
         this.createTransitions();
         this.DestroyProxy();
         this.mReady = true;
      }
      
      protected function _incidentEdge() : void
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
      
      protected function DestroyProxy() : void
      {
      }
      
      private function createTransitions() : void
      {
         if(this.mUIView == null || this.mUIView.container == null || this.mUIView.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.mUIView.container.mClip;
         var _loc2_:Vector.<String> = this.mAnimationNames.concat(this.mAdditionalAnimationNames);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         TransitionAnimationExtractor.fetchAnimationsRecursively(_loc1_,_loc2_,_loc3_,TransitionAnimationExtractor.SEARCHABLE_ANIMATION_CLIPS);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.mTransition = new BasicTransition(param1,this.mSprite.stage);
      }
      
      private function onSkipTransition(param1:MouseEvent) : void
      {
         this.setSkipTransitionMouseHandling(false);
         if(this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT)
         {
            this.skipTransition = true;
         }
         this.mTransition.stop(false);
      }
      
      private function setSkipTransitionMouseHandling(param1:Boolean) : void
      {
         if(param1)
         {
            this.mSprite.addEventListener(MouseEvent.CLICK,this.onSkipTransition);
         }
         else
         {
            this.mSprite.removeEventListener(MouseEvent.CLICK,this.onSkipTransition);
         }
         this.mSprite.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:UIView = null;
         this.mPreviousState = param1;
         if(!this.mReady)
         {
            this.initialize();
         }
         if(this.mUIView)
         {
            this.mSprite.addChild(this.mUIView);
            this.mUIView.activateView();
         }
         for each(_loc2_ in this.mAlternateViewList)
         {
            this.mSprite.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:TransitionData = null;
         if(this.mUseTransitionIn && param1)
         {
            _loc2_ = new TransitionData();
            _loc2_.endLabel = LabelTypes.ACTION_END;
            _loc2_.exitLabel = LabelTypes.ACTION_EXIT;
            _loc2_.startLabel = LabelTypes.generateStartTransitionInLabel(this.mPreviousState);
            _loc2_.type = TransitionData.TRANSITION_TYPE_IN;
            _loc2_.stageQuality = this.mTransitionQuality;
            this.setCurrentTransition(_loc2_);
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:UIView = null;
         this.removeCurrentTransition();
         if(this.mUIView)
         {
            this.mUIView.deactivateView();
            this.mSprite.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.mAlternateViewList)
         {
            _loc1_.deactivateView();
            this.mSprite.removeChild(_loc1_);
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
      
      private function setCurrentTransition(param1:TransitionData) : void
      {
         this.removeCurrentTransition();
         if(this.mTransition && param1.type != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransitionRunType = param1.type;
            this.beforeTransitionStart(param1);
            this.mTransition.addEventListener(Event.COMPLETE,this.transitionComplete);
            this.mTransition.start(param1);
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
      
      protected function beforeTransitionStart(param1:TransitionData) : void
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
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
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
      
      protected function setNextState(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:TransitionData = null;
         if(param2)
         {
            (_loc4_ = new TransitionData()).startLabel = LabelTypes.generateStartTransitionOutLabel(param1);
            _loc4_.endLabel = LabelTypes.ACTION_END;
            _loc4_.exitLabel = LabelTypes.ACTION_EXIT;
            _loc4_.type = TransitionData.TRANSITION_TYPE_OUT;
            _loc4_.stageQuality = this.mTransitionQuality;
            this.stopAnimationsForTransition(_loc4_,param3);
            this.mPendingNextState = param1;
         }
         else
         {
            this.removeCurrentTransition();
            this.mPendingNextState = "";
            this.mNextState = param1;
         }
      }
      
      public function setCleanUpAfterDeactivating(param1:Boolean) : void
      {
         this.mCleanUpAfterDeactivating = param1;
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
      
      public final function run(param1:Number) : int
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
         this.update(param1);
         this.runAnimations(param1);
         if(this.mNextState != "")
         {
            return STATE_STATUS_COMPLETED;
         }
         return STATE_STATUS_RUNNING;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.mTransition && this.mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE)
         {
            this.mTransition.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.mGenericState;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.mTransition && this.mTransition.isRunning && (this.mTransitionRunType == TransitionData.TRANSITION_TYPE_IN || this.mTransitionRunType == TransitionData.TRANSITION_TYPE_OUT);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function addAlternateView(param1:UIView) : void
      {
         this.mAlternateViewList.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.mSprite.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.mSprite.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.mSprite.contains(param1);
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
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.mUIView)
         {
            this.mUIView.viewWidth = param1;
            this.mUIView.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return DEFAULT_TARGET_FRAME_RATE;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function updateMuteButtonState() : void
      {
      }
   }
}
