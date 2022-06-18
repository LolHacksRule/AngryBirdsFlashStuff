package com.angrybirds.engine.particles
{
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class FacebookSnowParticle extends SimpleLevelParticle
   {
      
      public static const SNOW_LIFE_TIME:uint = 12000;
      
      public static var WIND_SPEED:Number = 0;
      
      public static var GLIDER_TIME:Number = 5000;
       
      
      private const mRotationDirection:int = Math.random() > 0.5 ? -1 : 1;
      
      private const mSlideSize:Number = Math.random() * 0.2 - 0.1;
      
      private var mGlideStep:Number;
      
      private var mParticleJsonNumber:int;
      
      public function FacebookSnowParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false)
      {
         this.mGlideStep = GLIDER_TIME * Math.random();
         WIND_SPEED = FacebookLevelSlingshot.smSnowParticlesWindSpeed / 100;
         this.mParticleJsonNumber = Math.round(Math.random() * 7 + 1);
         super(animationManager,textureManager,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,"PARTICLE_SNOW_" + this.mParticleJsonNumber);
      }
      
      public function getParticleLayer() : int
      {
         if(this.mParticleJsonNumber >= 5 && this.mParticleJsonNumber <= 7)
         {
            return LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(deltaTime:Number) : Boolean
      {
         this.mGlideStep -= deltaTime;
         var ratio:Number = this.mGlideStep / GLIDER_TIME;
         var angle:Number = Math.PI * 4 * ratio;
         mSpeedX += Math.cos(angle) * this.mSlideSize;
         mRotation += (WIND_SPEED * 10 + 1) * this.mRotationDirection;
         if(this.mGlideStep <= 0)
         {
            this.mGlideStep = GLIDER_TIME;
         }
         mSpeedX += WIND_SPEED;
         return super.update(deltaTime);
      }
   }
}
