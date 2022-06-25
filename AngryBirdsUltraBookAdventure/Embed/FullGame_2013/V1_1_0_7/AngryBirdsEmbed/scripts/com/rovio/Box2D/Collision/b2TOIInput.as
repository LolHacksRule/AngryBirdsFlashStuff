package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Sweep;
   
   public class b2TOIInput
   {
       
      
      public var proxyA:b2DistanceProxy;
      
      public var proxyB:b2DistanceProxy;
      
      public var sweepA:b2Sweep;
      
      public var sweepB:b2Sweep;
      
      public var tolerance:Number;
      
      public function b2TOIInput()
      {
         this.proxyA = new b2DistanceProxy();
         this.proxyB = new b2DistanceProxy();
         this.sweepA = new b2Sweep();
         this.sweepB = new b2Sweep();
         super();
      }
   }
}
