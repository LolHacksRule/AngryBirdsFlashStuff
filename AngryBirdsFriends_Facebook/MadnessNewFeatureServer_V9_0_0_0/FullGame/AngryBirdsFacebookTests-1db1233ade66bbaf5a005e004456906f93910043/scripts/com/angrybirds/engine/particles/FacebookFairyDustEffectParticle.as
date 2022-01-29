package com.angrybirds.engine.particles
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEngine;
   
   public class FacebookFairyDustEffectParticle extends SimpleLevelParticle
   {
       
      
      private var timerCounter:Number = 0;
      
      private const FLOATING_TIME:Number = 1500;
      
      private var mLiftingParticleTimer:Number = 0;
      
      private const LIFTING_PARTICLE_LIFETIME:Number = 250;
      
      private const LIFTING_PARTICLE_INTERVAL:Number = 150;
      
      private var floatingLevelObject:LevelObject;
      
      public function FacebookFairyDustEffectParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false, particleJSONId:String = "")
      {
         super(animationManager,textureManager,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,particleJSONId);
      }
      
      override public function update(deltaTime:Number) : Boolean
      {
         mRotation += 0.5;
         if(mRotation > 360)
         {
            mRotation = 0;
         }
         var updateValue:Boolean = super.update(deltaTime);
         if(!updateValue)
         {
            return false;
         }
         if(this.floatingLevelObject)
         {
            this.floatingLevelObject.notDamageAwarding = true;
            if(this.timerCounter <= this.FLOATING_TIME)
            {
               if(this.floatingLevelObject.getBody())
               {
                  if(this.timerCounter == 0)
                  {
                     SoundEngine.playSoundFromVariation("fairydust_particle_05","ChannelMisc");
                  }
                  if(this.mLiftingParticleTimer == 0)
                  {
                     this.createLiftingParticles();
                  }
                  this.mLiftingParticleTimer += deltaTime;
                  if(this.mLiftingParticleTimer >= this.LIFTING_PARTICLE_INTERVAL)
                  {
                     this.mLiftingParticleTimer = 0;
                  }
                  this.floatingLevelObject.getBody().SetAwake(true);
                  this.floatingLevelObject.getBody().SetLinearVelocity(new b2Vec2(0,-10));
                  displayObject.visible = false;
               }
               this.timerCounter += deltaTime;
            }
            this.floatingLevelObject.notDamageAwarding = false;
         }
         else if(displayObject.visible)
         {
            AngryBirdsEngine.smLevelMain.mLevelEngine.mWorld.QueryPoint(this.particleCollisionCallback,new b2Vec2(mX,mY));
         }
         return true;
      }
      
      private function particleCollisionCallback(fixture:b2Fixture) : Boolean
      {
         var lo:LevelObject = null;
         var returnValue:Boolean = true;
         if(fixture.GetBody().GetUserData())
         {
            lo = fixture.GetBody().GetUserData() as LevelObject;
            if(lo && !this.floatingLevelObject)
            {
               if(lo.isTexture() || lo.isGround())
               {
                  returnValue = true;
               }
               else if(lo.levelItem.itemName == "MISC_FAIRY_BLOCK_4X4")
               {
                  returnValue = true;
               }
               else if(lo.isDamageAwardingScore())
               {
                  this.floatingLevelObject = lo;
                  returnValue = false;
                  displayObject.visible = false;
               }
            }
         }
         return returnValue;
      }
      
      private function createLiftingParticles() : void
      {
         (AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager).addSimpleParticle("PARTICLE_WONDERLAND_DUST",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,this.floatingLevelObject.getBody().GetPosition().x,this.floatingLevelObject.getBody().GetPosition().y,this.LIFTING_PARTICLE_LIFETIME,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,500,2,16,true);
      }
      
      private function randomNumber(low:Number = 0, high:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + high - low)) + low;
      }
   }
}
