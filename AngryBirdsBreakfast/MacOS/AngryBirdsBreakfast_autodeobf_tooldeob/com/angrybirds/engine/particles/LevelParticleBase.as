package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   
   public class LevelParticleBase extends LevelObjectBase
   {
       
      
      public function LevelParticleBase(param1:Sprite, param2:b2World, param3:LevelItem)
      {
         super(param1,param2,param3);
      }
      
      protected function randomMinMax(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
