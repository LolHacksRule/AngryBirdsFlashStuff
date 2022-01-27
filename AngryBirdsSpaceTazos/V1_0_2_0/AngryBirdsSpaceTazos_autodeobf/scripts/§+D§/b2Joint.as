package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Vec2;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §`<§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §]$§:int = 2;
      
      b2internal static const §2'§:int = 3;
      
      b2internal static const §!"%§:int = 4;
      
      b2internal static const §;m§:int = 5;
      
      b2internal static const §8j§:int = 6;
      
      b2internal static const §!"A§:int = 7;
      
      b2internal static const §'O§:int = 8;
      
      b2internal static const §=!u§:int = 9;
      
      b2internal static const §%!"§:int = 0;
      
      b2internal static const §1!s§:int = 1;
      
      b2internal static const §^!n§:int = 2;
      
      b2internal static const §!!_§:int = 3;
       
      
      b2internal var §5!q§:int;
      
      b2internal var §%4§:b2Joint;
      
      b2internal var §`!s§:b2Joint;
      
      b2internal var §>[§:b2JointEdge;
      
      b2internal var §>R§:b2JointEdge;
      
      b2internal var §]X§:b2Body;
      
      b2internal var §9!W§:b2Body;
      
      b2internal var § !Q§:Boolean;
      
      b2internal var §!!Z§:Boolean;
      
      private var §#@§;
      
      b2internal var §=k§:b2Vec2;
      
      b2internal var §[!I§:b2Vec2;
      
      b2internal var § v§:Number;
      
      b2internal var §<"<§:Number;
      
      b2internal var §6!M§:Number;
      
      b2internal var §^!M§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>[§ = new b2JointEdge();
         this.§>R§ = new b2JointEdge();
         this.§=k§ = new b2Vec2();
         this.§[!I§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§43§ != param1.§4!l§);
         this.§5!q§ = param1.type;
         this.§%4§ = null;
         this.§`!s§ = null;
         this.§]X§ = param1.§43§;
         this.§9!W§ = param1.§4!l§;
         this.§!!Z§ = param1.collideConnected;
         this.§ !Q§ = false;
         this.§#@§ = param1.§]"6§;
      }
      
      b2internal static function §;8§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::2':
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::;m:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::]$:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::!"%:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::8j:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::!"A:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::'O:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::=!u:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §5[§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §,!k§() : int
      {
         return this.§5!q§;
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
      
      public function §#'§() : b2Body
      {
         return this.§]X§;
      }
      
      public function §@+§() : b2Body
      {
         return this.§9!W§;
      }
      
      public function §6!4§() : b2Joint
      {
         return this.§`!s§;
      }
      
      public function GetUserData() : *
      {
         return this.§#@§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#@§ = param1;
      }
      
      public function §@!m§() : Boolean
      {
         return this.§]X§.§@!m§() && this.§9!W§.§@!m§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §0"§() : void
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
