package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var referenceAngle:Number;
      
      public function b2WeldJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_weldJoint;
         this.referenceAngle = 0;
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA.SetV(bodyA.GetLocalPoint(param3));
         this.localAnchorB.SetV(bodyB.GetLocalPoint(param3));
         this.referenceAngle = bodyB.GetAngle() - bodyA.GetAngle();
      }
   }
}
