package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var normalImpulses:Vector.<Number>;
      
      public var tangentImpulses:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.normalImpulses = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.tangentImpulses = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
