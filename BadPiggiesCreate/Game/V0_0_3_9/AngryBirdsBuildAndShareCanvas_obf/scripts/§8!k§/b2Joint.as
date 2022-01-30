package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   import §=9§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § S§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8s§:int = 2;
      
      b2internal static const §1!X§:int = 3;
      
      b2internal static const §^;§:int = 4;
      
      b2internal static const §9;§:int = 5;
      
      b2internal static const §18§:int = 6;
      
      b2internal static const §1"6§:int = 7;
      
      b2internal static const §3!$§:int = 8;
      
      b2internal static const §9!t§:int = 9;
      
      b2internal static const §'W§:int = 0;
      
      b2internal static const §-!B§:int = 1;
      
      b2internal static const §<2§:int = 2;
      
      b2internal static const §-"'§:int = 3;
       
      
      b2internal var §!!y§:int;
      
      b2internal var §7%§:b2Joint;
      
      b2internal var §1""§:b2Joint;
      
      b2internal var §9!6§:b2JointEdge;
      
      b2internal var §3""§:b2JointEdge;
      
      b2internal var §#U§:b2Body;
      
      b2internal var §&W§:b2Body;
      
      b2internal var § j§:Boolean;
      
      b2internal var §8k§:Boolean;
      
      private var §"!l§;
      
      b2internal var §6!U§:b2Vec2;
      
      b2internal var §=d§:b2Vec2;
      
      b2internal var §4!l§:Number;
      
      b2internal var §7!k§:Number;
      
      b2internal var §=+§:Number;
      
      b2internal var §;!N§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§9!6§ = new b2JointEdge();
         this.§3""§ = new b2JointEdge();
         this.§6!U§ = new b2Vec2();
         this.§=d§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§<!S§ != param1.§=Y§);
         this.§!!y§ = param1.type;
         this.§7%§ = null;
         this.§1""§ = null;
         this.§#U§ = param1.§<!S§;
         this.§&W§ = param1.§=Y§;
         this.§8k§ = param1.collideConnected;
         this.§ j§ = false;
         this.§"!l§ = param1.§2"$§;
      }
      
      b2internal static function §83§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::1!X:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::9;:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8s:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::^;:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::18:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::1"6:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::3!$:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::9!t:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §&!`§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function get() : int
      {
         return this.§!!y§;
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
      
      public function §="2§() : b2Body
      {
         return this.§#U§;
      }
      
      public function §]C§() : b2Body
      {
         return this.§&W§;
      }
      
      public function §9!]§() : b2Joint
      {
         return this.§1""§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!l§;
      }
      
      public function §3l§(param1:*) : void
      {
         this.§"!l§ = param1;
      }
      
      public function §,G§() : Boolean
      {
         return this.§#U§.§,G§() && this.§&W§.§,G§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §;"#§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
