package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class LevelObjectMightyEagle extends LevelObjectBird
   {
       
      
      private var mShadingStarted:Boolean;
      
      private var mTouchedGround:Boolean;
      
      private var mPigsKilled:Boolean;
      
      private var mSardineId:int;
      
      public function LevelObjectMightyEagle(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      public static function radiansToDegrees(radian:Number) : Number
      {
         return (360 + radian * 180 / Math.PI % 360) % 360;
      }
      
      public static function degreesToRadians(degree:Number) : Number
      {
         return Number((360 + degree % 360) % 360 / (180 / Math.PI));
      }
      
      public function get hasTouchedGround() : Boolean
      {
         return this.mTouchedGround;
      }
      
      public function set sardineId(id:int) : void
      {
         this.mSardineId = id;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damaginObject:LevelObject, addScore:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(updateManager:ILevelObjectUpdateManager) : void
      {
         if(!this.mShadingStarted && lifeTimeMilliSeconds > Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.mShadingStarted = true;
            updateManager.setShadingEffect(true);
         }
      }
      
      protected function move(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var direction:int = 1;
         if(this.mTouchedGround)
         {
            this.rotateNonStop(Tuner.MIGHTY_EAGLE_ROTATION_SPEED * deltaTimeMilliSeconds);
            direction = -1;
            if(lifeTimeMilliSeconds > Tuner.MIGHTY_EAGLE_PIG_KILL_DELAY && !this.mPigsKilled)
            {
               this.killPigs(updateManager);
            }
         }
         else
         {
            this.hitGround(updateManager);
         }
         moveToDirection(deltaTimeMilliSeconds,new Point(1,direction * Tuner.MIGHTY_EAGLE_Y_CHANGE),Tuner.MIGHTY_EAGLE_FLYING_SPEED);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(!updateManager)
         {
            return;
         }
         this.updateShading(updateManager);
         this.addParticles(updateManager);
         this.move(deltaTimeMilliSeconds,updateManager);
      }
      
      protected function addParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var mightyEagleRadius:Number = 3;
         updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - mightyEagleRadius + Math.random() * (mightyEagleRadius * 2),getBody().GetPosition().y - mightyEagleRadius + Math.random() * (mightyEagleRadius * 2),3500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function hitGround(updateManager:ILevelObjectUpdateManager) : void
      {
         var frequency:Number = NaN;
         var amplitude:Number = NaN;
         var duration:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.mTouchedGround = true;
            frequency = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_FREQUENCY;
            amplitude = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_AMPLITUDE;
            duration = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_DURATION;
            updateManager.setCameraShaking(true,frequency,amplitude,duration);
            updateManager.destroyAllJoints();
            this.removeSardine(updateManager);
            this.bouncePigs(updateManager);
            AngryBirdsEngine.controller.checkForLevelEnd();
         }
      }
      
      protected function removeSardine(updateManager:ILevelObjectUpdateManager) : void
      {
         var sardine:LevelObjectSardine = null;
         for(var i:int = updateManager.objectCount - 1; i >= 0; i--)
         {
            sardine = updateManager.getObject(i) as LevelObjectSardine;
            if(sardine && sardine.id == this.mSardineId)
            {
               updateManager.removeObject(sardine);
               return;
            }
         }
      }
      
      protected function bouncePigs(updateManager:ILevelObjectUpdateManager) : void
      {
         var pig:LevelObjectPig = null;
         for(var i:int = updateManager.objectCount - 1; i >= 0; i--)
         {
            pig = updateManager.getObject(i) as LevelObjectPig;
            if(pig)
            {
               pig.getBody().SetAwake(true);
               pig.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               pig.destroyedOnCollision = true;
            }
         }
      }
      
      protected function killPigs(updateManager:ILevelObjectUpdateManager) : void
      {
         var pig:LevelObjectPig = null;
         for(var i:int = updateManager.objectCount - 1; i >= 0; i--)
         {
            pig = updateManager.getObject(i) as LevelObjectPig;
            if(pig)
            {
               pig.applyDamage(pig.healthMax * 2,updateManager,null,true);
            }
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
      
      override protected function specialPower(updateManager:ILevelObjectUpdateManager, targetX:Number = 0, targetY:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function rotateNonStop(deltaTimeMilliSeconds:Number) : void
      {
         var angle:Number = radiansToDegrees(getBody().GetAngle());
         angle += deltaTimeMilliSeconds * 360 / 1000;
         angle = degreesToRadians(angle);
         getBody().SetAngle(angle);
      }
      
      public function get pigsKilled() : Boolean
      {
         return this.mPigsKilled;
      }
   }
}
