package com.rovio.tween
{
   import com.rovio.tween.easing.*;
   
   public class TweenManager
   {
      
      public static const EASING_LINEAR:Function = Linear.easeIn;
      
      public static const EASING_SINE_IN:Function = Sine.easeIn;
      
      public static const EASING_SINE_OUT:Function = Sine.easeOut;
      
      public static const EASING_QUAD_OUT:Function = Quadratic.easeOut;
      
      public static const EASING_QUAD_IN:Function = Quadratic.easeIn;
      
      public static const EASING_BOUNCE_OUT:Function = Bounce.easeOut;
      
      public static const EASING_BOUNCE_IN:Function = Bounce.easeIn;
      
      public static const EASING_CIRCULAR_OUT:Function = Circular.easeOut;
      
      public static const EASING_CIRCULAR_IN:Function = Circular.easeIn;
      
      private static var sInstance:TweenManager;
       
      
      protected var mTweens:Vector.<IManagedTween>;
      
      protected var mIsPaused:Boolean;
      
      protected var mCatchErrors:Boolean = true;
      
      public function TweenManager()
      {
         this.mTweens = new Vector.<IManagedTween>();
         super();
      }
      
      public static function get instance() : TweenManager
      {
         if(!sInstance)
         {
            sInstance = new TweenManager();
         }
         return sInstance;
      }
      
      public function set catchErrors(catchErrors:Boolean) : void
      {
         this.mCatchErrors = catchErrors;
      }
      
      public function clearTweens() : void
      {
         var tween:IManagedTween = null;
         for(var i:int = this.mTweens.length - 1; i >= 0; i--)
         {
            tween = this.mTweens[i];
            if(tween.automaticCleanup)
            {
               this.mTweens.splice(i,1);
               tween.dispose();
            }
         }
      }
      
      public function createTween(target:Object, to:Object, from:Object = null, time:Number = 1.0, easing:Function = null, extraDelay:Number = 0.0) : IManagedTween
      {
         easing = easing || Linear.easeIn;
         var tween:SimpleTween = new SimpleTween(target,to,from,time,easing);
         tween.catchErrors = this.mCatchErrors;
         tween.extraDelay = extraDelay;
         this.mTweens.push(tween);
         return tween;
      }
      
      public function createParallelTween(... tweens) : IManagedTween
      {
         var tween:IManagedTween = null;
         var container:SimpleTweenContainer = null;
         var index:int = 0;
         for each(tween in tweens)
         {
            index = this.mTweens.indexOf(tween);
            this.mTweens.splice(index,1);
         }
         container = new SimpleTweenContainer(tweens,true);
         container.catchErrors = this.mCatchErrors;
         this.mTweens.push(container);
         return container;
      }
      
      public function createParallelTweens(tweens:Array) : IManagedTween
      {
         var tween:IManagedTween = null;
         var container:SimpleTweenContainer = null;
         var index:int = 0;
         for each(tween in tweens)
         {
            index = this.mTweens.indexOf(tween);
            this.mTweens.splice(index,1);
         }
         container = new SimpleTweenContainer(tweens,true);
         container.catchErrors = this.mCatchErrors;
         this.mTweens.push(container);
         return container;
      }
      
      public function createSequenceTween(... tweens) : IManagedTween
      {
         var tween:IManagedTween = null;
         var container:SimpleTweenContainer = null;
         var index:int = 0;
         for each(tween in tweens)
         {
            index = this.mTweens.indexOf(tween);
            this.mTweens.splice(index,1);
         }
         container = new SimpleTweenContainer(tweens,false);
         container.catchErrors = this.mCatchErrors;
         this.mTweens.push(container);
         return container;
      }
      
      public function createSequenceTweens(tweens:Array) : IManagedTween
      {
         var tween:IManagedTween = null;
         var container:SimpleTweenContainer = null;
         var index:int = 0;
         for each(tween in tweens)
         {
            index = this.mTweens.indexOf(tween);
            this.mTweens.splice(index,1);
         }
         container = new SimpleTweenContainer(tweens,false);
         container.catchErrors = this.mCatchErrors;
         this.mTweens.push(container);
         return container;
      }
      
      public function pause() : void
      {
         this.mIsPaused = true;
      }
      
      public function resume() : void
      {
         this.mIsPaused = false;
      }
      
      public function update(deltaTime:Number) : void
      {
         if(this.mIsPaused)
         {
            return;
         }
         if(this.mTweens.length == 0)
         {
            return;
         }
         var currentTweens:Vector.<IManagedTween> = this.mTweens.concat();
         var tween:IManagedTween = null;
         for(var i:int = 0; i < currentTweens.length; i++)
         {
            tween = currentTweens[i];
            tween.update(deltaTime);
         }
         for(var j:int = this.mTweens.length - 1; j >= 0; j--)
         {
            tween = this.mTweens[j];
            if(tween.isCompleted)
            {
               this.mTweens.splice(j,1);
               tween.dispose();
            }
         }
      }
   }
}
