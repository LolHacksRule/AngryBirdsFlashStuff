package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public interface IBroadPhase
   {
       
      
      function CreateProxy(param1:b2AABB, param2:*) : *;
      
      function DestroyProxy(param1:*) : void;
      
      function MoveProxy(param1:*, param2:b2AABB, param3:b2Vec2) : void;
      
      function TestOverlap(param1:*, param2:*) : Boolean;
      
      function GetUserData(param1:*) : *;
      
      function GetFatAABB(param1:*) : b2AABB;
      
      function GetProxyCount() : int;
      
      function UpdatePairs(param1:Function) : void;
      
      function Query(param1:Function, param2:b2AABB) : void;
      
      function RayCast(param1:Function, param2:b2RayCastInput) : void;
      
      function Validate() : void;
      
      function Rebalance(param1:int) : void;
   }
}
