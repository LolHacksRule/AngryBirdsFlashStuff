package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §>!?§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8z§:int = 2;
      
      b2internal static const §>#§:int = 3;
      
      b2internal static const §5O§:int = 4;
      
      b2internal static const §7q§:int = 5;
      
      b2internal static const §[-§:int = 6;
      
      b2internal static const §,@§:int = 7;
      
      b2internal static const §@P§:int = 8;
      
      b2internal static const §#!N§:int = 9;
      
      b2internal static const §%W§:int = 0;
      
      b2internal static const §%! §:int = 1;
      
      b2internal static const §+!E§:int = 2;
      
      b2internal static const §7^§:int = 3;
       
      
      b2internal var §8!J§:int;
      
      b2internal var §8`§:b2Joint;
      
      b2internal var §#!&§:b2Joint;
      
      b2internal var final:b2JointEdge;
      
      b2internal var §+d§:b2JointEdge;
      
      b2internal var §`p§:b2Body;
      
      b2internal var §%^§:b2Body;
      
      b2internal var §>!0§:Boolean;
      
      b2internal var §5&§:Boolean;
      
      private var §'8§;
      
      b2internal var §=a§:b2Vec2;
      
      b2internal var §3D§:b2Vec2;
      
      b2internal var §3#§:Number;
      
      b2internal var §=!X§:Number;
      
      b2internal var §&!P§:Number;
      
      b2internal var § a§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.final = new b2JointEdge();
         this.§+d§ = new b2JointEdge();
         this.§=a§ = new b2Vec2();
         this.§3D§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§8!5§ != param1.§0n§);
         this.§8!J§ = param1.type;
         this.§8`§ = null;
         this.§#!&§ = null;
         this.§`p§ = param1.§8!5§;
         this.§%^§ = param1.§0n§;
         this.§5&§ = param1.collideConnected;
         this.§>!0§ = false;
         this.§'8§ = param1.§4!E§;
      }
      
      b2internal static function §>y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::>#:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::7q:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8z:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::5O:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::[-:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::,@:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@P:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::#!N:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;@§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"!M§() : int
      {
         return this.§8!J§;
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
      
      public function §6!Z§() : b2Body
      {
         return this.§`p§;
      }
      
      public function §]§() : b2Body
      {
         return this.§%^§;
      }
      
      public function §[;§() : b2Joint
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         this.§'8§ = param1;
      }
      
      public function §+B§() : Boolean
      {
         return this.§`p§.§+B§() && this.§%^§.§+B§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §+!U§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
