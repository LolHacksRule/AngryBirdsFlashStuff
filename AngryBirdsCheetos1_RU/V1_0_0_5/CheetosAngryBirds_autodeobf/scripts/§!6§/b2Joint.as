package §!6§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §<U§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §&2§:int = 2;
      
      b2internal static const §%!R§:int = 3;
      
      b2internal static const §;q§:int = 4;
      
      b2internal static const §4R§:int = 5;
      
      b2internal static const §#%§:int = 6;
      
      b2internal static const §=>§:int = 7;
      
      b2internal static const §+?§:int = 8;
      
      b2internal static const §&!7§:int = 9;
      
      b2internal static const §@D§:int = 0;
      
      b2internal static const §3!L§:int = 1;
      
      b2internal static const §#2§:int = 2;
      
      b2internal static const §4!O§:int = 3;
       
      
      b2internal var §&D§:int;
      
      b2internal var §<]§:b2Joint;
      
      b2internal var §60§:b2Joint;
      
      b2internal var §7!Y§:b2JointEdge;
      
      b2internal var §@!D§:b2JointEdge;
      
      b2internal var §#4§:b2Body;
      
      b2internal var §-!`§:b2Body;
      
      b2internal var §4Y§:Boolean;
      
      b2internal var §;!?§:Boolean;
      
      private var §40§;
      
      b2internal var §3!2§:b2Vec2;
      
      b2internal var §#!U§:b2Vec2;
      
      b2internal var §1!^§:Number;
      
      b2internal var §7[§:Number;
      
      b2internal var §2!T§:Number;
      
      b2internal var §8!X§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§7!Y§ = new b2JointEdge();
         this.§@!D§ = new b2JointEdge();
         this.§3!2§ = new b2Vec2();
         this.§#!U§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§-[§ != param1.§>N§);
         this.§&D§ = param1.type;
         this.§<]§ = null;
         this.§60§ = null;
         this.§#4§ = param1.§-[§;
         this.§-!`§ = param1.§>N§;
         this.§;!?§ = param1.collideConnected;
         this.§4Y§ = false;
         this.§40§ = param1.§=!<§;
      }
      
      b2internal static function §2Q§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::%!R:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4R:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::&2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::;q:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::#%:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::=>:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::+?:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::&!7:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;t§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §@i§() : int
      {
         return this.§&D§;
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
      
      public function §+;§() : b2Body
      {
         return this.§#4§;
      }
      
      public function §,A§() : b2Body
      {
         return this.§-!`§;
      }
      
      public function §25§() : b2Joint
      {
         return this.§60§;
      }
      
      public function GetUserData() : *
      {
         return this.§40§;
      }
      
      public function §0!R§(param1:*) : void
      {
         this.§40§ = param1;
      }
      
      public function §^!Q§() : Boolean
      {
         return this.§#4§.§^!Q§() && this.§-!`§.§^!Q§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §1&§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
