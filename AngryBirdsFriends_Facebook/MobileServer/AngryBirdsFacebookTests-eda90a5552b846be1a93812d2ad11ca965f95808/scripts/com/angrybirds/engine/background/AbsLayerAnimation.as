package com.angrybirds.engine.background
{
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.easing.Cubic;
   import com.rovio.tween.easing.Linear;
   import com.rovio.tween.easing.Quadratic;
   import starling.display.Sprite;
   
   class AbsLayerAnimation
   {
      
      public static var SOUND_CHANNEL_NAME:String = "layerAnimationSoundChannel";
       
      
      private var mTriggerName:String;
      
      private var mIsRunning:Boolean;
      
      private var mSoundName:String;
      
      protected var mSprite:Sprite;
      
      protected var mTween:Function;
      
      private var firstRun:Boolean = true;
      
      function AbsLayerAnimation(sprite:Sprite, triggerName:String, tweenName:String, sound:String)
      {
         super();
         if(this["constructor"] == AbsLayerAnimation)
         {
            throw new Error("this is abstract class");
         }
         this.mSprite = sprite;
         this.mTriggerName = triggerName;
         this.mSoundName = sound;
         this.mTween = this.getTweenFunction(tweenName);
         if(SoundEngine.getChannelController(SOUND_CHANNEL_NAME) == null)
         {
            SoundEngine.addNewChannelControl(SOUND_CHANNEL_NAME,5,1);
         }
      }
      
      private function getTweenFunction(tweenName:String) : Function
      {
         var tween:Function = Linear.easeNone;
         switch(tweenName)
         {
            case "QuadraticIn":
               tween = Quadratic.easeIn;
               break;
            case "QuadraticOut":
               tween = Quadratic.easeOut;
               break;
            case "QuadraticInOut":
               tween = Quadratic.easeInOut;
               break;
            case "CubicIn":
               tween = Cubic.easeIn;
               break;
            case "CubicOut":
               tween = Cubic.easeOut;
               break;
            case "CubicInOut":
               tween = Cubic.easeInOut;
         }
         return tween;
      }
      
      final function start() : void
      {
         this.mIsRunning = true;
         if(this.mSoundName)
         {
            SoundEngine.playSoundFromVariation(this.mSoundName);
         }
         this.onStart();
      }
      
      final function update(dt:int) : void
      {
         if(this.firstRun)
         {
            this.firstRun = false;
            if(this.mTriggerName.length == 0)
            {
               this.start();
            }
         }
         if(this.mIsRunning)
         {
            this.onUpdate(dt);
         }
      }
      
      final function get triggerName() : String
      {
         return this.mTriggerName;
      }
      
      final function isRunning() : Boolean
      {
         return this.mIsRunning;
      }
      
      protected final function animCompleted() : void
      {
         this.mIsRunning = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(dt:int) : void
      {
      }
   }
}
