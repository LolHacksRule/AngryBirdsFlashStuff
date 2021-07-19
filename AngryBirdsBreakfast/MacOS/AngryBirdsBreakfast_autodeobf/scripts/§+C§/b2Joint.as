package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!j§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8x§:int = 2;
      
      b2internal static const §'G§:int = 3;
      
      b2internal static const §[!0§:int = 4;
      
      b2internal static const §6!+§:int = 5;
      
      b2internal static const §4<§:int = 6;
      
      b2internal static const §8f§:int = 7;
      
      b2internal static const §]5§:int = 8;
      
      b2internal static const §]1§:int = 9;
      
      b2internal static const §-!Z§:int = 0;
      
      b2internal static const §@<§:int = 1;
      
      b2internal static const §%S§:int = 2;
      
      b2internal static const §8!E§:int = 3;
       
      
      b2internal var §6m§:int;
      
      b2internal var §0!^§:b2Joint;
      
      b2internal var §0!>§:b2Joint;
      
      b2internal var §]!%§:b2JointEdge;
      
      b2internal var §@!d§:b2JointEdge;
      
      b2internal var §[Z§:b2Body;
      
      b2internal var §8!F§:b2Body;
      
      b2internal var §><§:Boolean;
      
      b2internal var §>!!§:Boolean;
      
      private var § D§;
      
      b2internal var §[y§:b2Vec2;
      
      b2internal var §]i§:b2Vec2;
      
      b2internal var §>+§:Number;
      
      b2internal var §5""§:Number;
      
      b2internal var §`2§:Number;
      
      b2internal var §,T§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§]!%§ = new b2JointEdge();
         this.§@!d§ = new b2JointEdge();
         this.§[y§ = new b2Vec2();
         this.§]i§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§'!n§ != param1.§ 5§);
         this.§6m§ = param1.type;
         this.§0!^§ = null;
         this.§0!>§ = null;
         this.§[Z§ = param1.§'!n§;
         this.§8!F§ = param1.§ 5§;
         this.§>!!§ = param1.collideConnected;
         this.§><§ = false;
         this.§ D§ = param1.userData;
      }
      
      b2internal static function §2#§(param1:b2JointDef, param2:*) : b2Joint
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
      
      b2internal static function §5f§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §<!A§() : int
      {
         return this.§6m§;
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
      
      public function §[d§() : b2Body
      {
         return this.§[Z§;
      }
      
      public function §#E§() : b2Body
      {
         return this.§8!F§;
      }
      
      public function §>X§() : b2Joint
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§ D§ = param1;
      }
      
      public function §3!z§() : Boolean
      {
         return this.§[Z§.§3!z§() && this.§8!F§.§3!z§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §2"%§() : void
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
