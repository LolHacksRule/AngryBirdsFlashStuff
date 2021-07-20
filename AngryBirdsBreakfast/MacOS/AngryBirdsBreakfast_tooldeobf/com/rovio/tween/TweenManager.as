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
      
      public function set catchErrors(param1:Boolean) : void
      {
         this.mCatchErrors = param1;
      }
      
      public function clearTweens() : void
      {
         var _loc2_:IManagedTween = null;
         var _loc1_:int = this.mTweens.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mTweens[_loc1_];
            if(_loc2_.automaticCleanup)
            {
               this.mTweens.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function createTween(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : IManagedTween
      {
         param5 = param5 || Linear.easeIn;
         var _loc6_:SimpleTween;
         (_loc6_ = new SimpleTween(param1,param2,param3,param4,param5)).catchErrors = this.mCatchErrors;
         this.mTweens.push(_loc6_);
         return _loc6_;
      }
      
      public function createParallelTween(... rest) : IManagedTween
      {
         var _loc2_:IManagedTween = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.mTweens.indexOf(_loc2_);
            this.mTweens.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         _loc3_.catchErrors = this.mCatchErrors;
         this.mTweens.push(_loc3_);
         return _loc3_;
      }
      
      public function createSequenceTween(... rest) : IManagedTween
      {
         var _loc2_:IManagedTween = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.mTweens.indexOf(_loc2_);
            this.mTweens.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         _loc3_.catchErrors = this.mCatchErrors;
         this.mTweens.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.mIsPaused = true;
      }
      
      public function resume() : void
      {
         this.mIsPaused = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.mIsPaused)
         {
            return;
         }
         if(this.mTweens.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<IManagedTween> = this.mTweens.concat();
         var _loc3_:IManagedTween = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.mTweens.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.mTweens[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.mTweens.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
