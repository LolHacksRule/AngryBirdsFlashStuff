package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectSpacePigRenderer extends LevelObjectRenderer
   {
      
      public static const ANIMATION_IDLE:String = "idleState";
      
      public static const ANIMATION_HAPPY:String = "happyState";
      
      public static const ANIMATION_SLEEPY:String = "sleepyState";
      
      public static const ANIMATION_SLEEP:String = "sleepState";
      
      public static const ANIMATION_NERVOUS:String = "nervousState";
      
      public static const ANIMATION_RELIEVED:String = "relievedState";
      
      public static const ANIMATION_DAMAGED:String = "damagedState";
      
      public static const ANIMATION_FREEZE:String = "freezeState";
      
      public static const ANIMATION_SNEEZE:String = "sneezeState";
      
      public static const ANIMATION_EATING:String = "eatingState";
       
      
      public function LevelObjectSpacePigRenderer(animation:Animation, sprite:Sprite, horizontalFlip:Boolean = false)
      {
         super(animation,sprite,horizontalFlip);
      }
      
      override protected function initializeImage() : void
      {
         mDisplayObjectContainer = new Sprite();
         super.initializeImage();
      }
      
      public function getDisplayObjectContainer() : Sprite
      {
         return mDisplayObjectContainer;
      }
      
      override public function setAnimation(animationName:String, randomStartOffset:Boolean = true) : void
      {
         var index:int = 0;
         var subAnimationCount:int = 0;
         var animation:Animation = mAnimation.getSubAnimation(animationName);
         if(mCurrentMainAnimation && mCurrentMainAnimation.name == animation.name)
         {
            return;
         }
         initializeAnimationOffset(randomStartOffset);
         mCurrentMainAnimation = animation;
         mNeedsImageUpdate = true;
         if(mCurrentMainAnimation)
         {
            index = 0;
            if(animationName != mAnimation.defaultSubAnimationName)
            {
               subAnimationCount = mCurrentMainAnimation.subAnimationCount;
               index = Math.floor(Math.random() * subAnimationCount);
            }
            this.selectSubAnimation(index,randomStartOffset);
         }
      }
      
      override public function selectSubAnimation(index:int, randomStartOffset:Boolean = true) : void
      {
         super.selectSubAnimation(index,randomStartOffset);
         if(mCurrentAnimation)
         {
            if(mAnimationListener)
            {
               mAnimationListener.playSound(mCurrentAnimation.soundName);
            }
         }
      }
      
      override public function setDamageState(damageState:Number, randomStartOffset:Boolean = true) : Boolean
      {
         mCurrentDamageState = damageState;
         return false;
      }
   }
}
