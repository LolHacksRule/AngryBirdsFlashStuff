package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §4!7§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §+=§:int = 2;
      
      b2internal static const § Q§:int = 3;
      
      b2internal static const §1+§:int = 4;
      
      b2internal static const §#!8§:int = 5;
      
      b2internal static const §&d§:int = 6;
      
      b2internal static const §>@§:int = 7;
      
      b2internal static const §?!$§:int = 8;
      
      b2internal static const §2Q§:int = 9;
      
      b2internal static const §29§:int = 0;
      
      b2internal static const §@"§:int = 1;
      
      b2internal static const §5!P§:int = 2;
      
      b2internal static const §"!^§:int = 3;
       
      
      b2internal var §@!_§:int;
      
      b2internal var §6+§:b2Joint;
      
      b2internal var §6!#§:b2Joint;
      
      b2internal var §,!_§:b2JointEdge;
      
      b2internal var §>T§:b2JointEdge;
      
      b2internal var §!!!§:b2Body;
      
      b2internal var §%!§:b2Body;
      
      b2internal var §"J§:Boolean;
      
      b2internal var §'!_§:Boolean;
      
      private var § 5§;
      
      b2internal var §<!<§:b2Vec2;
      
      b2internal var §,,§:b2Vec2;
      
      b2internal var §'t§:Number;
      
      b2internal var §%!R§:Number;
      
      b2internal var §2!3§:Number;
      
      b2internal var §2;§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§,!_§ = new b2JointEdge();
         this.§>T§ = new b2JointEdge();
         this.§<!<§ = new b2Vec2();
         this.§,,§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§1U§ != param1.§"=§);
         this.§@!_§ = param1.type;
         this.§6+§ = null;
         this.§6!#§ = null;
         this.§!!!§ = param1.§1U§;
         this.§%!§ = param1.§"=§;
         this.§'!_§ = param1.collideConnected;
         this.§"J§ = false;
         this.§ 5§ = param1.§0?§;
      }
      
      b2internal static function §=S§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal:: Q:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::#!8:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::+=:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::1+:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::&d:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::>@:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::?!$:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::2Q:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §true§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §9o§() : int
      {
         return this.§@!_§;
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
      
      public function §<"§() : b2Body
      {
         return this.§!!!§;
      }
      
      public function § !M§() : b2Body
      {
         return this.§%!§;
      }
      
      public function §3q§() : b2Joint
      {
         return this.§6!#§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 5§;
      }
      
      public function §+W§(param1:*) : void
      {
         this.§ 5§ = param1;
      }
      
      public function §3!§() : Boolean
      {
         return this.§!!!§.§3!§() && this.§%!§.§3!§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §,T§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
