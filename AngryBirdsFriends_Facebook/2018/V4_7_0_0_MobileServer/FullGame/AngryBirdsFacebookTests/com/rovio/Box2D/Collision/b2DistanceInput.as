package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Transform;
   
   public class b2DistanceInput
   {
       
      
      public var proxyA:b2DistanceProxy;
      
      public var proxyB:b2DistanceProxy;
      
      public var transformA:b2Transform;
      
      public var transformB:b2Transform;
      
      public var useRadii:Boolean;
      
      public function b2DistanceInput()
      {
         super();
      }
   }
}
