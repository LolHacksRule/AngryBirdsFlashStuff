package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class SimpleLevelParticle extends LevelParticle
   {
       
      
      private var mParticleJSONId:String;
      
      public function SimpleLevelParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false, particleJSONId:String = "")
      {
         this.mParticleJSONId = particleJSONId;
         super(animationManager,textureManager,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay);
      }
      
      override protected function getParticleType() : String
      {
         return this.mParticleJSONId;
      }
   }
}
