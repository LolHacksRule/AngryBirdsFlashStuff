package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §4P§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §2E§:int = 2;
      
      b2internal static const §;!0§:int = 3;
      
      b2internal static const §>B§:int = 4;
      
      b2internal static const §return§:int = 5;
      
      b2internal static const §>@§:int = 6;
      
      b2internal static const §%=§:int = 7;
      
      b2internal static const §!<§:int = 8;
      
      b2internal static const §6!5§:int = 9;
      
      b2internal static const §throw§:int = 0;
      
      b2internal static const §"!Y§:int = 1;
      
      b2internal static const §^!T§:int = 2;
      
      b2internal static const §-!=§:int = 3;
       
      
      b2internal var §2M§:int;
      
      b2internal var §4=§:b2Joint;
      
      b2internal var §!!U§:b2Joint;
      
      b2internal var §=2§:b2JointEdge;
      
      b2internal var §5-§:b2JointEdge;
      
      b2internal var §9!_§:b2Body;
      
      b2internal var §&! §:b2Body;
      
      b2internal var §0!`§:Boolean;
      
      b2internal var §?!+§:Boolean;
      
      private var §8d§;
      
      b2internal var §%!A§:b2Vec2;
      
      b2internal var §3!e§:b2Vec2;
      
      b2internal var §2X§:Number;
      
      b2internal var §-S§:Number;
      
      b2internal var §0H§:Number;
      
      b2internal var §?'§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§=2§ = new b2JointEdge();
         this.§5-§ = new b2JointEdge();
         this.§%!A§ = new b2Vec2();
         this.§3!e§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§;!9§ != param1.§;!,§);
         this.§2M§ = param1.type;
         this.§4=§ = null;
         this.§!!U§ = null;
         this.§9!_§ = param1.§;!9§;
         this.§&! § = param1.§;!,§;
         this.§?!+§ = param1.collideConnected;
         this.§0!`§ = false;
         this.§8d§ = param1.§`P§;
      }
      
      b2internal static function §8y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::;!0:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::return:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::2E:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::>B:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::>@:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::%=:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::!<:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::6!5:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §#2§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §1k§() : int
      {
         return this.§2M§;
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
      
      public function §&!=§() : b2Body
      {
         return this.§9!_§;
      }
      
      public function §4s§() : b2Body
      {
         return this.§&! §;
      }
      
      public function §4"§() : b2Joint
      {
         return this.§!!U§;
      }
      
      public function GetUserData() : *
      {
         return this.§8d§;
      }
      
      public function §9$§(param1:*) : void
      {
         this.§8d§ = param1;
      }
      
      public function §^+§() : Boolean
      {
         return this.§9!_§.§^+§() && this.§&! §.§^+§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §5!6§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
