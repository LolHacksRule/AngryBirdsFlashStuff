package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § `§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §1r§:int = 2;
      
      b2internal static const §09§:int = 3;
      
      b2internal static const §+!L§:int = 4;
      
      b2internal static const §#F§:int = 5;
      
      b2internal static const §8!Y§:int = 6;
      
      b2internal static const § each§:int = 7;
      
      b2internal static const §]!n§:int = 8;
      
      b2internal static const §=!d§:int = 9;
      
      b2internal static const §+!t§:int = 0;
      
      b2internal static const §1!i§:int = 1;
      
      b2internal static const §#!F§:int = 2;
      
      b2internal static const §'!E§:int = 3;
       
      
      b2internal var §+!?§:int;
      
      b2internal var §-!I§:b2Joint;
      
      b2internal var §3=§:b2Joint;
      
      b2internal var §#7§:b2JointEdge;
      
      b2internal var §3G§:b2JointEdge;
      
      b2internal var §6!G§:b2Body;
      
      b2internal var §0!w§:b2Body;
      
      b2internal var §,![§:Boolean;
      
      b2internal var §0e§:Boolean;
      
      private var §?f§;
      
      b2internal var §'!§:b2Vec2;
      
      b2internal var §6!#§:b2Vec2;
      
      b2internal var §9k§:Number;
      
      b2internal var §,!J§:Number;
      
      b2internal var §8-§:Number;
      
      b2internal var §]+§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§#7§ = new b2JointEdge();
         this.§3G§ = new b2JointEdge();
         this.§'!§ = new b2Vec2();
         this.§6!#§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§3x§ != param1.§8P§);
         this.§+!?§ = param1.type;
         this.§-!I§ = null;
         this.§3=§ = null;
         this.§6!G§ = param1.§3x§;
         this.§0!w§ = param1.§8P§;
         this.§0e§ = param1.collideConnected;
         this.§,![§ = false;
         this.§?f§ = param1.§+!+§;
      }
      
      b2internal static function §`4§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::09:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::#F:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::1r:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::+!L:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::8!Y:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal:: each:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]!n:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::=!d:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §[M§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §2!r§() : int
      {
         return this.§+!?§;
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
      
      public function §@!F§() : b2Body
      {
         return this.§6!G§;
      }
      
      public function §<!J§() : b2Body
      {
         return this.§0!w§;
      }
      
      public function §+!N§() : b2Joint
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         this.§?f§ = param1;
      }
      
      public function §8!f§() : Boolean
      {
         return this.§6!G§.§8!f§() && this.§0!w§.§8!f§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §^y§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
