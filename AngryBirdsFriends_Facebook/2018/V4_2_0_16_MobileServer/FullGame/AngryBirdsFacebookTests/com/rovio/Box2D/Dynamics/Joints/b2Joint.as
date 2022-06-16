package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
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
      
      public function b2Joint(def:b2JointDef)
      {
         this.m_edgeA = new b2JointEdge();
         this.m_edgeB = new b2JointEdge();
         this.m_localCenterA = new b2Vec2();
         this.m_localCenterB = new b2Vec2();
         super();
         b2Settings.b2Assert(def.bodyA != def.bodyB);
         this.m_type = def.type;
         this.m_prev = null;
         this.m_next = null;
         this.m_bodyA = def.bodyA;
         this.m_bodyB = def.bodyB;
         this.m_collideConnected = def.collideConnected;
         this.m_islandFlag = false;
         this.m_userData = def.userData;
      }
      
      b2internal static function Create(def:b2JointDef, allocator:*) : b2Joint
      {
         var joint:b2Joint = null;
         switch(def.type)
         {
            case b2internal::e_distanceJoint:
               joint = new b2DistanceJoint(def as b2DistanceJointDef);
               break;
            case b2internal::e_mouseJoint:
               joint = new b2MouseJoint(def as b2MouseJointDef);
               break;
            case b2internal::e_prismaticJoint:
               joint = new b2PrismaticJoint(def as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               joint = new b2RevoluteJoint(def as b2RevoluteJointDef);
               break;
            case b2internal::e_pulleyJoint:
               joint = new b2PulleyJoint(def as b2PulleyJointDef);
               break;
            case b2internal::e_gearJoint:
               joint = new b2GearJoint(def as b2GearJointDef);
               break;
            case b2internal::e_lineJoint:
               joint = new b2LineJoint(def as b2LineJointDef);
               break;
            case b2internal::e_weldJoint:
               joint = new b2WeldJoint(def as b2WeldJointDef);
               break;
            case b2internal::e_frictionJoint:
               joint = new b2FrictionJoint(def as b2FrictionJointDef);
         }
         return joint;
      }
      
      b2internal static function Destroy(joint:b2Joint, allocator:*) : void
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
      
      public function GetReactionForce(inv_dt:Number) : b2Vec2
      {
         return null;
      }
      
      public function GetReactionTorque(inv_dt:Number) : Number
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
      
      public function SetUserData(data:*) : void
      {
         this.m_userData = data;
      }
      
      public function IsActive() : Boolean
      {
         return this.m_bodyA.IsActive() && this.m_bodyB.IsActive();
      }
      
      b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
      }
      
      b2internal function FinalizeVelocityConstraints() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(flag:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         return false;
      }
   }
}
