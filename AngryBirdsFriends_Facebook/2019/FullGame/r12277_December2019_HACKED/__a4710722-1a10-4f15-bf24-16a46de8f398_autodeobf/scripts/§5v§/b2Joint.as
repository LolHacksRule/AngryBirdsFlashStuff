package §5v§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §-"<§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §&#$§:int = 2;
      
      b2internal static const §9"w§:int = 3;
      
      b2internal static const §5"J§:int = 4;
      
      b2internal static const §=#+§:int = 5;
      
      b2internal static const §3"K§:int = 6;
      
      b2internal static const §?#v§:int = 7;
      
      b2internal static const §]c§:int = 8;
      
      b2internal static const §@"l§:int = 9;
      
      b2internal static const §#"a§:int = 0;
      
      b2internal static const §@$D§:int = 1;
      
      b2internal static const §&!=§:int = 2;
      
      b2internal static const §+$3§:int = 3;
       
      
      b2internal var § "u§:int;
      
      b2internal var §2Y§:b2Joint;
      
      b2internal var §7<§:b2Joint;
      
      b2internal var §6!j§:b2JointEdge;
      
      b2internal var §@!]§:b2JointEdge;
      
      b2internal var § ?§:b2Body;
      
      b2internal var § #q§:b2Body;
      
      b2internal var §-!5§:Boolean;
      
      b2internal var §##h§:Boolean;
      
      private var §%!Z§;
      
      b2internal var §3$+§:b2Vec2;
      
      b2internal var §<#R§:b2Vec2;
      
      b2internal var §9"K§:Number;
      
      b2internal var §,";§:Number;
      
      b2internal var §4#P§:Number;
      
      b2internal var §;#z§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§6!j§ = new b2JointEdge();
         this.§@!]§ = new b2JointEdge();
         this.§3$+§ = new b2Vec2();
         this.§<#R§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§,E§ != param1.§&$7§);
         this.§ "u§ = param1.type;
         this.§2Y§ = null;
         this.§7<§ = null;
         this.§ ?§ = param1.§,E§;
         this.§ #q§ = param1.§&$7§;
         this.§##h§ = param1.collideConnected;
         this.§-!5§ = false;
         this.§%!Z§ = param1.§9!g§;
      }
      
      b2internal static function §'#q§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::9"w:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::=#+:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::&#$:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::5"J:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3"K:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::?#v:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]c:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::@"l:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §0"y§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §!"k§() : int
      {
         return this.§ "u§;
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
      
      public function §""V§() : b2Body
      {
         return this.§ ?§;
      }
      
      public function §""?§() : b2Body
      {
         return this.§ #q§;
      }
      
      public function §6"t§() : b2Joint
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§%!Z§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function §1!a§() : Boolean
      {
         return this.§ ?§.§1!a§() && this.§ #q§.§1!a§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §3#E§() : void
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
