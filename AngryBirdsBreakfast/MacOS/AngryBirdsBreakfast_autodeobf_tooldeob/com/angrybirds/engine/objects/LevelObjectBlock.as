package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   
   public class LevelObjectBlock extends LevelObject
   {
       
      
      private var mNextParticleIndex:int = 0;
      
      public function LevelObjectBlock(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         mParticleJSONId = param7;
         mParticleVariationCount = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !notDamageAwarding;
      }
      
      override protected function addDestructionParticles(param1:ILevelObjectUpdateManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,getVolume(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -mRenderer.width * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -mRenderer.height * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc8_ * 2;
            if(mParticleJSONId != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * mParticleVariationCount);
               param1.addSimpleParticle(mParticleJSONId + "_" + _loc9_,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
