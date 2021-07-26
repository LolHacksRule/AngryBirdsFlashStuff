package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var localAxisA:b2Vec2;
      
      public var enableLimit:Boolean;
      
      public var lowerTranslation:Number;
      
      public var upperTranslation:Number;
      
      public var enableMotor:Boolean;
      
      public var maxMotorForce:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         this.localAxisA = new b2Vec2();
         super();
         type = b2Joint.e_lineJoint;
         this.localAxisA.Set(1,0);
         this.enableLimit = false;
         this.lowerTranslation = 0;
         this.upperTranslation = 0;
         this.enableMotor = false;
         this.maxMotorForce = 0;
         this.motorSpeed = 0;
      }
      
      public function Initialize(bA:b2Body, bB:b2Body, anchor:b2Vec2, axis:b2Vec2) : void
      {
         bodyA = bA;
         bodyB = bB;
         this.localAnchorA = bodyA.GetLocalPoint(anchor);
         this.localAnchorB = bodyB.GetLocalPoint(anchor);
         this.localAxisA = bodyA.GetLocalVector(axis);
      }
   }
}
