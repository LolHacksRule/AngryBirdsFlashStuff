package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItemPigSpace;
   import com.rovio.utils.HashMap;
   
   public class PigBehaviorLogic implements IAnimationListener
   {
      
      protected static const STATE_IDLE:String = LevelObjectSpacePigRenderer.ANIMATION_IDLE;
      
      protected static const STATE_HAPPY:String = LevelObjectSpacePigRenderer.ANIMATION_HAPPY;
      
      protected static const STATE_SLEEPY:String = LevelObjectSpacePigRenderer.ANIMATION_SLEEPY;
      
      protected static const STATE_SLEEP:String = LevelObjectSpacePigRenderer.ANIMATION_SLEEP;
      
      protected static const STATE_NERVOUS:String = LevelObjectSpacePigRenderer.ANIMATION_NERVOUS;
      
      protected static const STATE_RELIEVED:String = LevelObjectSpacePigRenderer.ANIMATION_RELIEVED;
      
      protected static const STATE_DAMAGED:String = LevelObjectSpacePigRenderer.ANIMATION_DAMAGED;
      
      protected static const STATE_FREEZE:String = LevelObjectSpacePigRenderer.ANIMATION_FREEZE;
      
      protected static const STATE_IDLE_TIME:Array = [3,8];
      
      protected static const STATE_HAPPY_TIME:Array = [2,2];
      
      protected static const STATE_SLEEPY_TIME:Array = [2,3];
      
      protected static const STATE_SLEEP_TIME:Array = [5,5];
      
      protected static const STATE_NERVOUS_TIME:Array = [2,2];
      
      protected static const STATE_RELIEVED_TIME:Array = [1,2];
      
      protected static const STATE_DAMAGED_TIME:Array = [10,3.5];
      
      protected static const PROBABILITY_IDLE_TO_SLEEPY:Number = 0.05;
      
      protected static const PROBABILITY_IDLE_TO_HAPPY:Number = 0.1;
      
      protected static const PROBABILITY_SLEEP_TO_HAPPY:Number = 0.5;
       
      
      protected var mState:String = "idleState";
      
      protected var mStateTimeMilliSeconds:Number = 0.0;
      
      protected var mStateDurationMilliSeconds:Number = 0.0;
      
      protected var mStateDurations:HashMap;
      
      protected var mIdleTimeMilliSeconds:Number = -1.0;
      
      protected var mIdleDurationMilliSeconds:Number = 0.0;
      
      protected var mIdleTimeLimitsMilliSeconds:Array;
      
      protected var mPig:LevelObjectPigSpace;
      
      protected var mIsFrozen:Boolean;
      
      protected var mDamageState:Number = 0.0;
      
      protected var mSleepSoundName:String;
      
      public function PigBehaviorLogic(pig:LevelObjectPigSpace, levelItem:LevelItemPigSpace)
      {
         this.mStateDurations = new HashMap();
         super();
         this.mPig = pig;
         this.mIdleTimeLimitsMilliSeconds = levelItem.getAnimationIdleTimes();
         this.mStateDurations[STATE_IDLE] = STATE_IDLE_TIME;
         this.mStateDurations[STATE_HAPPY] = STATE_HAPPY_TIME;
         this.mStateDurations[STATE_SLEEPY] = STATE_SLEEPY_TIME;
         this.mStateDurations[STATE_SLEEP] = STATE_SLEEP_TIME;
         this.mStateDurations[STATE_NERVOUS] = STATE_NERVOUS_TIME;
         this.mStateDurations[STATE_RELIEVED] = STATE_RELIEVED_TIME;
         this.mStateDurations[STATE_DAMAGED] = STATE_DAMAGED_TIME;
         this.startIdleTimeCounter();
      }
      
      public function get state() : String
      {
         return this.mState;
      }
      
      public function objectEnteredSensorA(object:LevelObjectBase) : void
      {
         if(object.getBody().GetLinearVelocity().Length() > 1)
         {
            this.changeState(STATE_NERVOUS);
         }
      }
      
      public function objectEnteredSensorB(object:LevelObjectBase) : void
      {
         if(object is LevelObjectBird)
         {
            this.changeState(STATE_NERVOUS);
         }
      }
      
      public function objectExitedSensorA(object:LevelObjectBase) : void
      {
      }
      
      public function objectExitedSensorB(object:LevelObjectBase) : void
      {
         if(object is LevelObjectBird)
         {
            this.changeState(STATE_RELIEVED);
         }
      }
      
      protected function getStateDurationMilliSeconds(state:String) : Number
      {
         if(this.mIsFrozen)
         {
            return -1;
         }
         var stateDuration:Array = this.mStateDurations[state];
         return (stateDuration[0] + Math.random() * stateDuration[1]) * 1000;
      }
      
      protected function changeState(state:String) : void
      {
         if(this.isFrozen && state != STATE_FREEZE)
         {
            return;
         }
         if(this.mDamageState > 0.5 && state != STATE_DAMAGED)
         {
            return;
         }
         this.mStateTimeMilliSeconds = 0;
         this.mStateDurationMilliSeconds = this.getStateDurationMilliSeconds(state);
         if(state != STATE_IDLE)
         {
            this.mIdleTimeMilliSeconds = -1;
         }
         else
         {
            this.startIdleTimeCounter();
         }
         this.mState = state;
         this.mPig.renderer.setAnimation(state);
      }
      
      protected function updateState() : void
      {
         switch(this.mState)
         {
            case STATE_IDLE:
               this.updateStateIdle();
               break;
            case STATE_HAPPY:
               this.updateStateHappy();
               break;
            case STATE_SLEEPY:
               this.updateStateSleepy();
               break;
            case STATE_SLEEP:
               this.updateStateSleep();
               break;
            case STATE_NERVOUS:
               this.updateStateNervous();
               break;
            case STATE_RELIEVED:
               this.updateStateRelieved();
               break;
            default:
               this.changeState(STATE_IDLE);
         }
      }
      
      protected function updateStateIdle() : void
      {
         if(Math.random() < PROBABILITY_IDLE_TO_SLEEPY)
         {
            this.changeState(STATE_SLEEPY);
         }
         else if(Math.random() < PROBABILITY_IDLE_TO_HAPPY)
         {
            this.changeState(STATE_HAPPY);
         }
         else
         {
            this.changeState(STATE_IDLE);
         }
      }
      
      protected function updateStateHappy() : void
      {
         this.changeState(STATE_IDLE);
      }
      
      protected function updateStateSleepy() : void
      {
         this.changeState(STATE_SLEEP);
      }
      
      protected function updateStateSleep() : void
      {
         if(Math.random() < PROBABILITY_SLEEP_TO_HAPPY)
         {
            this.changeState(STATE_HAPPY);
         }
         else
         {
            this.changeState(STATE_IDLE);
         }
      }
      
      protected function updateStateNervous() : void
      {
         this.changeState(STATE_IDLE);
      }
      
      protected function updateStateRelieved() : void
      {
         this.changeState(STATE_HAPPY);
      }
      
      protected function startIdleTimeCounter() : void
      {
         if(this.mIdleTimeMilliSeconds < 0)
         {
            this.mIdleTimeMilliSeconds = 0;
            this.mIdleDurationMilliSeconds = (this.mIdleTimeLimitsMilliSeconds[0] + Math.random() * this.mIdleTimeLimitsMilliSeconds[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(name:String, subAnimationIndex:int, subAnimationCount:int) : void
      {
         var index:int = 0;
         if(name == STATE_IDLE)
         {
            if(subAnimationIndex > 0)
            {
               this.mPig.renderer.selectSubAnimation(0,false);
               this.startIdleTimeCounter();
            }
            else if(subAnimationIndex == 0 && subAnimationCount > 1 && this.mIdleTimeMilliSeconds > this.mIdleDurationMilliSeconds)
            {
               index = 1 + Math.floor(Math.random() * (subAnimationCount - 1));
               this.mPig.renderer.selectSubAnimation(index,false);
               this.mIdleTimeMilliSeconds = -1;
            }
         }
         else if(name == STATE_SLEEP)
         {
            this.playSound(this.mSleepSoundName);
         }
      }
      
      public function playSound(soundName:String) : void
      {
         if(this.mState == STATE_SLEEP)
         {
            this.mSleepSoundName = soundName;
         }
         if(!soundName)
         {
            return;
         }
         this.mPig.playSoundLua(soundName);
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         this.mStateTimeMilliSeconds += deltaTimeMilliSeconds;
         if(this.mIdleTimeMilliSeconds >= 0)
         {
            this.mIdleTimeMilliSeconds += deltaTimeMilliSeconds;
         }
         if(this.mStateDurationMilliSeconds >= 0 && this.mStateTimeMilliSeconds >= this.mStateDurationMilliSeconds)
         {
            this.updateState();
         }
      }
      
      public function get isFrozen() : Boolean
      {
         return this.mIsFrozen;
      }
      
      public function set isFrozen(value:Boolean) : void
      {
         this.mIsFrozen = value;
         if(this.mIsFrozen)
         {
            this.changeState(STATE_FREEZE);
         }
      }
      
      public function setDamageState(damageState:Number) : void
      {
         this.mDamageState = damageState;
         if(damageState > 0.5)
         {
            this.changeState(STATE_DAMAGED);
         }
      }
   }
}
