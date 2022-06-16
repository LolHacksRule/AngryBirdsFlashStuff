package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   
   public class FacebookWingmanEffectParticle extends SimpleLevelParticle
   {
       
      
      private var mAnimationTween:ISimpleTween;
      
      public var mAnimationRatio:Number = 0;
      
      public function FacebookWingmanEffectParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false)
      {
         this.clearAnimation();
         var animationNo:int = Math.random() * 7 + 1;
         var particleJSONId:String = "WINGMAN_EFFECT_" + animationNo;
         super(animationManager,textureManager,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,particleJSONId);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.mAnimationTween)
         {
            this.mAnimationTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,TweenManager.EASING_SINE_IN),TweenManager.instance.createTween(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,TweenManager.EASING_LINEAR));
            this.mAnimationTween.onComplete = this.clearAnimation;
            this.mAnimationTween.play();
         }
      }
      
      private function clearAnimation() : void
      {
         this.mAnimationRatio = 0;
         if(this.mAnimationTween)
         {
            this.mAnimationTween.stop();
         }
         this.mAnimationTween = null;
      }
   }
}
