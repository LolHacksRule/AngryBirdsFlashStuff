package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var localAxisA:b2Vec2;
      
      public var referenceAngle:Number;
      
      public var enableLimit:Boolean;
      
      public var lowerTranslation:Number;
      
      public var upperTranslation:Number;
      
      public var enableMotor:Boolean;
      
      public var maxMotorForce:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         this.localAxisA = new b2Vec2();
         super();
         type = b2Joint.e_prismaticJoint;
         this.localAxisA.Set(1,0);
         this.referenceAngle = 0;
         this.enableLimit = false;
         this.lowerTranslation = 0;
         this.upperTranslation = 0;
         this.enableMotor = false;
         this.maxMotorForce = 0;
         this.motorSpeed = 0;
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA = bodyA.GetLocalPoint(param3);
         this.localAnchorB = bodyB.GetLocalPoint(param3);
         this.localAxisA = bodyA.GetLocalVector(param4);
         this.referenceAngle = bodyB.GetAngle() - bodyA.GetAngle();
      }
   }
}
