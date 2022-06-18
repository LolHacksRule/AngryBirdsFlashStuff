package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §4!&§.b2TimeStep;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!P§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §&!I§:int = 2;
      
      b2internal static const §;G§:int = 3;
      
      b2internal static const §6!0§:int = 4;
      
      b2internal static const §'d§:int = 5;
      
      b2internal static const §?z§:int = 6;
      
      b2internal static const §,G§:int = 7;
      
      b2internal static const §>@§:int = 8;
      
      b2internal static const §+p§:int = 9;
      
      b2internal static const §+!2§:int = 0;
      
      b2internal static const §=D§:int = 1;
      
      b2internal static const §;!-§:int = 2;
      
      b2internal static const §5a§:int = 3;
       
      
      b2internal var §"!V§:int;
      
      b2internal var §2!J§:b2Joint;
      
      b2internal var §1!A§:b2Joint;
      
      b2internal var § !N§:b2JointEdge;
      
      b2internal var §"!J§:b2JointEdge;
      
      b2internal var §@6§:b2Body;
      
      b2internal var §[L§:b2Body;
      
      b2internal var §23§:Boolean;
      
      b2internal var §3t§:Boolean;
      
      private var §-!F§;
      
      b2internal var §`!U§:b2Vec2;
      
      b2internal var §8U§:b2Vec2;
      
      b2internal var §>Y§:Number;
      
      b2internal var §7Y§:Number;
      
      b2internal var §>Q§:Number;
      
      b2internal var §#W§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§ !N§ = new b2JointEdge();
         this.§"!J§ = new b2JointEdge();
         this.§`!U§ = new b2Vec2();
         this.§8U§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§;!L§ != param1.§0!U§);
         this.§"!V§ = param1.type;
         this.§2!J§ = null;
         this.§1!A§ = null;
         this.§@6§ = param1.§;!L§;
         this.§[L§ = param1.§0!U§;
         this.§3t§ = param1.collideConnected;
         this.§23§ = false;
         this.§-!F§ = param1.§3_§;
      }
      
      b2internal static function §?j§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::;G:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::'d:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::&!I:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::6!0:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::?z:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::,G:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::>@:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::+p:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §4c§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §?!S§() : int
      {
         return this.§"!V§;
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
      
      public function §?+§() : b2Body
      {
         return this.§@6§;
      }
      
      public function §4K§() : b2Body
      {
         return this.§[L§;
      }
      
      public function §'&§() : b2Joint
      {
         return this.§1!A§;
      }
      
      public function GetUserData() : *
      {
         return this.§-!F§;
      }
      
      public function §`!F§(param1:*) : void
      {
         this.§-!F§ = param1;
      }
      
      public function §]3§() : Boolean
      {
         return this.§@6§.§]3§() && this.§[L§.§]3§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §9&§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
