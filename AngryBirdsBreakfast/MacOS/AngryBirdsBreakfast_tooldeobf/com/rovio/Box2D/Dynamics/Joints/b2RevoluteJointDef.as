package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var referenceAngle:Number;
      
      public var enableLimit:Boolean;
      
      public var lowerAngle:Number;
      
      public var upperAngle:Number;
      
      public var enableMotor:Boolean;
      
      public var motorSpeed:Number;
      
      public var maxMotorTorque:Number;
      
      public function b2RevoluteJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.localAnchorA.Set(0,0);
         this.localAnchorB.Set(0,0);
         this.referenceAngle = 0;
         this.lowerAngle = 0;
         this.upperAngle = 0;
         this.maxMotorTorque = 0;
         this.motorSpeed = 0;
         this.enableLimit = false;
         this.enableMotor = false;
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA = bodyA.GetLocalPoint(param3);
         this.localAnchorB = bodyB.GetLocalPoint(param3);
         this.referenceAngle = bodyB.GetAngle() - bodyA.GetAngle();
      }
   }
}
