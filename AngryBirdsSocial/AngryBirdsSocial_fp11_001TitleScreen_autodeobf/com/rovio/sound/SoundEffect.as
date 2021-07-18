package com.rovio.sound
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class SoundEffect
   {
       
      
      private var mSoundChannel:SoundChannel;
      
      private var mSoundAssetName:String;
      
      private var mSound:Sound;
      
      private var mCompletedCallback:Function;
      
      public function SoundEffect(param1:String, param2:SoundChannel, param3:Sound, param4:Function = null)
      {
         super();
         this.mSoundChannel = param2;
         this.mSound = param3;
         this.mCompletedCallback = param4;
         this.mSoundAssetName = param1;
         this.mSoundChannel.addEventListener(Event.SOUND_COMPLETE,this.soundCompleted);
      }
      
      private function soundCompleted(param1:Event) : void
      {
         this.mSoundChannel.removeEventListener(Event.SOUND_COMPLETE,this.soundCompleted);
         if(this.mCompletedCallback != null)
         {
            this.mCompletedCallback.call(null,this);
         }
      }
      
      public function forceSoundCompleted() : void
      {
         this.soundCompleted(new Event(Event.SOUND_COMPLETE));
      }
      
      public function get soundAssetName() : String
      {
         return this.mSoundAssetName;
      }
      
      public function get sound() : Sound
      {
         return this.mSound;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this.mSoundChannel;
      }
      
      public function destroy() : void
      {
         this.mSoundChannel.removeEventListener(Event.SOUND_COMPLETE,this.soundCompleted);
         this.mSound = null;
         this.mSoundChannel = null;
         this.mSoundAssetName = null;
      }
   }
}
