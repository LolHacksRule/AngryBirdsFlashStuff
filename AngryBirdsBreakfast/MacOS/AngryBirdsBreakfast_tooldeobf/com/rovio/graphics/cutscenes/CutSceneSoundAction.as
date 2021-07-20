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
      
      public function CutSceneSoundAction(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.mSoundName = param3;
         this.mLoop = param4;
         this.mVolume = param5;
         this.mChannel = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(!super.update(param1,param2,param3))
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
