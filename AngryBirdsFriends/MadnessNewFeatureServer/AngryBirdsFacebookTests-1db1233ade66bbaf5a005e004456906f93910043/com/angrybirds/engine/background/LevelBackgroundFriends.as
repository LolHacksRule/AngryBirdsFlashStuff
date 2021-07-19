package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.item.LevelItemSoundManagerLua;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEngine;
   
   public class LevelBackgroundFriends extends LevelBackground
   {
       
      
      protected var mSoundManager:LevelItemSoundManagerLua;
      
      public function LevelBackgroundFriends(levelEventPublisher:LevelEventPublisher, background:LevelThemeBackground, groundLevel:Number, textureManager:TextureManager, minimumScale:Number, soundManager:LevelItemSoundManagerLua, highQuality:Boolean = true)
      {
         super(levelEventPublisher,background,groundLevel,textureManager,minimumScale,highQuality);
         this.mSoundManager = soundManager;
      }
      
      override public function playAmbientSound() : void
      {
         if(SoundEngine.getChannelController("CHANNEL_AMBIENT") == null || !SoundEngine.getChannelController("CHANNEL_AMBIENT").isPlaying())
         {
            if(this.mSoundManager)
            {
               this.mSoundManager.playSound(ambientSoundName,"CHANNEL_AMBIENT",10000);
            }
         }
      }
   }
}
