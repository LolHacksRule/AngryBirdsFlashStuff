package com.rovio.sound
{
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.TweenManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class SoundVolumeTween extends EventDispatcher
   {
       
      
      private var mEffect:SoundEffect;
      
      private var mTween:IManagedTween;
      
      private var mId:String;
      
      public function SoundVolumeTween(id:String, soundEffect:SoundEffect, targetVolume:Number, duration:Number = 1, delay:Number = 0, easingMethod:Function = null)
      {
         super();
         this.mId = id;
         this.mEffect = soundEffect;
         this.mTween = TweenManager.instance.createTween(this.mEffect,{"volume":targetVolume},{"volume":this.mEffect.volume},duration,easingMethod);
         this.mTween.delay = delay;
         this.mTween.automaticCleanup = false;
         this.mTween.onComplete = this.onTweenComplete;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get effect() : SoundEffect
      {
         return this.mEffect;
      }
      
      public function play() : void
      {
         if(this.mTween)
         {
            this.mTween.play();
         }
      }
      
      public function stop() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.mTween)
         {
            this.mTween.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween.dispose();
            this.mTween = null;
         }
      }
      
      private function onTweenComplete() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
