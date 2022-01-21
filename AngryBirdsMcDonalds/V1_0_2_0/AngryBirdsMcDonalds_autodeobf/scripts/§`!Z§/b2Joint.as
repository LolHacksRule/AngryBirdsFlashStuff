package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §3!g§.b2TimeStep;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §@;§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#J§:int = 2;
      
      b2internal static const §#F§:int = 3;
      
      b2internal static const §#4§:int = 4;
      
      b2internal static const §^T§:int = 5;
      
      b2internal static const §@!A§:int = 6;
      
      b2internal static const §@!E§:int = 7;
      
      b2internal static const §7!Y§:int = 8;
      
      b2internal static const §1!5§:int = 9;
      
      b2internal static const §@x§:int = 0;
      
      b2internal static const §'_§:int = 1;
      
      b2internal static const §]!6§:int = 2;
      
      b2internal static const §3!T§:int = 3;
       
      
      b2internal var §+k§:int;
      
      b2internal var §4W§:b2Joint;
      
      b2internal var § set§:b2Joint;
      
      b2internal var § t§:b2JointEdge;
      
      b2internal var §%!Z§:b2JointEdge;
      
      b2internal var §5!$§:b2Body;
      
      b2internal var §'!?§:b2Body;
      
      b2internal var §;t§:Boolean;
      
      b2internal var §1D§:Boolean;
      
      private var §;!O§;
      
      b2internal var §+!I§:b2Vec2;
      
      b2internal var §&!$§:b2Vec2;
      
      b2internal var §]!_§:Number;
      
      b2internal var §;L§:Number;
      
      b2internal var §;i§:Number;
      
      b2internal var §%!=§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§ t§ = new b2JointEdge();
         this.§%!Z§ = new b2JointEdge();
         this.§+!I§ = new b2Vec2();
         this.§&!$§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§+!#§ != param1.§1!K§);
         this.§+k§ = param1.type;
         this.§4W§ = null;
         this.§ set§ = null;
         this.§5!$§ = param1.§+!#§;
         this.§'!?§ = param1.§1!K§;
         this.§1D§ = param1.collideConnected;
         this.§;t§ = false;
         this.§;!O§ = param1.§,3§;
      }
      
      b2internal static function § 9§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::#F:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::^T:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::#J:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::#4:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::@!A:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::@!E:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::7!Y:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::1!5:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §+$§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §^!A§() : int
      {
         return this.§+k§;
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
      
      public function §,A§() : b2Body
      {
         return this.§5!$§;
      }
      
      public function §^u§() : b2Body
      {
         return this.§'!?§;
      }
      
      public function §%H§() : b2Joint
      {
         return this.§ set§;
      }
      
      public function GetUserData() : *
      {
         return this.§;!O§;
      }
      
      public function §-1§(param1:*) : void
      {
         this.§;!O§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§5!$§.IsActive() && this.§'!?§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8`§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
