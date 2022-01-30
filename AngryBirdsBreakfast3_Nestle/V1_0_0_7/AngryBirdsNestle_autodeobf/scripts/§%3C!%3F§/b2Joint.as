package §<!?§
{
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §@P§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §[!Y§:int = 2;
      
      b2internal static const §5!r§:int = 3;
      
      b2internal static const §,!f§:int = 4;
      
      b2internal static const §;!U§:int = 5;
      
      b2internal static const § !p§:int = 6;
      
      b2internal static const § !-§:int = 7;
      
      b2internal static const §]`§:int = 8;
      
      b2internal static const §;5§:int = 9;
      
      b2internal static const §4E§:int = 0;
      
      b2internal static const §<!L§:int = 1;
      
      b2internal static const §9!`§:int = 2;
      
      b2internal static const §7!;§:int = 3;
       
      
      b2internal var §%"+§:int;
      
      b2internal var §9"4§:b2Joint;
      
      b2internal var §0!&§:b2Joint;
      
      b2internal var §4f§:b2JointEdge;
      
      b2internal var §2W§:b2JointEdge;
      
      b2internal var §"n§:b2Body;
      
      b2internal var §]!0§:b2Body;
      
      b2internal var §+!'§:Boolean;
      
      b2internal var §&!y§:Boolean;
      
      private var §2N§;
      
      b2internal var §`!T§:b2Vec2;
      
      b2internal var §]I§:b2Vec2;
      
      b2internal var §"!=§:Number;
      
      b2internal var §0!-§:Number;
      
      b2internal var §"!9§:Number;
      
      b2internal var §8!L§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§4f§ = new b2JointEdge();
         this.§2W§ = new b2JointEdge();
         this.§`!T§ = new b2Vec2();
         this.§]I§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§,!K§ != param1.§6n§);
         this.§%"+§ = param1.type;
         this.§9"4§ = null;
         this.§0!&§ = null;
         this.§"n§ = param1.§,!K§;
         this.§]!0§ = param1.§6n§;
         this.§&!y§ = param1.collideConnected;
         this.§+!'§ = false;
         this.§2N§ = param1.userData;
      }
      
      b2internal static function §6!#§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::5!r:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::;!U:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::[!Y:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::,!f:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal:: !p:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal:: !-:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]`:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::;5:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §,b§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6`§() : int
      {
         return this.§%"+§;
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
      
      public function §@R§() : b2Body
      {
         return this.§"n§;
      }
      
      public function §,[§() : b2Body
      {
         return this.§]!0§;
      }
      
      public function §+!E§() : b2Joint
      {
         return this.§0!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§2N§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§2N§ = param1;
      }
      
      public function §&!K§() : Boolean
      {
         return this.§"n§.§&!K§() && this.§]!0§.§&!K§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §'o§() : void
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
