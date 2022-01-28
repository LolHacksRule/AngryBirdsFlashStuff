package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §&!Z§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §'"4§:int = 2;
      
      b2internal static const §'t§:int = 3;
      
      b2internal static const §-i§:int = 4;
      
      b2internal static const §,s§:int = 5;
      
      b2internal static const §%!5§:int = 6;
      
      b2internal static const §'0§:int = 7;
      
      b2internal static const §'7§:int = 8;
      
      b2internal static const §;";§:int = 9;
      
      b2internal static const §^#§:int = 0;
      
      b2internal static const §@§:int = 1;
      
      b2internal static const §!"7§:int = 2;
      
      b2internal static const §8"7§:int = 3;
       
      
      b2internal var §0!,§:int;
      
      b2internal var §+!w§:b2Joint;
      
      b2internal var §7!'§:b2Joint;
      
      b2internal var §#Z§:b2JointEdge;
      
      b2internal var §package§:b2JointEdge;
      
      b2internal var §+d§:b2Body;
      
      b2internal var §"!l§:b2Body;
      
      b2internal var §=y§:Boolean;
      
      b2internal var §6I§:Boolean;
      
      private var §5![§;
      
      b2internal var §6!+§:b2Vec2;
      
      b2internal var §"O§:b2Vec2;
      
      b2internal var §+!7§:Number;
      
      b2internal var § !b§:Number;
      
      b2internal var §8"#§:Number;
      
      b2internal var § true§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§#Z§ = new b2JointEdge();
         this.§package§ = new b2JointEdge();
         this.§6!+§ = new b2Vec2();
         this.§"O§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§ !T§ != param1.§import§);
         this.§0!,§ = param1.type;
         this.§+!w§ = null;
         this.§7!'§ = null;
         this.§+d§ = param1.§ !T§;
         this.§"!l§ = param1.§import§;
         this.§6I§ = param1.collideConnected;
         this.§=y§ = false;
         this.§5![§ = param1.§ S§;
      }
      
      b2internal static function §`!P§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::'t:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::,s:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::'"4:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-i:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::%!5:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::'0:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::'7:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::;";:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §3!0§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §;!F§() : int
      {
         return this.§0!,§;
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
      
      public function §<D§() : b2Body
      {
         return this.§+d§;
      }
      
      public function §3@§() : b2Body
      {
         return this.§"!l§;
      }
      
      public function §7"3§() : b2Joint
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         this.§5![§ = param1;
      }
      
      public function §0!9§() : Boolean
      {
         return this.§+d§.§0!9§() && this.§"!l§.§0!9§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §?"<§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
