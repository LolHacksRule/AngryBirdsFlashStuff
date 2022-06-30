package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §+Q§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#T§:int = 2;
      
      b2internal static const §2!T§:int = 3;
      
      b2internal static const §';§:int = 4;
      
      b2internal static const §'!I§:int = 5;
      
      b2internal static const §?U§:int = 6;
      
      b2internal static const §5!]§:int = 7;
      
      b2internal static const §2q§:int = 8;
      
      b2internal static const §%$§:int = 9;
      
      b2internal static const §2!h§:int = 0;
      
      b2internal static const §4;§:int = 1;
      
      b2internal static const §^!_§:int = 2;
      
      b2internal static const §55§:int = 3;
       
      
      b2internal var §5!'§:int;
      
      b2internal var §;h§:b2Joint;
      
      b2internal var §8A§:b2Joint;
      
      b2internal var §@P§:b2JointEdge;
      
      b2internal var §+z§:b2JointEdge;
      
      b2internal var §5!R§:b2Body;
      
      b2internal var §>D§:b2Body;
      
      b2internal var §[!A§:Boolean;
      
      b2internal var §&+§:Boolean;
      
      private var § 1§;
      
      b2internal var §=[§:b2Vec2;
      
      b2internal var §[V§:b2Vec2;
      
      b2internal var §9g§:Number;
      
      b2internal var §#t§:Number;
      
      b2internal var §%!S§:Number;
      
      b2internal var §2e§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§@P§ = new b2JointEdge();
         this.§+z§ = new b2JointEdge();
         this.§=[§ = new b2Vec2();
         this.§[V§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§1!V§ != param1.§;!?§);
         this.§5!'§ = param1.type;
         this.§;h§ = null;
         this.§8A§ = null;
         this.§5!R§ = param1.§1!V§;
         this.§>D§ = param1.§;!?§;
         this.§&+§ = param1.collideConnected;
         this.§[!A§ = false;
         this.§ 1§ = param1.§>V§;
      }
      
      b2internal static function §2!f§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::2!T:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::'!I:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::#T:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::';:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::?U:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::5!]:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::2q:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::%$:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §9!1§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §,!d§() : int
      {
         return this.§5!'§;
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
      
      public function § !I§() : b2Body
      {
         return this.§5!R§;
      }
      
      public function §"!$§() : b2Body
      {
         return this.§>D§;
      }
      
      public function §%;§() : b2Joint
      {
         return this.§8A§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 1§;
      }
      
      public function §?#§(param1:*) : void
      {
         this.§ 1§ = param1;
      }
      
      public function §-3§() : Boolean
      {
         return this.§5!R§.§-3§() && this.§>D§.§-3§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §4!K§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
