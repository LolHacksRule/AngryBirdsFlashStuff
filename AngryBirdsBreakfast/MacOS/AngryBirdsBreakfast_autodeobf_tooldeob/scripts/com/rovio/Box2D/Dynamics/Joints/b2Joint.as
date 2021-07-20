package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const e_unknownJoint:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const e_prismaticJoint:int = 2;
      
      b2internal static const e_distanceJoint:int = 3;
      
      b2internal static const e_pulleyJoint:int = 4;
      
      b2internal static const e_mouseJoint:int = 5;
      
      b2internal static const e_gearJoint:int = 6;
      
      b2internal static const e_lineJoint:int = 7;
      
      b2internal static const e_weldJoint:int = 8;
      
      b2internal static const e_frictionJoint:int = 9;
      
      b2internal static const e_inactiveLimit:int = 0;
      
      b2internal static const e_atLowerLimit:int = 1;
      
      b2internal static const e_atUpperLimit:int = 2;
      
      b2internal static const e_equalLimits:int = 3;
       
      
      b2internal var m_type:int;
      
      b2internal var m_prev:b2Joint;
      
      b2internal var m_next:b2Joint;
      
      b2internal var m_edgeA:b2JointEdge;
      
      b2internal var m_edgeB:b2JointEdge;
      
      b2internal var m_bodyA:b2Body;
      
      b2internal var m_bodyB:b2Body;
      
      b2internal var m_islandFlag:Boolean;
      
      b2internal var m_collideConnected:Boolean;
      
      private var m_userData;
      
      b2internal var m_localCenterA:b2Vec2;
      
      b2internal var m_localCenterB:b2Vec2;
      
      b2internal var m_invMassA:Number;
      
      b2internal var m_invMassB:Number;
      
      b2internal var m_invIA:Number;
      
      b2internal var m_invIB:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.m_edgeA = new b2JointEdge();
         this.m_edgeB = new b2JointEdge();
         this.m_localCenterA = new b2Vec2();
         this.m_localCenterB = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.bodyA != param1.bodyB);
         this.m_type = param1.type;
         this.m_prev = null;
         this.m_next = null;
         this.m_bodyA = param1.bodyA;
         this.m_bodyB = param1.bodyB;
         this.m_collideConnected = param1.collideConnected;
         this.m_islandFlag = false;
         this.m_userData = param1.userData;
      }
      
      b2internal static function Create(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::'G:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::6!+:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8x:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[!0:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::4<:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::8f:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]5:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::]1:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function Destroy(param1:b2Joint, param2:*) : void
      {
      }
      
      public function GetType() : int
      {
         return this.m_type;
      }
      
      public function GetAnchorA() : b2Vec2
      {
         return null;
      }
      
      public function GetAnchorB() : b2Vec2
      {
         return null;
      }
      
      public function GetReactionForce(param1:Number) : b2Vec2
      {
         return null;
      }
      
      public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetBodyA() : b2Body
      {
         return this.m_bodyA;
      }
      
      public function GetBodyB() : b2Body
      {
         return this.m_bodyB;
      }
      
      public function GetNext() : b2Joint
      {
         return this.m_next;
      }
      
      public function GetUserData() : *
      {
         return this.m_userData;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.m_userData = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.m_bodyA.IsActive() && this.m_bodyB.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function FinalizeVelocityConstraints() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
