package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §[w§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §`!$§:int = 2;
      
      b2internal static const §-!D§:int = 3;
      
      b2internal static const §4!p§:int = 4;
      
      b2internal static const §,![§:int = 5;
      
      b2internal static const §2q§:int = 6;
      
      b2internal static const §5!Z§:int = 7;
      
      b2internal static const §?d§:int = 8;
      
      b2internal static const §""0§:int = 9;
      
      b2internal static const §!_§:int = 0;
      
      b2internal static const §<E§:int = 1;
      
      b2internal static const §&!;§:int = 2;
      
      b2internal static const §," §:int = 3;
       
      
      b2internal var §^Z§:int;
      
      b2internal var §'"5§:b2Joint;
      
      b2internal var §]4§:b2Joint;
      
      b2internal var §+-§:b2JointEdge;
      
      b2internal var §`!M§:b2JointEdge;
      
      b2internal var §9t§:b2Body;
      
      b2internal var §6=§:b2Body;
      
      b2internal var §%U§:Boolean;
      
      b2internal var §!!k§:Boolean;
      
      private var §44§;
      
      b2internal var §!!&§:b2Vec2;
      
      b2internal var §>r§:b2Vec2;
      
      b2internal var §88§:Number;
      
      b2internal var §2!"§:Number;
      
      b2internal var § !K§:Number;
      
      b2internal var §^!z§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§+-§ = new b2JointEdge();
         this.§`!M§ = new b2JointEdge();
         this.§!!&§ = new b2Vec2();
         this.§>r§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§6z§ != param1.§@! §);
         this.§^Z§ = param1.type;
         this.§'"5§ = null;
         this.§]4§ = null;
         this.§9t§ = param1.§6z§;
         this.§6=§ = param1.§@! §;
         this.§!!k§ = param1.collideConnected;
         this.§%U§ = false;
         this.§44§ = param1.userData;
      }
      
      b2internal static function §0!8§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-!D:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::,![:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::`!$:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::4!p:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::2q:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::5!Z:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::?d:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::""0:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §&`§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §4!C§() : int
      {
         return this.§^Z§;
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
      
      public function §#"-§() : b2Body
      {
         return this.§9t§;
      }
      
      public function §!",§() : b2Body
      {
         return this.§6=§;
      }
      
      public function §+"3§() : b2Joint
      {
         return this.§]4§;
      }
      
      public function GetUserData() : *
      {
         return this.§44§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§44§ = param1;
      }
      
      public function §"_§() : Boolean
      {
         return this.§9t§.§"_§() && this.§6=§.§"_§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §?B§() : void
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
