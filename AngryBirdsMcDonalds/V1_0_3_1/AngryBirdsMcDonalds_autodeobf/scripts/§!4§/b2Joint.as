package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Vec2;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §1!Q§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §@!g§:int = 2;
      
      b2internal static const §`O§:int = 3;
      
      b2internal static const §[!a§:int = 4;
      
      b2internal static const §&b§:int = 5;
      
      b2internal static const §`!+§:int = 6;
      
      b2internal static const §;!d§:int = 7;
      
      b2internal static const §2!@§:int = 8;
      
      b2internal static const §+!R§:int = 9;
      
      b2internal static const §1!`§:int = 0;
      
      b2internal static const §[!<§:int = 1;
      
      b2internal static const §6!B§:int = 2;
      
      b2internal static const §<>§:int = 3;
       
      
      b2internal var §5!a§:int;
      
      b2internal var §=!W§:b2Joint;
      
      b2internal var §18§:b2Joint;
      
      b2internal var §,7§:b2JointEdge;
      
      b2internal var §8!`§:b2JointEdge;
      
      b2internal var §=s§:b2Body;
      
      b2internal var §"!§:b2Body;
      
      b2internal var §&!>§:Boolean;
      
      b2internal var §"!-§:Boolean;
      
      private var §"!<§;
      
      b2internal var §-!4§:b2Vec2;
      
      b2internal var §4K§:b2Vec2;
      
      b2internal var §4T§:Number;
      
      b2internal var §#!9§:Number;
      
      b2internal var §^S§:Number;
      
      b2internal var §0K§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§,7§ = new b2JointEdge();
         this.§8!`§ = new b2JointEdge();
         this.§-!4§ = new b2Vec2();
         this.§4K§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§@!F§ != param1.§9!T§);
         this.§5!a§ = param1.type;
         this.§=!W§ = null;
         this.§18§ = null;
         this.§=s§ = param1.§@!F§;
         this.§"!§ = param1.§9!T§;
         this.§"!-§ = param1.collideConnected;
         this.§&!>§ = false;
         this.§"!<§ = param1.§!k§;
      }
      
      b2internal static function §;!1§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::`O:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::&b:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::@!g:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[!a:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::`!+:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::;!d:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::2!@:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::+!R:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function § ;§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"!I§() : int
      {
         return this.§5!a§;
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
      
      public function §&!F§() : b2Body
      {
         return this.§=s§;
      }
      
      public function §7c§() : b2Body
      {
         return this.§"!§;
      }
      
      public function §@!^§() : b2Joint
      {
         return this.§18§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!<§;
      }
      
      public function §%!W§(param1:*) : void
      {
         this.§"!<§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§=s§.IsActive() && this.§"!§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §%!<§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
