package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectPig extends LevelObjectAnimal
   {
       
      
      private var mKilledByHeadShot:Boolean = false;
      
      private var mBirdQuakePanicTime:Number = 0;
      
      public function LevelObjectPig(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         if(!updateManager)
         {
            return;
         }
         var particle:String = !!this.mKilledByHeadShot ? LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT : LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION;
         updateManager.addParticle(particle,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         var resultHealth:Number = super.applyDamage(damage,updateManager,damagingObject,addScore);
         if(resultHealth <= 0 && damagingObject is LevelObjectBird && damagingObject.health == damagingObject.healthMax)
         {
            this.mKilledByHeadShot = true;
         }
         return resultHealth;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !notDamageAwarding;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
