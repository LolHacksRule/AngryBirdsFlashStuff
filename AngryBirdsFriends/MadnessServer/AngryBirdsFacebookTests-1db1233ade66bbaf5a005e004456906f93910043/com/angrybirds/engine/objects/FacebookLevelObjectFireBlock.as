package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectFireBlock extends LevelObjectBlock
   {
       
      
      public function FacebookLevelObjectFireBlock(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, aParticleJSONId:String = "", aParticleVariationCount:int = 1)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,aParticleJSONId,aParticleVariationCount);
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var angle:Number = NaN;
         var dirX:Number = NaN;
         var dirY:Number = NaN;
         var speed:Number = NaN;
         var pos:b2Vec2 = null;
         var fireBlockSpark:FacebookLevelObjectFireBlockSpark = null;
         var spawnCount:int = 15;
         var spawnMinSpeed:int = 10;
         var spawnMaxSpeed:int = 18;
         var spawnDistance:Number = 2;
         var spawnMaxAngularSpeed:Number = 40;
         for(var i:int = 0; i < spawnCount; i++)
         {
            angle = i / spawnCount * Math.PI;
            dirX = Math.cos(-angle);
            dirY = Math.sin(-angle);
            speed = spawnMinSpeed + (spawnMaxSpeed - spawnMinSpeed) * Math.random();
            pos = getBody().GetPosition();
            fireBlockSpark = updateManager.addObject("FIRE_BLOCK_SPARK",pos.x + dirX * spawnDistance,pos.y + dirY * spawnDistance,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,true) as FacebookLevelObjectFireBlockSpark;
            fireBlockSpark.applyLinearVelocity(new b2Vec2(dirX * speed,dirY * speed));
            fireBlockSpark.setAngularVelocity(spawnMaxAngularSpeed * (Math.random() * 2 - 1));
         }
      }
   }
}
