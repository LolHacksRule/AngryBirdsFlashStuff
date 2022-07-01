package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Vec2;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §46§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §3d§:int = 2;
      
      b2internal static const §^!q§:int = 3;
      
      b2internal static const §=S§:int = 4;
      
      b2internal static const §-!o§:int = 5;
      
      b2internal static const §7!R§:int = 6;
      
      b2internal static const §#+§:int = 7;
      
      b2internal static const §,"§:int = 8;
      
      b2internal static const §>t§:int = 9;
      
      b2internal static const §-!n§:int = 0;
      
      b2internal static const §^1§:int = 1;
      
      b2internal static const §<!s§:int = 2;
      
      b2internal static const §;c§:int = 3;
       
      
      b2internal var §0"§:int;
      
      b2internal var §true§:b2Joint;
      
      b2internal var §7!+§:b2Joint;
      
      b2internal var §+!6§:b2JointEdge;
      
      b2internal var §=<§:b2JointEdge;
      
      b2internal var §-U§:b2Body;
      
      b2internal var § !>§:b2Body;
      
      b2internal var §]!&§:Boolean;
      
      b2internal var §;a§:Boolean;
      
      private var §8X§;
      
      b2internal var §]!-§:b2Vec2;
      
      b2internal var §,!C§:b2Vec2;
      
      b2internal var §,b§:Number;
      
      b2internal var §?I§:Number;
      
      b2internal var §9!4§:Number;
      
      b2internal var §0G§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§+!6§ = new b2JointEdge();
         this.§=<§ = new b2JointEdge();
         this.§]!-§ = new b2Vec2();
         this.§,!C§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§@!`§ != param1.§@$§);
         this.§0"§ = param1.type;
         this.§true§ = null;
         this.§7!+§ = null;
         this.§-U§ = param1.§@!`§;
         this.§ !>§ = param1.§@$§;
         this.§;a§ = param1.collideConnected;
         this.§]!&§ = false;
         this.§8X§ = param1.userData;
      }
      
      b2internal static function §@Q§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::^!q:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::-!o:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::3d:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::=S:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::7!R:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::#+:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::,":
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::>t:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §#!N§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §@!D§() : int
      {
         return this.§0"§;
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
      
      public function §;!R§() : b2Body
      {
         return this.§-U§;
      }
      
      public function §[!Q§() : b2Body
      {
         return this.§ !>§;
      }
      
      public function §,h§() : b2Joint
      {
         return this.§7!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§8X§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§8X§ = param1;
      }
      
      public function §<!#§() : Boolean
      {
         return this.§-U§.§<!#§() && this.§ !>§.§<!#§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §!!9§() : void
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
