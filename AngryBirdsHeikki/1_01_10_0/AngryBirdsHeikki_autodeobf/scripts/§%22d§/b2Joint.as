package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7M§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §=x§:int = 2;
      
      b2internal static const §0=§:int = 3;
      
      b2internal static const § h§:int = 4;
      
      b2internal static const §^a§:int = 5;
      
      b2internal static const §05§:int = 6;
      
      b2internal static const §6d§:int = 7;
      
      b2internal static const §;'§:int = 8;
      
      b2internal static const §#F§:int = 9;
      
      b2internal static const §7t§:int = 0;
      
      b2internal static const §-z§:int = 1;
      
      b2internal static const §&!U§:int = 2;
      
      b2internal static const §]!A§:int = 3;
       
      
      b2internal var §2!]§:int;
      
      b2internal var §8s§:b2Joint;
      
      b2internal var §>W§:b2Joint;
      
      b2internal var §9w§:b2JointEdge;
      
      b2internal var §1]§:b2JointEdge;
      
      b2internal var §#A§:b2Body;
      
      b2internal var §2!`§:b2Body;
      
      b2internal var §#[§:Boolean;
      
      b2internal var §1S§:Boolean;
      
      private var §,!&§;
      
      b2internal var §+B§:b2Vec2;
      
      b2internal var §0t§:b2Vec2;
      
      b2internal var §5!H§:Number;
      
      b2internal var §^I§:Number;
      
      b2internal var §?Y§:Number;
      
      b2internal var §9H§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§9w§ = new b2JointEdge();
         this.§1]§ = new b2JointEdge();
         this.§+B§ = new b2Vec2();
         this.§0t§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§&]§ != param1.§+0§);
         this.§2!]§ = param1.type;
         this.§8s§ = null;
         this.§>W§ = null;
         this.§#A§ = param1.§&]§;
         this.§2!`§ = param1.§+0§;
         this.§1S§ = param1.collideConnected;
         this.§#[§ = false;
         this.§,!&§ = param1.§<!B§;
      }
      
      b2internal static function §;O§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::0=:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::^a:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::=x:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal:: h:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::05:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::6d:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::;':
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::#F:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;!^§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0i§() : int
      {
         return this.§2!]§;
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
      
      public function §]!X§() : b2Body
      {
         return this.§#A§;
      }
      
      public function §+4§() : b2Body
      {
         return this.§2!`§;
      }
      
      public function §5!J§() : b2Joint
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         this.§,!&§ = param1;
      }
      
      public function §5!B§() : Boolean
      {
         return this.§#A§.§5!B§() && this.§2!`§.§5!B§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §9x§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
