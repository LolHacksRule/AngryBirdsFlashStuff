package §[9§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0"=§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8"@§:int = 2;
      
      b2internal static const §7!t§:int = 3;
      
      b2internal static const §-"3§:int = 4;
      
      b2internal static const §[!Q§:int = 5;
      
      b2internal static const §&"5§:int = 6;
      
      b2internal static const §7@§:int = 7;
      
      b2internal static const §3!C§:int = 8;
      
      b2internal static const §@!a§:int = 9;
      
      b2internal static const §?!k§:int = 0;
      
      b2internal static const §#!j§:int = 1;
      
      b2internal static const §2J§:int = 2;
      
      b2internal static const §^!K§:int = 3;
       
      
      b2internal var §`K§:int;
      
      b2internal var §9!§:b2Joint;
      
      b2internal var §&!6§:b2Joint;
      
      b2internal var §1"-§:b2JointEdge;
      
      b2internal var §5!V§:b2JointEdge;
      
      b2internal var §[F§:b2Body;
      
      b2internal var §,!Q§:b2Body;
      
      b2internal var §^!Y§:Boolean;
      
      b2internal var §"=§:Boolean;
      
      private var §9=§;
      
      b2internal var §%" §:b2Vec2;
      
      b2internal var §6"D§:b2Vec2;
      
      b2internal var §1^§:Number;
      
      b2internal var § !A§:Number;
      
      b2internal var §-^§:Number;
      
      b2internal var §&"7§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§1"-§ = new b2JointEdge();
         this.§5!V§ = new b2JointEdge();
         this.§%" § = new b2Vec2();
         this.§6"D§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§0f§ != param1.§>F§);
         this.§`K§ = param1.type;
         this.§9!§ = null;
         this.§&!6§ = null;
         this.§[F§ = param1.§0f§;
         this.§,!Q§ = param1.§>F§;
         this.§"=§ = param1.collideConnected;
         this.§^!Y§ = false;
         this.§9=§ = param1.§??§;
      }
      
      b2internal static function §7;§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::7!t:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::[!Q:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8"@:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-"3:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::&"5:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::7@:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::3!C:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::@!a:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §7"'§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §finally§() : int
      {
         return this.§`K§;
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
      
      public function §>!=§() : b2Body
      {
         return this.§[F§;
      }
      
      public function §>1§() : b2Body
      {
         return this.§,!Q§;
      }
      
      public function §1§() : b2Joint
      {
         return this.§&!6§;
      }
      
      public function GetUserData() : *
      {
         return this.§9=§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§9=§ = param1;
      }
      
      public function §`H§() : Boolean
      {
         return this.§[F§.§`H§() && this.§,!Q§.§`H§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §<!C§() : void
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
