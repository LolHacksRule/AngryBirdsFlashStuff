package §>H§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   import §;'§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §8!r§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §9g§:int = 2;
      
      b2internal static const §14§:int = 3;
      
      b2internal static const §?Q§:int = 4;
      
      b2internal static const §%""§:int = 5;
      
      b2internal static const §=t§:int = 6;
      
      b2internal static const §7'§:int = 7;
      
      b2internal static const §3o§:int = 8;
      
      b2internal static const §!t§:int = 9;
      
      b2internal static const §@-§:int = 0;
      
      b2internal static const §7g§:int = 1;
      
      b2internal static const §7Z§:int = 2;
      
      b2internal static const §;j§:int = 3;
       
      
      b2internal var §=!;§:int;
      
      b2internal var §!!h§:b2Joint;
      
      b2internal var §1F§:b2Joint;
      
      b2internal var §@!&§:b2JointEdge;
      
      b2internal var §[O§:b2JointEdge;
      
      b2internal var §9!>§:b2Body;
      
      b2internal var § N§:b2Body;
      
      b2internal var § !e§:Boolean;
      
      b2internal var §@i§:Boolean;
      
      private var §"!+§;
      
      b2internal var §9!<§:b2Vec2;
      
      b2internal var §=[§:b2Vec2;
      
      b2internal var §6!z§:Number;
      
      b2internal var §^d§:Number;
      
      b2internal var §,G§:Number;
      
      b2internal var §;i§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§@!&§ = new b2JointEdge();
         this.§[O§ = new b2JointEdge();
         this.§9!<§ = new b2Vec2();
         this.§=[§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§>q§ != param1.§6!,§);
         this.§=!;§ = param1.type;
         this.§!!h§ = null;
         this.§1F§ = null;
         this.§9!>§ = param1.§>q§;
         this.§ N§ = param1.§6!,§;
         this.§@i§ = param1.collideConnected;
         this.§ !e§ = false;
         this.§"!+§ = param1.userData;
      }
      
      b2internal static function §-",§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::14:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::%"":
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::9g:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::?Q:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::=t:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::7':
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::3o:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::!t:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §'!h§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §]"$§() : int
      {
         return this.§=!;§;
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
      
      public function §0!0§() : b2Body
      {
         return this.§9!>§;
      }
      
      public function §"!z§() : b2Body
      {
         return this.§ N§;
      }
      
      public function §6P§() : b2Joint
      {
         return this.§1F§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§"!+§ = param1;
      }
      
      public function §^!K§() : Boolean
      {
         return this.§9!>§.§^!K§() && this.§ N§.§^!K§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §?y§() : void
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
