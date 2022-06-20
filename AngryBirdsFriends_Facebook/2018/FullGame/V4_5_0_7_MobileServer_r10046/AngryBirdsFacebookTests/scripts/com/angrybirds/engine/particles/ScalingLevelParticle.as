package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class ScalingLevelParticle extends LevelParticle
   {
      
      public static const PARTICLE_NAME_PARTICLE_SHRINKING:String = "Effect_Shrinking_Particle";
       
      
      private var mParticleJSONId:String;
      
      private var mStartScalingLifetimePercentage:Number;
      
      public function ScalingLevelParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false, particleJSONId:String = "", startScalingLifetimePercentage:Number = 0)
      {
         this.mParticleJSONId = particleJSONId;
         this.mStartScalingLifetimePercentage = startScalingLifetimePercentage;
         super(animationManager,textureManager,PARTICLE_NAME_PARTICLE_SHRINKING,newParticleGroup,newParticleType,newX,newY,newLifeTime,"",newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay);
      }
      
      override protected function getParticleType() : String
      {
         return this.mParticleJSONId;
      }
      
      override public function updateParticles(deltaTime:Number) : Boolean
      {
         var scalingStartTime:Number = NaN;
         var shrinkedScale:Number = NaN;
         var returnValue:Boolean = super.updateParticles(deltaTime);
         var lifeTimePercentage:Number = mTimer / mLifeTime * 100;
         if(lifeTimePercentage >= this.mStartScalingLifetimePercentage)
         {
            scalingStartTime = mLifeTime * (this.mStartScalingLifetimePercentage / 100);
            shrinkedScale = mScale * (1 - (mTimer - scalingStartTime) / (mLifeTime - scalingStartTime));
            mDisplayObject.scaleX = shrinkedScale;
            mDisplayObject.scaleY = shrinkedScale;
         }
         else
         {
            mDisplayObject.scaleX = mScale;
            mDisplayObject.scaleY = mScale;
         }
         return returnValue;
      }
   }
}
