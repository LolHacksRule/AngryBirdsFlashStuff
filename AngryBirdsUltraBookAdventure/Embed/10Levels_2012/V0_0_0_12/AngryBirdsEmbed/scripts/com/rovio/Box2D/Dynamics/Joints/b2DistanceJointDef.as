package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var length:Number;
      
      public var frequencyHz:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_distanceJoint;
         this.length = 1;
         this.frequencyHz = 0;
         this.dampingRatio = 0;
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA.SetV(bodyA.GetLocalPoint(param3));
         this.localAnchorB.SetV(bodyB.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.frequencyHz = 0;
         this.dampingRatio = 0;
      }
   }
}
