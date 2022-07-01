package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7&§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#!e§:int = 2;
      
      b2internal static const §4!-§:int = 3;
      
      b2internal static const §1!P§:int = 4;
      
      b2internal static const §@!Q§:int = 5;
      
      b2internal static const §3p§:int = 6;
      
      b2internal static const §"!A§:int = 7;
      
      b2internal static const §?!m§:int = 8;
      
      b2internal static const §-!N§:int = 9;
      
      b2internal static const §-G§:int = 0;
      
      b2internal static const §-!V§:int = 1;
      
      b2internal static const §8!p§:int = 2;
      
      b2internal static const §!!?§:int = 3;
       
      
      b2internal var §5Q§:int;
      
      b2internal var §,!>§:b2Joint;
      
      b2internal var §6!c§:b2Joint;
      
      b2internal var §,!s§:b2JointEdge;
      
      b2internal var §9U§:b2JointEdge;
      
      b2internal var §9!F§:b2Body;
      
      b2internal var §[!n§:b2Body;
      
      b2internal var §2?§:Boolean;
      
      b2internal var § !,§:Boolean;
      
      private var §finally§;
      
      b2internal var §9T§:b2Vec2;
      
      b2internal var §6!8§:b2Vec2;
      
      b2internal var §^i§:Number;
      
      b2internal var §5b§:Number;
      
      b2internal var §;N§:Number;
      
      b2internal var §'Q§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§,!s§ = new b2JointEdge();
         this.§9U§ = new b2JointEdge();
         this.§9T§ = new b2Vec2();
         this.§6!8§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§9!w§ != param1.§>!W§);
         this.§5Q§ = param1.type;
         this.§,!>§ = null;
         this.§6!c§ = null;
         this.§9!F§ = param1.§9!w§;
         this.§[!n§ = param1.§>!W§;
         this.§ !,§ = param1.collideConnected;
         this.§2?§ = false;
         this.§finally§ = param1.userData;
      }
      
      b2internal static function §'!D§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::4!-:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::@!Q:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::#!e:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::1!P:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3p:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"!A:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::?!m:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::-!N:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §7!d§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §4!v§() : int
      {
         return this.§5Q§;
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
      
      public function §>!y§() : b2Body
      {
         return this.§9!F§;
      }
      
      public function §5!0§() : b2Body
      {
         return this.§[!n§;
      }
      
      public function §2!9§() : b2Joint
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§finally§ = param1;
      }
      
      public function §>!-§() : Boolean
      {
         return this.§9!F§.§>!-§() && this.§[!n§.§>!-§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §=Y§() : void
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
