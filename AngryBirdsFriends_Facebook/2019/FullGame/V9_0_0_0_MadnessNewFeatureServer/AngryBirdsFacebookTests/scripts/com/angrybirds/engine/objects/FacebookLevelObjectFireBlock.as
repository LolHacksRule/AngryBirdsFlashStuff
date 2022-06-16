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
         for(var i:int = 0; i < 15; i++)
         {
            angle = i / 15 * Math.PI;
            dirX = Math.cos(-angle);
            dirY = Math.sin(-angle);
            speed = 10 + (18 - 10) * Math.random();
            pos = getBody().GetPosition();
            fireBlockSpark = updateManager.addObject("FIRE_BLOCK_SPARK",pos.x + dirX * 2,pos.y + dirY * 2,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,true) as FacebookLevelObjectFireBlockSpark;
            fireBlockSpark.applyLinearVelocity(new b2Vec2(dirX * speed,dirY * speed));
            fireBlockSpark.setAngularVelocity(40 * (Math.random() * 2 - 1));
         }
      }
   }
}
