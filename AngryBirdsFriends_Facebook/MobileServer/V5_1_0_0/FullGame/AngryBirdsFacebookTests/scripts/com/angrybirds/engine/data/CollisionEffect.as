package com.angrybirds.engine.data
{
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   
   public class CollisionEffect
   {
       
      
      private var mActivationRatio:int;
      
      private var mSoundNames:Array;
      
      private var mSoundChannel:String;
      
      private var mParticleEffectName:String;
      
      private var mParticleEffectCount:int;
      
      private var mLifeTime:Number;
      
      private var mAngle:Number;
      
      private var mMinSpeed:Number;
      
      private var mMaxSpeed:Number;
      
      private var mLoop:int;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      private var mUpdateManager:ILevelObjectUpdateManager;
      
      private var mTweenLoopParticles:ISimpleTween;
      
      private var mCollisionTime:Number = 0;
      
      private var mLoopInterval:Number = 0;
      
      private var mTriggerLoop:Boolean = false;
      
      private var mTempLoopCount:int = 0;
      
      private var mScale:Number = 1.0;
      
      private var mStartScalingLifetimePercentage:Number = 0;
      
      private var mTransitionType:String = "";
      
      private var mGravity:Number;
      
      private var mRotation:Number;
      
      private var mParticleSequence:int = 0;
      
      private var mBodyAngleRad:Number = 0;
      
      private var mVelocityVector:b2Vec2;
      
      public function CollisionEffect()
      {
         this.mVelocityVector = new b2Vec2();
         super();
      }
      
      public function setSoundEffect(soundNames:Array, soundChannel:String) : void
      {
         this.mSoundNames = soundNames;
         this.mSoundChannel = soundChannel;
      }
      
      public function setParticleEffect(particleName:String, amount:int, lifeTime:Number, angle:Number = 360, minSpeed:Number = 1.0, maxSpeed:Number = 1.0, loop:int = 0, loopInterval:Number = 0, activationRatioDamageToMass:int = 2, transitionType:String = "", scale:Number = 1, startScalingLifeTimePercentage:Number = 0, gravity:Number = 0, rotation:Number = 0, particleSequence:int = 0) : void
      {
         this.mParticleEffectName = particleName;
         this.mParticleEffectCount = amount;
         this.mLifeTime = lifeTime;
         this.mAngle = angle;
         this.mMinSpeed = minSpeed;
         this.mMaxSpeed = maxSpeed;
         this.mLoop = loop;
         this.mLoopInterval = loopInterval;
         this.mActivationRatio = activationRatioDamageToMass;
         this.mTransitionType = transitionType;
         this.mScale = scale;
         this.mStartScalingLifetimePercentage = startScalingLifeTimePercentage;
         this.mGravity = gravity;
         this.mRotation = rotation;
         this.mParticleSequence = particleSequence;
      }
      
      public function collisionActivated(damage:Number, objectMass:Number, updateManager:ILevelObjectUpdateManager, x:Number, y:Number, angleRad:Number = 0, velocityVector:b2Vec2 = null) : void
      {
         var index:int = 0;
         if(damage / objectMass > this.mActivationRatio)
         {
            if(this.mSoundNames)
            {
               index = Math.random() * this.mSoundNames.length;
               SoundEngine.playSound(this.mSoundNames[index],this.mSoundChannel);
            }
            this.mX = x;
            this.mY = y;
            this.mBodyAngleRad = angleRad;
            this.mVelocityVector = velocityVector;
            this.mUpdateManager = updateManager;
            if(this.mParticleEffectName)
            {
               if(this.mParticleEffectCount > 0)
               {
                  this.displayParticleEffect();
                  this.mTempLoopCount = this.mLoop - 1;
                  this.mTriggerLoop = true;
               }
            }
         }
      }
      
      protected function displayParticleEffect() : void
      {
         var particleSpreadStartAngleRad:Number = NaN;
         var normalV:b2Vec2 = null;
         var particleAngle:Number = NaN;
         var particleAngleRad:Number = NaN;
         var particleVelocityAngleRad:Number = NaN;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         var particleJSONId:String = null;
         var animationNo:int = 0;
         particleSpreadStartAngleRad = this.mAngle / 2 * (Math.PI / 180);
         normalV = this.mVelocityVector.Copy();
         normalV.Normalize();
         var velocityAngleRad:Number = Math.atan2(normalV.y,normalV.x) - particleSpreadStartAngleRad;
         for(var i:int = 0; i < this.mParticleEffectCount; i++)
         {
            particleAngle = this.mAngle / this.mParticleEffectCount * (i + 1);
            particleAngleRad = particleAngle * (Math.PI / 180);
            particleVelocityAngleRad = velocityAngleRad + particleAngleRad;
            speedX = -Math.cos(particleVelocityAngleRad) * (this.mMinSpeed + Math.random() * (this.mMaxSpeed - this.mMinSpeed));
            speedY = -Math.sin(particleVelocityAngleRad) * (this.mMinSpeed + Math.random() * (this.mMaxSpeed - this.mMinSpeed));
            particleJSONId = this.mParticleEffectName;
            if(this.mParticleSequence > 0)
            {
               animationNo = Math.random() * this.mParticleSequence + 1;
               particleJSONId = this.mParticleEffectName + "_" + animationNo;
            }
            this.mUpdateManager.addScalingParticle(particleJSONId,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mStartScalingLifetimePercentage,this.mX,this.mY,this.mLifeTime,0,speedX,speedY,this.mGravity,this.mRotation,this.mScale,-1,true);
         }
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         if(this.mTempLoopCount > 0 && this.mCollisionTime >= this.mLoopInterval && this.mTriggerLoop)
         {
            this.displayParticleEffect();
            --this.mTempLoopCount;
            this.mCollisionTime = 0;
         }
         else if(this.mLoop == 0 && this.mTriggerLoop)
         {
            this.mTriggerLoop = false;
         }
         this.mCollisionTime += deltaTimeMilliSeconds;
      }
      
      private function radiansToDegrees(radian:Number) : Number
      {
         return (360 + radian * 180 / Math.PI % 360) % 360;
      }
   }
}
