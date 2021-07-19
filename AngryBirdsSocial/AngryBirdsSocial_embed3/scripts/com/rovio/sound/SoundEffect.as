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
      
      public function SoundEffect(soundAssetName:String, soundChannel:SoundChannel, playingSound:Sound, completedCallback:Function = null)
      {
         super();
         this.mSoundChannel = soundChannel;
         this.mSound = playingSound;
         this.mCompletedCallback = completedCallback;
         this.mSoundAssetName = soundAssetName;
         this.mSoundChannel.addEventListener(Event.SOUND_COMPLETE,this.soundCompleted);
      }
      
      private function soundCompleted(evt:Event) : void
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
