package com.angrybirds.engine.particles
{
   import com.angrybirds.AngryBirdsEngine;
   
   public class FacebookEarthquakeCloudParticle extends SimpleLevelParticle
   {
       
      
      private var mRotationStep:int;
      
      public function FacebookEarthquakeCloudParticle(x:Number, y:Number)
      {
         this.mRotationStep = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(AngryBirdsEngine.smLevelMain.animationManager,AngryBirdsEngine.smLevelMain.textureManager,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,1000,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(deltaTime:Number) : Boolean
      {
         mRotation += this.mRotationStep;
         displayObject.alpha -= 0.0025;
         return super.update(deltaTime);
      }
   }
}
