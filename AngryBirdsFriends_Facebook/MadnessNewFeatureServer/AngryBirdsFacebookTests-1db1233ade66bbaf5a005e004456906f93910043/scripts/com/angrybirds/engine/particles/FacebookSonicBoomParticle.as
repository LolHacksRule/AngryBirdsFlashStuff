package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   
   public class FacebookSonicBoomParticle extends SimpleLevelParticle
   {
      
      private static const PARTICLE_NAME_PARTICLE:String = "SonicBoom";
       
      
      private var mScaleStart:Number;
      
      private var mScaleEnd:Number;
      
      public function FacebookSonicBoomParticle(animationManager:AnimationManager, textureManager:TextureManager, newX:Number, newY:Number, newLifeTime:Number, sonicBoomScaleStart:Number, sonicBoomScaleEnd:Number)
      {
         this.mScaleStart = sonicBoomScaleStart;
         this.mScaleEnd = sonicBoomScaleEnd;
         super(animationManager,textureManager,PARTICLE_NAME_PARTICLE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,newX,newY,newLifeTime,"",0,0,0,0,0,this.mScaleStart,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(deltaTime:Number) : Boolean
      {
         var scaleRange:Number = NaN;
         var returnValue:Boolean = super.update(deltaTime);
         scaleRange = this.mScaleEnd - this.mScaleStart;
         var currentScale:Number = this.mScaleStart + scaleRange / mLifeTime * mTimer;
         mDisplayObject.scaleX = currentScale;
         mDisplayObject.scaleY = currentScale;
         return returnValue;
      }
   }
}
