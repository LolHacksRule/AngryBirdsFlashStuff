package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §&"w§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §6j§:int = 2;
      
      b2internal static const §#"=§:int = 3;
      
      b2internal static const §`"U§:int = 4;
      
      b2internal static const §9O§:int = 5;
      
      b2internal static const §0#5§:int = 6;
      
      b2internal static const §8f§:int = 7;
      
      b2internal static const §,!%§:int = 8;
      
      b2internal static const §6!f§:int = 9;
      
      b2internal static const §5!§:int = 0;
      
      b2internal static const §0$2§:int = 1;
      
      b2internal static const §5#_§:int = 2;
      
      b2internal static const §-a§:int = 3;
       
      
      b2internal var §5"F§:int;
      
      b2internal var §@"4§:b2Joint;
      
      b2internal var §@W§:b2Joint;
      
      b2internal var §""V§:b2JointEdge;
      
      b2internal var §4"r§:b2JointEdge;
      
      b2internal var §]!"§:b2Body;
      
      b2internal var §"$'§:b2Body;
      
      b2internal var §4W§:Boolean;
      
      b2internal var §>#E§:Boolean;
      
      private var §'n§;
      
      b2internal var §=$&§:b2Vec2;
      
      b2internal var §0#l§:b2Vec2;
      
      b2internal var §%"y§:Number;
      
      b2internal var §7#>§:Number;
      
      b2internal var §&"5§:Number;
      
      b2internal var §7!_§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§""V§ = new b2JointEdge();
         this.§4"r§ = new b2JointEdge();
         this.§=$&§ = new b2Vec2();
         this.§0#l§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§;#X§ != param1.§`7§);
         this.§5"F§ = param1.type;
         this.§@"4§ = null;
         this.§@W§ = null;
         this.§]!"§ = param1.§;#X§;
         this.§"$'§ = param1.§`7§;
         this.§>#E§ = param1.collideConnected;
         this.§4W§ = false;
         this.§'n§ = param1.§]",§;
      }
      
      b2internal static function §,"h§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::#"=:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::9O:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::6j:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::`"U:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::0#5:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::8f:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::,!%:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::6!f:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;"@§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §8!p§() : int
      {
         return this.§5"F§;
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
      
      public function §"#2§() : b2Body
      {
         return this.§]!"§;
      }
      
      public function §1"z§() : b2Body
      {
         return this.§"$'§;
      }
      
      public function §%$>§() : b2Joint
      {
         return this.§@W§;
      }
      
      public function GetUserData() : *
      {
         return this.§'n§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§'n§ = param1;
      }
      
      public function §,%§() : Boolean
      {
         return this.§]!"§.§,%§() && this.§"$'§.§,%§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §!a§() : void
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
