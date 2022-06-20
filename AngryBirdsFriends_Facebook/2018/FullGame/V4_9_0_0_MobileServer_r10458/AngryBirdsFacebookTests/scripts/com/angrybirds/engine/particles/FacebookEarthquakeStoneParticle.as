package com.angrybirds.engine.particles
{
   import com.angrybirds.AngryBirdsEngine;
   
   public class FacebookEarthquakeStoneParticle extends SimpleLevelParticle
   {
       
      
      private var mRotationStep:int;
      
      public function FacebookEarthquakeStoneParticle(x:Number, y:Number)
      {
         var particleJSONId:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var speedX:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var speedY:Number = -2 * Math.random();
         this.mRotationStep = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(AngryBirdsEngine.smLevelMain.animationManager,AngryBirdsEngine.smLevelMain.textureManager,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,3000,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),speedX,speedY,25,0,0.75 + Math.random() * 0.5,-1,false,particleJSONId);
         mMaxY = -500;
      }
      
      override public function update(deltaTime:Number) : Boolean
      {
         mRotation += this.mRotationStep;
         return super.update(deltaTime);
      }
   }
}
