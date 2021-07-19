package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelParticleTrail extends LevelParticleAnimated
   {
       
      
      public function LevelParticleTrail(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, x:Number, y:Number, angle:Number, areaWidth:Number, areaHeight:Number)
      {
         super(sprite,animation,world,levelItem,x,y,angle,areaWidth,areaHeight);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
      }
   }
}
