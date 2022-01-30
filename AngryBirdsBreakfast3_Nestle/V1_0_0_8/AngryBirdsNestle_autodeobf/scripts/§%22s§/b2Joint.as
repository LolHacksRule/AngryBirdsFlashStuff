package §"s§
{
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0D§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §0"-§:int = 2;
      
      b2internal static const §<!P§:int = 3;
      
      b2internal static const §+!+§:int = 4;
      
      b2internal static const §@!3§:int = 5;
      
      b2internal static const §;"-§:int = 6;
      
      b2internal static const §8!;§:int = 7;
      
      b2internal static const §4!D§:int = 8;
      
      b2internal static const §;!"§:int = 9;
      
      b2internal static const §4!0§:int = 0;
      
      b2internal static const §,!?§:int = 1;
      
      b2internal static const §&!d§:int = 2;
      
      b2internal static const §-!F§:int = 3;
       
      
      b2internal var §5"6§:int;
      
      b2internal var §^!`§:b2Joint;
      
      b2internal var §4!c§:b2Joint;
      
      b2internal var §9",§:b2JointEdge;
      
      b2internal var §+!5§:b2JointEdge;
      
      b2internal var §;l§:b2Body;
      
      b2internal var §2z§:b2Body;
      
      b2internal var § !@§:Boolean;
      
      b2internal var §^I§:Boolean;
      
      private var §<!§;
      
      b2internal var §?a§:b2Vec2;
      
      b2internal var §%!f§:b2Vec2;
      
      b2internal var §1!-§:Number;
      
      b2internal var §#S§:Number;
      
      b2internal var §,!y§:Number;
      
      b2internal var §&A§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§9",§ = new b2JointEdge();
         this.§+!5§ = new b2JointEdge();
         this.§?a§ = new b2Vec2();
         this.§%!f§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§%!T§ != param1.§,d§);
         this.§5"6§ = param1.type;
         this.§^!`§ = null;
         this.§4!c§ = null;
         this.§;l§ = param1.§%!T§;
         this.§2z§ = param1.§,d§;
         this.§^I§ = param1.collideConnected;
         this.§ !@§ = false;
         this.§<!§ = param1.userData;
      }
      
      b2internal static function §<!n§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::<!P:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::@!3:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::0"-:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::+!+:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::;"-:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::8!;:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::4!D:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::;!":
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §6!j§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §&!u§() : int
      {
         return this.§5"6§;
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
      
      public function §,f§() : b2Body
      {
         return this.§;l§;
      }
      
      public function § e§() : b2Body
      {
         return this.§2z§;
      }
      
      public function §<b§() : b2Joint
      {
         return this.§4!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§<!§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<!§ = param1;
      }
      
      public function §6[§() : Boolean
      {
         return this.§;l§.§6[§() && this.§2z§.§6[§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §&!0§() : void
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
