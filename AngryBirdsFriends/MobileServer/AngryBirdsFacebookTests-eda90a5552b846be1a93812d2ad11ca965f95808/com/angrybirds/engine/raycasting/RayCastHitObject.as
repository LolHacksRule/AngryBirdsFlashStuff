package com.angrybirds.engine.raycasting
{
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class RayCastHitObject
   {
       
      
      public var levelObject:LevelObjectBase;
      
      public var hitPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var rayFraction:Number;
      
      public function RayCastHitObject(levelObject:LevelObjectBase, hitPoint:b2Vec2, normal:b2Vec2, rayFraction:Number)
      {
         super();
         this.levelObject = levelObject;
         this.hitPoint = hitPoint;
         this.normal = normal;
         this.rayFraction = rayFraction;
      }
   }
}
