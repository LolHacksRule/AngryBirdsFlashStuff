package com.angrybirds.engine.raycasting
{
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class RayCaster
   {
       
      
      private var mWorld:b2World;
      
      private var mHitObjects:Array;
      
      public function RayCaster(world:b2World)
      {
         this.mHitObjects = [];
         super();
         this.mWorld = world;
      }
      
      public function rayCast(startX:Number, startY:Number, endX:Number, endY:Number) : void
      {
         this.mHitObjects = [];
         this.mWorld.RayCast(this.rayCastCallback,new b2Vec2(startX,startY),new b2Vec2(endX,endY));
         this.mHitObjects.sortOn("rayFraction",Array.NUMERIC);
      }
      
      protected function rayCastCallback(fixture:b2Fixture, hitPoint:b2Vec2, normal:b2Vec2, fraction:Number) : void
      {
         var hitObject:RayCastHitObject = null;
         var levelObject:LevelObjectBase = fixture.GetBody().GetUserData() as LevelObjectBase;
         if(levelObject)
         {
            hitObject = new RayCastHitObject(levelObject,new b2Vec2(hitPoint.x,hitPoint.y),new b2Vec2(normal.x,normal.y),fraction);
            this.mHitObjects.push(hitObject);
         }
      }
      
      public function get hitObjectCount() : int
      {
         return this.mHitObjects.length;
      }
      
      public function getHitObject(index:int) : RayCastHitObject
      {
         return this.mHitObjects[index];
      }
   }
}
