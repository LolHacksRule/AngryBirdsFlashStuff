package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var maxForce:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_frictionJoint;
         this.maxForce = 0;
         this.maxTorque = 0;
      }
      
      public function Initialize(bA:b2Body, bB:b2Body, anchor:b2Vec2) : void
      {
         bodyA = bA;
         bodyB = bB;
         this.localAnchorA.SetV(bodyA.GetLocalPoint(anchor));
         this.localAnchorB.SetV(bodyB.GetLocalPoint(anchor));
      }
   }
}
