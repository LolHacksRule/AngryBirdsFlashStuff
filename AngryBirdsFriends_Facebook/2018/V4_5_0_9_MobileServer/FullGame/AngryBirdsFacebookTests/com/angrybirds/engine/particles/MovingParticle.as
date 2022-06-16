package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItemSpaceParticleLua;
   import com.angrybirds.engine.LevelMain;
   
   public class MovingParticle
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      private var mVelocityX:Number;
      
      private var mVelocityY:Number;
      
      private var mGravityX:Number;
      
      private var mGravityY:Number;
      
      protected var mAngle:Number;
      
      private var mAngleVelocity:Number;
      
      protected var mScale:Number;
      
      private var mScaleBegin:Number;
      
      private var mScaleEnd:Number;
      
      private var mIsAlive:Boolean = true;
      
      private var mLifeTimeMilliSeconds:Number;
      
      private var mTotalLifeTimeMilliSeconds:Number;
      
      public function MovingParticle(x:Number, y:Number, angle:Number, levelItemLua:LevelItemSpaceParticleLua, scaleMultiplier:Number = 1)
      {
         super();
         this.mX = x;
         this.mY = y;
         this.mAngle = this.randomMinMax(levelItemLua.minAngleEmitter,levelItemLua.maxAngleEmitter);
         if(!levelItemLua.useAbsoluteAngle)
         {
            this.mAngle += angle;
         }
         this.mAngleVelocity = this.randomMinMax(levelItemLua.minAngleVel,levelItemLua.maxAngleVel) / 1000;
         var velocity:Number = this.randomMinMax(levelItemLua.minVel,levelItemLua.maxVel) / 1000 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mVelocityX = Math.cos(this.mAngle) * velocity;
         this.mVelocityY = Math.sin(this.mAngle) * velocity;
         this.mScaleBegin = this.randomMinMax(levelItemLua.minScaleBegin,levelItemLua.maxScaleBegin) * scaleMultiplier;
         this.mScaleEnd = this.randomMinMax(levelItemLua.minScaleEnd,levelItemLua.maxScaleEnd) * scaleMultiplier;
         this.mScale = this.mScaleBegin;
         this.mGravityX = levelItemLua.gravityX / 1000000 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mGravityY = levelItemLua.gravityY / 1000000 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mTotalLifeTimeMilliSeconds = levelItemLua.lifeTime * 1000;
         this.mLifeTimeMilliSeconds = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.mIsAlive;
      }
      
      public function get lifeTimeMilliSeconds() : Number
      {
         return this.mLifeTimeMilliSeconds;
      }
      
      public function get totalLifeTimeInMilliSeconds() : Number
      {
         return this.mTotalLifeTimeMilliSeconds;
      }
      
      public function update(deltaTimeMilliSeconds:Number) : Boolean
      {
         this.mVelocityX += this.mGravityX * deltaTimeMilliSeconds;
         this.mVelocityY += this.mGravityY * deltaTimeMilliSeconds;
         this.mX += this.mVelocityX * deltaTimeMilliSeconds;
         this.mY += this.mVelocityY * deltaTimeMilliSeconds;
         if(this.mLifeTimeMilliSeconds < this.mTotalLifeTimeMilliSeconds)
         {
            this.mScale = this.mScaleBegin + (this.mScaleEnd - this.mScaleBegin) * (this.mLifeTimeMilliSeconds / this.mTotalLifeTimeMilliSeconds);
         }
         else
         {
            this.mScale = this.mScaleEnd;
         }
         this.mAngle += this.mAngleVelocity * deltaTimeMilliSeconds;
         this.mLifeTimeMilliSeconds += deltaTimeMilliSeconds;
         if(this.mLifeTimeMilliSeconds >= this.mTotalLifeTimeMilliSeconds)
         {
            this.mIsAlive = false;
         }
         return this.mIsAlive;
      }
      
      protected function randomMinMax(min:Number, max:Number) : Number
      {
         if(isNaN(min))
         {
            min = 0;
         }
         if(isNaN(max))
         {
            max = 0;
         }
         return min + (max - min) * Math.random();
      }
   }
}
