package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §>!,§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §&d§:int = 2;
      
      b2internal static const §-o§:int = 3;
      
      b2internal static const §6!d§:int = 4;
      
      b2internal static const §8!'§:int = 5;
      
      b2internal static const §`!D§:int = 6;
      
      b2internal static const §>m§:int = 7;
      
      b2internal static const §%!G§:int = 8;
      
      b2internal static const § ! §:int = 9;
      
      b2internal static const §&-§:int = 0;
      
      b2internal static const §-A§:int = 1;
      
      b2internal static const §@w§:int = 2;
      
      b2internal static const §4!b§:int = 3;
       
      
      b2internal var §3l§:int;
      
      b2internal var §;!Z§:b2Joint;
      
      b2internal var §%&§:b2Joint;
      
      b2internal var §"<§:b2JointEdge;
      
      b2internal var §9e§:b2JointEdge;
      
      b2internal var §-!j§:b2Body;
      
      b2internal var §30§:b2Body;
      
      b2internal var §1!Y§:Boolean;
      
      b2internal var §?f§:Boolean;
      
      private var §0!m§;
      
      b2internal var §-5§:b2Vec2;
      
      b2internal var §8!e§:b2Vec2;
      
      b2internal var §?B§:Number;
      
      b2internal var §[x§:Number;
      
      b2internal var § !#§:Number;
      
      b2internal var §72§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§"<§ = new b2JointEdge();
         this.§9e§ = new b2JointEdge();
         this.§-5§ = new b2Vec2();
         this.§8!e§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§1v§ != param1.§<W§);
         this.§3l§ = param1.type;
         this.§;!Z§ = null;
         this.§%&§ = null;
         this.§-!j§ = param1.§1v§;
         this.§30§ = param1.§<W§;
         this.§?f§ = param1.collideConnected;
         this.§1!Y§ = false;
         this.§0!m§ = param1.§7M§;
      }
      
      b2internal static function §class§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-o:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::8!':
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::&d:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::6!d:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::`!D:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::>m:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::%!G:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal:: ! :
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §5^§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §&!B§() : int
      {
         return this.§3l§;
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
      
      public function §3!E§() : b2Body
      {
         return this.§-!j§;
      }
      
      public function §;!-§() : b2Body
      {
         return this.§30§;
      }
      
      public function §5w§() : b2Joint
      {
         return this.§%&§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!m§;
      }
      
      public function §6]§(param1:*) : void
      {
         this.§0!m§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§-!j§.IsActive() && this.§30§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §[!`§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
