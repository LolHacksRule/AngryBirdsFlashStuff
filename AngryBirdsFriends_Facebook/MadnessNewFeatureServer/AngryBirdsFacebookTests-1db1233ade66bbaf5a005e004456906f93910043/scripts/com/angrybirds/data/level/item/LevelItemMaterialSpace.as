package com.angrybirds.data.level.item
{
   public class LevelItemMaterialSpace extends LevelItemMaterial
   {
       
      
      private var mBouncesLaser:Boolean;
      
      private var mBouncesLaserTargeted:Boolean;
      
      private var mParticlesDestroyed:String;
      
      private var mCollisionSound:String;
      
      private var mDamageSound:String;
      
      private var mDestroyedSound:String;
      
      private var mRollingSound:String;
      
      private var mDamageFactors:String;
      
      private var mZOrder:int;
      
      private var mSoundChannel:String;
      
      private var mForceX:Number;
      
      private var mForceY:Number;
      
      public function LevelItemMaterialSpace(name:String, bodyType:int, density:Number, friction:Number, restitution:Number, strength:Number, defence:Number, colors:Number, bouncesLaser:Boolean, bouncesLaserTargeted:Boolean, particlesDestroyed:String, collisionSound:String, damageSound:String, destroyedSound:String, rollingSound:String, damageFactors:String, z_order:int, soundChannel:String, forceX:Number, forceY:Number)
      {
         super(name,bodyType,density,friction,restitution,strength,defence,colors);
         this.mBouncesLaser = bouncesLaser;
         this.mBouncesLaserTargeted = bouncesLaserTargeted;
         this.mParticlesDestroyed = particlesDestroyed;
         this.mCollisionSound = collisionSound;
         this.mDamageSound = damageSound;
         this.mDestroyedSound = destroyedSound;
         this.mRollingSound = rollingSound;
         this.mDamageFactors = damageFactors;
         this.mZOrder = z_order;
         this.mSoundChannel = soundChannel;
         this.mForceX = forceX;
         this.mForceY = forceY;
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.mBouncesLaser;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.mBouncesLaserTargeted;
      }
      
      public function get zOrder() : int
      {
         return this.mZOrder;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.mParticlesDestroyed;
      }
      
      public function get rollingSound() : String
      {
         return this.mRollingSound;
      }
      
      public function get destroyedSound() : String
      {
         return this.mDestroyedSound;
      }
      
      public function get damageSound() : String
      {
         return this.mDamageSound;
      }
      
      public function get collisionSound() : String
      {
         return this.mCollisionSound;
      }
      
      public function get soundChannel() : String
      {
         return this.mSoundChannel;
      }
      
      public function get forceX() : Number
      {
         return this.mForceX;
      }
      
      public function get forceY() : Number
      {
         return this.mForceY;
      }
   }
}
