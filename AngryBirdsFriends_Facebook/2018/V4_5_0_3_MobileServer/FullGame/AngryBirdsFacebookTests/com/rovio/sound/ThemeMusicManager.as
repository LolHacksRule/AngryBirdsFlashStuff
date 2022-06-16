package com.rovio.sound
{
   import flash.events.Event;
   
   public class ThemeMusicManager
   {
       
      
      private var mCurrentSongId:String = "";
      
      private var mCurrentChannelId:String = "";
      
      private var mPendingSongId:String = "";
      
      private var mPendingForceStart:Boolean = false;
      
      private var mSongs:Vector.<ThemeMusicObject>;
      
      private var mSoundTweener:SoundEngineTweener;
      
      private var mSongPausedAt:Number = 0;
      
      private var mSongPausedId:String;
      
      public function ThemeMusicManager()
      {
         super();
         this.mSoundTweener = new SoundEngineTweener();
         this.mSongs = new Vector.<ThemeMusicObject>();
         SoundEngine.addEventListener(SoundEngineErrorEvent.STREAM_ERROR,this.onSoundStreamError);
         SoundEngine.addEventListener(SoundEngineEvent.CHANNEL_STOP_ALL,this.onSoundEngineChannelStop);
         SoundEngine.addEventListener(SoundEngineEvent.CHANNEL_STOP,this.onSoundEngineChannelStop);
      }
      
      private function getCurrentThemeEffect() : SoundEffect
      {
         var channelController:SoundChannelController = SoundEngine.getChannelController(this.mCurrentChannelId);
         return channelController.getSoundEffectById(this.mCurrentSongId);
      }
      
      private function clearCurrentTween() : void
      {
         this.mSoundTweener.removeEventListener(Event.COMPLETE,this.onThemeFadeOut);
         this.mSoundTweener.removeEventListener(Event.COMPLETE,this.onThemeFadeIn);
         this.mSoundTweener.removeTweenById(this.mCurrentSongId);
      }
      
      private function getSongDataObject(songId:String) : ThemeMusicObject
      {
         for(var i:int = 0; i < this.mSongs.length; i++)
         {
            if(songId == this.mSongs[i].songId)
            {
               return this.mSongs[i];
            }
         }
         return null;
      }
      
      private function stopCurrentChannel() : Boolean
      {
         if(SoundEngine.getChannelController(this.mCurrentChannelId) != null)
         {
            SoundEngine.stopChannel(this.mCurrentChannelId);
            return true;
         }
         return false;
      }
      
      public function registerSong(themeData:ThemeMusicObject, replaceDuplicateID:Boolean = false) : void
      {
         var i:int = 0;
         if(replaceDuplicateID)
         {
            for(i = 0; i < this.mSongs.length; i++)
            {
               if(themeData.songId == this.mSongs[i].songId)
               {
                  this.mSongs.splice(i,1);
               }
            }
         }
         this.mSongs.push(themeData);
      }
      
      public function stopCurrentSound() : void
      {
         this.clearCurrentTween();
         this.stopCurrentChannel();
         this.mCurrentSongId = "";
         this.mCurrentChannelId = "";
      }
      
      public function playSongWithFade(newSongId:String, forceStart:Boolean = false) : void
      {
         var themeSoundEffect:SoundEffect = null;
         if(this.mCurrentSongId == newSongId && !forceStart)
         {
            return;
         }
         this.mPendingForceStart = forceStart;
         this.mPendingSongId = newSongId;
         if(SoundEngine.getChannelController(this.mCurrentChannelId) != null && SoundEngine.getChannelController(this.mCurrentChannelId).isPlaying())
         {
            themeSoundEffect = this.getCurrentThemeEffect();
            this.clearCurrentTween();
            this.mSoundTweener.addEventListener(Event.COMPLETE,this.onThemeFadeOut);
            this.mSoundTweener.fadeOut(this.mCurrentSongId,themeSoundEffect,0.5);
         }
         else
         {
            this.onThemeFadeOut();
         }
      }
      
      public function playSong(newSongId:String, fadeIn:Boolean = false, forceStart:Boolean = false) : void
      {
         if(this.mCurrentSongId == newSongId && !forceStart)
         {
            return;
         }
         this.mPendingForceStart = false;
         this.stopCurrentSound();
         var songDataObject:ThemeMusicObject = this.getSongDataObject(newSongId);
         if(songDataObject == null)
         {
            return;
         }
         this.mCurrentSongId = songDataObject.songId;
         this.mCurrentChannelId = songDataObject.channelId;
         this.mPendingSongId = "";
         var songChannelController:SoundChannelController = SoundEngine.getChannelController(this.mCurrentChannelId);
         if(!songChannelController)
         {
            SoundEngine.addNewChannelControl(this.mCurrentChannelId,1,songDataObject.volume);
         }
         var soundPosition:Number = 0;
         if(this.mSongPausedId == this.mCurrentSongId)
         {
            soundPosition = this.mSongPausedAt;
            fadeIn = true;
         }
         this.mSongPausedId = "";
         this.mSongPausedAt = 0;
         var newThemeSound:SoundEffect = this.playSoundEffect(songDataObject,soundPosition);
         if(newThemeSound == null)
         {
            return;
         }
         newThemeSound.addEventListener(SoundEffect.SOUND_ENDED,this.onThemeSoundEnded);
         if(fadeIn)
         {
            newThemeSound.volume = 0;
            this.mSoundTweener.addEventListener(Event.COMPLETE,this.onThemeFadeIn);
            this.mSoundTweener.fadeIn(this.mCurrentSongId,newThemeSound,songDataObject.volume,0.5);
         }
         else
         {
            newThemeSound.volume = songDataObject.volume;
         }
      }
      
      private function onThemeSoundEnded(e:Event) : void
      {
         this.playSong(this.mCurrentSongId,false,true);
      }
      
      private function playSoundEffect(songDataObject:ThemeMusicObject, startTime:Number = 0) : SoundEffect
      {
         var newThemeSound:SoundEffect = null;
         if(songDataObject.streamingURL != "")
         {
            newThemeSound = SoundEngine.playStreamingSound(songDataObject.streamingURL,songDataObject.songId,songDataObject.buffer,songDataObject.channelId,songDataObject.repeatCount,songDataObject.volume,startTime);
         }
         else
         {
            newThemeSound = SoundEngine.playSound(songDataObject.songId,songDataObject.channelId,songDataObject.repeatCount,songDataObject.volume,startTime);
         }
         return newThemeSound;
      }
      
      private function onThemeFadeOut(event:Event = null) : void
      {
         this.playSong(this.mPendingSongId,true,this.mPendingForceStart);
      }
      
      private function onThemeFadeIn(event:Event = null) : void
      {
         this.mSoundTweener.removeEventListener(Event.COMPLETE,this.onThemeFadeIn);
      }
      
      private function onSoundStreamError(event:SoundEngineErrorEvent) : void
      {
         if(event.soundId == this.mCurrentSongId)
         {
            this.stopCurrentSound();
         }
      }
      
      private function onSoundEngineChannelStop(event:SoundEngineEvent) : void
      {
         if(event.type == SoundEngineEvent.CHANNEL_STOP)
         {
            if(event.channelId == this.mCurrentChannelId)
            {
               this.clearCurrentTween();
               this.mCurrentSongId = "";
               this.mCurrentChannelId = "";
            }
         }
         else
         {
            this.clearCurrentTween();
            this.mCurrentSongId = "";
            this.mCurrentChannelId = "";
         }
      }
      
      public function themeSongStopped(currentPosition:Number, id:String) : void
      {
         this.mSongPausedAt = currentPosition;
         this.mSongPausedId = id;
      }
   }
}
