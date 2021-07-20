package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.Tuner;
   import flash.geom.Point;
   
   public class LevelObjectMightyEagle extends LevelObjectBird
   {
       
      
      private var mShadingStarted:Boolean;
      
      private var mTouchedGround:Boolean;
      
      private var mPigsKilled:Boolean;
      
      private var mSardineId:int;
      
      public function LevelObjectMightyEagle(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function radiansToDegrees(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function degreesToRadians(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get hasTouchedGround() : Boolean
      {
         return this.mTouchedGround;
      }
      
      public function set sardineId(param1:int) : void
      {
         this.mSardineId = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(param1:ILevelObjectUpdateManager) : void
      {
         if(!this.mShadingStarted && lifeTimeMilliSeconds > Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.mShadingStarted = true;
            param1.setShadingEffect(true);
         }
      }
      
      protected function move(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         var _loc3_:int = 1;
         if(this.mTouchedGround)
         {
            this.rotateNonStop(Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param1);
            _loc3_ = -1;
            if(lifeTimeMilliSeconds > Tuner.MIGHTY_EAGLE_PIG_KILL_DELAY && !this.mPigsKilled)
            {
               this.killPigs(param2);
            }
         }
         else
         {
            this.hitGround(param2);
         }
         moveToDirection(param1,new Point(1,_loc3_ * Tuner.MIGHTY_EAGLE_Y_CHANGE),Tuner.MIGHTY_EAGLE_FLYING_SPEED);
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.updateShading(param2);
         this.addParticles(param2);
         this.move(param1,param2);
      }
      
      protected function addParticles(param1:ILevelObjectUpdateManager) : void
      {
         param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function hitGround(param1:ILevelObjectUpdateManager) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.mTouchedGround = true;
            _loc2_ = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_FREQUENCY;
            _loc3_ = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_AMPLITUDE;
            _loc4_ = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_DURATION;
            param1.setCameraShaking(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            playSoundEffect(LevelItemSoundResource.SOUND_DAMAGED);
            this.removeSardine(param1);
            this.bouncePigs(param1);
         }
      }
      
      protected function removeSardine(param1:ILevelObjectUpdateManager) : void
      {
         var _loc3_:LevelObjectSardine = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as LevelObjectSardine;
            if(_loc3_ && _loc3_.id == this.mSardineId)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function bouncePigs(param1:ILevelObjectUpdateManager) : void
      {
         var _loc3_:LevelObjectPig = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as LevelObjectPig;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.destroyedOnCollision = true;
            }
            _loc2_--;
         }
      }
      
      protected function killPigs(param1:ILevelObjectUpdateManager) : void
      {
         var _loc3_:LevelObjectPig = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as LevelObjectPig;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.mPigsKilled = true;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override protected function fly() : void
      {
      }
      
      override protected function specialPower(param1:ILevelObjectUpdateManager, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function rotateNonStop(param1:Number) : void
      {
         var _loc2_:Number = radiansToDegrees(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = degreesToRadians(_loc2_);
         getBody().SetAngle(_loc2_);
      }
   }
}
