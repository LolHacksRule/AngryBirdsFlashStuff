package com.rovio.sound
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class SoundEngineTweener extends EventDispatcher
   {
       
      
      private var mEffects:Dictionary;
      
      public function SoundEngineTweener()
      {
         super();
         this.mEffects = new Dictionary();
      }
      
      public function tweenSoundVolume(id:String, soundEffect:SoundEffect, targetVolume:Number, duration:Number = 1000, delay:Number = 0) : Boolean
      {
         if(this.mEffects[id])
         {
            return false;
         }
         var tweenedSound:SoundVolumeTween = new SoundVolumeTween(id,soundEffect,targetVolume,duration,delay);
         tweenedSound.addEventListener(Event.COMPLETE,this.onTweenComplete);
         this.mEffects[id] = tweenedSound;
         tweenedSound.play();
         return true;
      }
      
      public function fadeOut(id:String, soundEffect:SoundEffect, duration:Number = 1000, delay:Number = 0) : Boolean
      {
         if(this.mEffects[id])
         {
            return false;
         }
         var tweenedSound:SoundVolumeTween = new SoundVolumeTween(id,soundEffect,0,duration,delay);
         tweenedSound.addEventListener(Event.COMPLETE,this.onTweenComplete);
         this.mEffects[id] = tweenedSound;
         tweenedSound.play();
         return true;
      }
      
      public function fadeIn(id:String, soundEffect:SoundEffect, targetVolume:Number = 1, duration:Number = 1000, delay:Number = 0) : Boolean
      {
         if(this.mEffects[id])
         {
            return false;
         }
         var tweenedSound:SoundVolumeTween = new SoundVolumeTween(id,soundEffect,targetVolume,duration,delay);
         tweenedSound.addEventListener(Event.COMPLETE,this.onTweenComplete);
         this.mEffects[id] = tweenedSound;
         tweenedSound.play();
         return true;
      }
      
      public function pauseTweenById(id:String) : Boolean
      {
         var tweenedSound:SoundVolumeTween = null;
         if(this.mEffects[id])
         {
            tweenedSound = this.mEffects[id];
            tweenedSound.pause();
            return true;
         }
         return false;
      }
      
      public function stopTweenById(id:String) : Boolean
      {
         var tweenedSound:SoundVolumeTween = null;
         if(this.mEffects[id])
         {
            tweenedSound = this.mEffects[id];
            tweenedSound.stop();
            return true;
         }
         return false;
      }
      
      public function removeTweenById(id:String) : Boolean
      {
         var tweenedSound:SoundVolumeTween = null;
         if(this.mEffects[id])
         {
            tweenedSound = this.mEffects[id];
            tweenedSound.dispose();
            delete this.mEffects[tweenedSound.id];
            return true;
         }
         return false;
      }
      
      public function hasTweenWithId(id:String) : Boolean
      {
         if(this.mEffects[id])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var key:* = null;
         for(key in this.mEffects)
         {
            this.removeTweenById(key);
         }
      }
      
      private function onTweenComplete(event:Event) : void
      {
         var tweenedSound:SoundVolumeTween = event.currentTarget as SoundVolumeTween;
         tweenedSound.removeEventListener(Event.COMPLETE,this.onTweenComplete);
         tweenedSound.dispose();
         delete this.mEffects[tweenedSound.id];
         dispatchEvent(event);
      }
   }
}
