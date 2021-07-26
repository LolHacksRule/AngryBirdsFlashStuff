package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class PowerPotionParticle extends SimpleLevelParticle
   {
       
      
      private var mBaseX:Number = 0;
      
      private var valueX:Number = 0;
      
      private var xModifier:Number = 0;
      
      public function PowerPotionParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false, birdRadius:Number = 0)
      {
         var xModifier:Number = Math.max(0,Math.min(birdRadius,Math.random() * 2));
         var rnd:Number = Math.random() > 0.5 ? Number(1) : Number(-1);
         newX += xModifier * rnd;
         super(animationManager,textureManager,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,"POWERUP_PARTICLE_BUBBLE");
      }
   }
}
