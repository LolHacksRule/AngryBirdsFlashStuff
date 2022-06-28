package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!N§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §%Y§:int = 2;
      
      b2internal static const §-!u§:int = 3;
      
      b2internal static const §<!`§:int = 4;
      
      b2internal static const §;p§:int = 5;
      
      b2internal static const §3!B§:int = 6;
      
      b2internal static const §"$§:int = 7;
      
      b2internal static const §2"§:int = 8;
      
      b2internal static const §8b§:int = 9;
      
      b2internal static const §7! §:int = 0;
      
      b2internal static const §?"§:int = 1;
      
      b2internal static const § B§:int = 2;
      
      b2internal static const §!>§:int = 3;
       
      
      b2internal var §"!1§:int;
      
      b2internal var §4!7§:b2Joint;
      
      b2internal var §7n§:b2Joint;
      
      b2internal var §4C§:b2JointEdge;
      
      b2internal var §`!Z§:b2JointEdge;
      
      b2internal var §^^§:b2Body;
      
      b2internal var §7!<§:b2Body;
      
      b2internal var §^-§:Boolean;
      
      b2internal var §"!%§:Boolean;
      
      private var §>a§;
      
      b2internal var §^s§:b2Vec2;
      
      b2internal var §@!'§:b2Vec2;
      
      b2internal var §8!K§:Number;
      
      b2internal var §!!8§:Number;
      
      b2internal var §[!=§:Number;
      
      b2internal var §1&§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§4C§ = new b2JointEdge();
         this.§`!Z§ = new b2JointEdge();
         this.§^s§ = new b2Vec2();
         this.§@!'§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§-!O§ != param1.§3!u§);
         this.§"!1§ = param1.type;
         this.§4!7§ = null;
         this.§7n§ = null;
         this.§^^§ = param1.§-!O§;
         this.§7!<§ = param1.§3!u§;
         this.§"!%§ = param1.collideConnected;
         this.§^-§ = false;
         this.§>a§ = param1.§1o§;
      }
      
      b2internal static function §5=§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-!u:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::;p:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::%Y:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::<!`:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3!B:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"$:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::2":
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::8b:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"L§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0!@§() : int
      {
         return this.§"!1§;
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
      
      public function §3!!§() : b2Body
      {
         return this.§^^§;
      }
      
      public function §^F§() : b2Body
      {
         return this.§7!<§;
      }
      
      public function §2!g§() : b2Joint
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         this.§>a§ = param1;
      }
      
      public function § !5§() : Boolean
      {
         return this.§^^§.§ !5§() && this.§7!<§.§ !5§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §;d§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
