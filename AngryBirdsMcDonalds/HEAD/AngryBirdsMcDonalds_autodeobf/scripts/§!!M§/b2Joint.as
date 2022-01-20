package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §[!+§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §"x§:int = 2;
      
      b2internal static const §=E§:int = 3;
      
      b2internal static const §'!r§:int = 4;
      
      b2internal static const §&"§:int = 5;
      
      b2internal static const §7A§:int = 6;
      
      b2internal static const §?!J§:int = 7;
      
      b2internal static const §"!4§:int = 8;
      
      b2internal static const §=!!§:int = 9;
      
      b2internal static const §5! §:int = 0;
      
      b2internal static const §7'§:int = 1;
      
      b2internal static const §%+§:int = 2;
      
      b2internal static const §`!?§:int = 3;
       
      
      b2internal var §@k§:int;
      
      b2internal var §7%§:b2Joint;
      
      b2internal var §[h§:b2Joint;
      
      b2internal var §%U§:b2JointEdge;
      
      b2internal var §'G§:b2JointEdge;
      
      b2internal var §0!?§:b2Body;
      
      b2internal var §^!l§:b2Body;
      
      b2internal var §4!D§:Boolean;
      
      b2internal var §?!m§:Boolean;
      
      private var §0!R§;
      
      b2internal var §?]§:b2Vec2;
      
      b2internal var §5W§:b2Vec2;
      
      b2internal var §;!p§:Number;
      
      b2internal var §>G§:Number;
      
      b2internal var §8;§:Number;
      
      b2internal var §3o§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§%U§ = new b2JointEdge();
         this.§'G§ = new b2JointEdge();
         this.§?]§ = new b2Vec2();
         this.§5W§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§-i§ != param1.§0!F§);
         this.§@k§ = param1.type;
         this.§7%§ = null;
         this.§[h§ = null;
         this.§0!?§ = param1.§-i§;
         this.§^!l§ = param1.§0!F§;
         this.§?!m§ = param1.collideConnected;
         this.§4!D§ = false;
         this.§0!R§ = param1.§-&§;
      }
      
      b2internal static function §[u§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::=E:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::&":
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::"x:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::'!r:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::7A:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::?!J:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::"!4:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::=!!:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §60§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §1l§() : int
      {
         return this.§@k§;
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
      
      public function §`%§() : b2Body
      {
         return this.§0!?§;
      }
      
      public function §7!O§() : b2Body
      {
         return this.§^!l§;
      }
      
      public function §%!J§() : b2Joint
      {
         return this.§[h§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!R§;
      }
      
      public function §7K§(param1:*) : void
      {
         this.§0!R§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§0!?§.IsActive() && this.§^!l§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8!>§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
