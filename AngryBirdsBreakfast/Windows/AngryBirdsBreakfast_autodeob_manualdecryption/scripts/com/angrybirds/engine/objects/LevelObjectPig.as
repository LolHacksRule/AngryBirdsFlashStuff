package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectPig extends LevelObjectAnimal
   {
       
      
      private var mKilledByHeadShot:Boolean = false;
      
      private var mBirdQuakePanicTime:Number = 0;
      
      public function LevelObjectPig(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:ILevelObjectUpdateManager) : void
      {
         if(param1)
         {
            return;
         }
         var _loc2_:String = !!this.mKilledByHeadShot ? LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT : LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION;
         param1.addParticle(_loc2_,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is LevelObjectBird && param3.health == param3.healthMax)
         {
            this.mKilledByHeadShot = true;
         }
         return _loc5_;
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
