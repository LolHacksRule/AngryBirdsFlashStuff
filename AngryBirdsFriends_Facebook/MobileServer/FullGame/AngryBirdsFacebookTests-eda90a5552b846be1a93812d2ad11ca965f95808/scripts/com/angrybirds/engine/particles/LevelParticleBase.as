package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   
   public class LevelParticleBase extends LevelObjectBase
   {
       
      
      public function LevelParticleBase(sprite:Sprite, world:b2World, levelItem:LevelItem)
      {
         super(sprite,world,levelItem);
      }
      
      protected function randomMinMax(min:Number, max:Number) : Number
      {
         if(isNaN(min))
         {
            min = 0;
         }
         if(isNaN(max))
         {
            max = 0;
         }
         return min + (max - min) * Math.random();
      }
   }
}
