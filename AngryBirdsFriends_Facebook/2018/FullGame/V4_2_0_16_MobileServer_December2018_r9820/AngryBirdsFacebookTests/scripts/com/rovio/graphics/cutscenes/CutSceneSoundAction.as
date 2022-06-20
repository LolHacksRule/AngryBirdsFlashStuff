package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class CutSceneSoundAction extends CutSceneAction
   {
       
      
      private var mSoundName:String;
      
      private var mLoop:Boolean;
      
      private var mVolume:Number;
      
      private var mChannel:int;
      
      public function CutSceneSoundAction(time:Number, duration:Number, soundName:String, loop:Boolean, volume:Number, channel:int)
      {
         super(time,duration);
         this.mSoundName = soundName;
         this.mLoop = loop;
         this.mVolume = volume;
         this.mChannel = channel;
      }
      
      override public function update(time:Number, sprite:Sprite, textureManager:TextureManager) : Boolean
      {
         if(!super.update(time,sprite,textureManager))
         {
            SoundEngine.playSound(this.mSoundName);
            return false;
         }
         return false;
      }
      
      override public function clone() : CutSceneAction
      {
         return new CutSceneSoundAction(time,duration,this.mSoundName,this.mLoop,this.mVolume,this.mChannel);
      }
   }
}
