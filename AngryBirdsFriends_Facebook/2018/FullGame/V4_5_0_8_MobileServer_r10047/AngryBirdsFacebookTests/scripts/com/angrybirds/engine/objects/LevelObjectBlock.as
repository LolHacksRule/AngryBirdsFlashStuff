package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBlock extends LevelObject
   {
       
      
      private var mNextParticleIndex:int = 0;
      
      public function LevelObjectBlock(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, aParticleJSONId:String = "", aParticleVariationCount:int = 1)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         mParticleJSONId = aParticleJSONId;
         mParticleVariationCount = aParticleVariationCount;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !notDamageAwarding;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var speed:Number = NaN;
         var count:int = 0;
         var angle:Number = NaN;
         var i:int = 0;
         var angleRad:Number = NaN;
         var randomX:Number = NaN;
         var randomY:Number = NaN;
         var particleName:String = null;
         if(!updateManager)
         {
            return;
         }
         var particleMaterialID:int = LevelParticle.getParticleMaterialFromEngineMaterial(itemName);
         if(particleMaterialID == LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC && mParticleJSONId == "")
         {
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",particleMaterialID);
         }
         else
         {
            speed = 4;
            count = Math.min(49,Math.max(1,getVolume(false))) + 1;
            angle = 90;
            for(i = 0; i < count; i++)
            {
               angle += Math.random() * (720 / count);
               angleRad = angle / (180 / Math.PI);
               randomX = -mRenderer.width * LevelMain.PIXEL_TO_B2_SCALE;
               randomX += Math.random() * -randomX * 2;
               randomY = -mRenderer.height * LevelMain.PIXEL_TO_B2_SCALE;
               randomY += Math.random() * -randomY * 2;
               if(mParticleJSONId != "")
               {
                  particleName = mParticleJSONId;
                  if(mParticleVariationCount > 0)
                  {
                     particleName += "_" + (1 + Math.floor(Math.random() * mParticleVariationCount));
                  }
                  updateManager.addSimpleParticle(particleName,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + randomX,getBody().GetPosition().y + randomY,1750 + Math.random() * 500,"",particleMaterialID,speed * Math.cos(angleRad),-speed * Math.sin(angleRad),10,speed * 50);
               }
               else
               {
                  updateManager.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + randomX,getBody().GetPosition().y + randomY,1750 + Math.random() * 500,"",particleMaterialID,speed * Math.cos(angleRad),-speed * Math.sin(angleRad),10,speed * 50);
               }
            }
         }
      }
   }
}
