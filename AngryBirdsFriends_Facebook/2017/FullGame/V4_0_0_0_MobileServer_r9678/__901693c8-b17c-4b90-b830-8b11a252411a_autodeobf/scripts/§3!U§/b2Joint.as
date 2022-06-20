package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §1!+§.b2TimeStep;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §9"a§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8"#§:int = 2;
      
      b2internal static const §;2§:int = 3;
      
      b2internal static const §-$6§:int = 4;
      
      b2internal static const §]!o§:int = 5;
      
      b2internal static const §3#,§:int = 6;
      
      b2internal static const §&"^§:int = 7;
      
      b2internal static const §@"O§:int = 8;
      
      b2internal static const §-"F§:int = 9;
      
      b2internal static const § #f§:int = 0;
      
      b2internal static const §8$9§:int = 1;
      
      b2internal static const §;">§:int = 2;
      
      b2internal static const §5#W§:int = 3;
       
      
      b2internal var §9!a§:int;
      
      b2internal var §6T§:b2Joint;
      
      b2internal var §3!=§:b2Joint;
      
      b2internal var §`#'§:b2JointEdge;
      
      b2internal var §4#>§:b2JointEdge;
      
      b2internal var §!"2§:b2Body;
      
      b2internal var §?s§:b2Body;
      
      b2internal var §4!h§:Boolean;
      
      b2internal var §0!2§:Boolean;
      
      private var §]"q§;
      
      b2internal var §]>§:b2Vec2;
      
      b2internal var §&a§:b2Vec2;
      
      b2internal var §with§:Number;
      
      b2internal var §^,§:Number;
      
      b2internal var §@#P§:Number;
      
      b2internal var §##C§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§`#'§ = new b2JointEdge();
         this.§4#>§ = new b2JointEdge();
         this.§]>§ = new b2Vec2();
         this.§&a§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§0%§ != param1.§%"d§);
         this.§9!a§ = param1.type;
         this.§6T§ = null;
         this.§3!=§ = null;
         this.§!"2§ = param1.§0%§;
         this.§?s§ = param1.§%"d§;
         this.§0!2§ = param1.collideConnected;
         this.§4!h§ = false;
         this.§]"q§ = param1.§1$%§;
      }
      
      b2internal static function §@!7§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::;2:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::]!o:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8"#:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-$6:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3#,:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::&"^:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@"O:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::-"F:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §@#V§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §%"+§() : int
      {
         return this.§9!a§;
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
      
      public function §""Z§() : b2Body
      {
         return this.§!"2§;
      }
      
      public function §+"2§() : b2Body
      {
         return this.§?s§;
      }
      
      public function §,=§() : b2Joint
      {
         return this.§3!=§;
      }
      
      public function GetUserData() : *
      {
         return this.§]"q§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§]"q§ = param1;
      }
      
      public function §8#u§() : Boolean
      {
         return this.§!"2§.§8#u§() && this.§?s§.§8#u§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §!"b§() : void
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
