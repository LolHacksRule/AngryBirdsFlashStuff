package com.angrybirds.engine.particles
{
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class FacebookLevelParticleManager extends LevelParticleManager
   {
       
      
      public function FacebookLevelParticleManager(animationManager:AnimationManager, textureManager:TextureManager)
      {
         super(animationManager,textureManager);
      }
      
      public function addSnowParticle(x:Number, y:Number) : void
      {
         var particle:FacebookSnowParticle = new FacebookSnowParticle(animationManager,textureManager,LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,FacebookSnowParticle.SNOW_LIFE_TIME,"",0,0,FacebookLevelSlingshot.smSnowParticlesSpeedY,2,Math.random() * Math.PI * 2,FacebookLevelSlingshot.smSnowParticlesScale,-1,false);
         this.addParticleToTheGroup(particle,particle.getParticleLayer());
      }
      
      public function addEarthquakeCloudParticle(x:Number, y:Number) : void
      {
         var particle:FacebookEarthquakeCloudParticle = new FacebookEarthquakeCloudParticle(x,y);
         this.addParticleToTheGroup(particle,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function addEarthquakeStoneParticle(x:Number, y:Number) : void
      {
         var particle:FacebookEarthquakeStoneParticle = new FacebookEarthquakeStoneParticle(x,y);
         this.addParticleToTheGroup(particle,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function addStarParticle(x:Number, y:Number) : void
      {
      }
      
      public function addWingmanEffectParticle(x:Number, y:Number) : void
      {
         var particle:FacebookWingmanEffectParticle = new FacebookWingmanEffectParticle(animationManager,textureManager,LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,1000,"",0,0,0,0,0,1,-1,false);
         this.addParticleToTheGroup(particle,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function addPowerPotionParticle(x:Number, y:Number, scale:Number, gravity:Number, speedX:Number = 0, speedY:Number = 0, birdRadius:Number = 0) : void
      {
         var particle:PowerPotionParticle = new PowerPotionParticle(animationManager,textureManager,LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x,y,1000,"",LevelParticle.PARTICLE_MATERIAL_PIGS,speedX,speedY,gravity,0,scale,6,true,birdRadius);
         this.addParticleToTheGroup(particle,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function addFairyDustParticle(x:Number, y:Number, starSpeed:Number, angle:Number, starsScale:Number) : void
      {
         var particle:FacebookFairyDustEffectParticle = new FacebookFairyDustEffectParticle(animationManager,textureManager,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,x * LevelMain.PIXEL_TO_B2_SCALE,y * LevelMain.PIXEL_TO_B2_SCALE,2000,"",0,starSpeed * Math.cos(angle) * starsScale,-starSpeed * Math.sin(angle) * starsScale,40,starSpeed * 20,starsScale,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.addParticleToTheGroup(particle,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function addSonicBoom(x:Number, y:Number, lifetime:Number, sonicBoomScaleStart:Number, sonicBoomScaleEnd:Number) : void
      {
         var particle:FacebookSonicBoomParticle = new FacebookSonicBoomParticle(animationManager,textureManager,x,y,lifetime,sonicBoomScaleStart,sonicBoomScaleEnd);
         this.addParticleToTheGroup(particle,LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function addParticleToTheGroup(particle:SimpleLevelParticle, groupId:int) : void
      {
         var group:LevelParticleGroup = getGroup(groupId);
         if(group)
         {
            group.addParticle(particle);
         }
         else
         {
            particle.dispose();
         }
      }
   }
}
