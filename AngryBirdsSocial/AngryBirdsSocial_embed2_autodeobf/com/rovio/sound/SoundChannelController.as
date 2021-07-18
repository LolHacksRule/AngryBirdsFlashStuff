package com.rovio.sound
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var mMaxSoundCount:int;
      
      public var mVolume:Number = 1;
      
      private var mPlayingSounds:Vector.<SoundEffect>;
      
      public function SoundChannelController(newName:String, maxSoundCount:int, volume:Number)
      {
         super();
         this.mName = newName;
         this.mMaxSoundCount = maxSoundCount;
         this.mVolume = volume;
         this.mPlayingSounds = new Vector.<SoundEffect>();
      }
      
      public function canPlayNewSounds() : Boolean
      {
         return this.mPlayingSounds.length < this.mMaxSoundCount;
      }
      
      public function playSound(soundAssetName:String, loop:int = 0, volume:Number = -1) : SoundEffect
      {
         if(volume < 0)
         {
            volume = this.mVolume;
         }
         var sndClass:Class = AssetCache.getAssetFromCache(soundAssetName,false) as Class;
         if(!sndClass)
         {
            Log.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + soundAssetName);
            return null;
         }
         var snd:Sound = new sndClass();
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = snd.play(0,loop,soundTransform);
         var sndEffect:SoundEffect = new SoundEffect(soundAssetName,sndChannel,snd,this.onSoundEffectCompleted);
         this.mPlayingSounds.push(sndEffect);
         return sndEffect;
      }
      
      private function onSoundEffectCompleted(se:SoundEffect) : void
      {
         var removed:Vector.<SoundEffect> = null;
         var removedSoundEffect:SoundEffect = null;
         if(this.mPlayingSounds.indexOf(se) > -1)
         {
            removed = this.mPlayingSounds.splice(this.mPlayingSounds.indexOf(se),1);
            removedSoundEffect = removed[0];
            removedSoundEffect.destroy();
            removedSoundEffect = null;
            removed = null;
         }
      }
      
      public function turnOffSounds() : void
      {
         var sf:SoundEffect = null;
         while(this.mPlayingSounds.length > 0)
         {
            sf = this.mPlayingSounds[0];
            sf.soundChannel.stop();
            sf.forceSoundCompleted();
         }
      }
   }
}
