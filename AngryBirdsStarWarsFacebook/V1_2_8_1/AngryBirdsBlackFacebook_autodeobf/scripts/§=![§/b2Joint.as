package §=![§
{
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   import §>"_§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?#+§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §[!C§:int = 2;
      
      b2internal static const §`!?§:int = 3;
      
      b2internal static const §[!j§:int = 4;
      
      b2internal static const §-!M§:int = 5;
      
      b2internal static const §8"j§:int = 6;
      
      b2internal static const §%"P§:int = 7;
      
      b2internal static const §^"7§:int = 8;
      
      b2internal static const §?!q§:int = 9;
      
      b2internal static const §+!L§:int = 0;
      
      b2internal static const §["G§:int = 1;
      
      b2internal static const §""Q§:int = 2;
      
      b2internal static const §8"§:int = 3;
       
      
      b2internal var §<"a§:int;
      
      b2internal var §%" §:b2Joint;
      
      b2internal var §?"Z§:b2Joint;
      
      b2internal var §"!q§:b2JointEdge;
      
      b2internal var §3"o§:b2JointEdge;
      
      b2internal var § ,§:b2Body;
      
      b2internal var §?!p§:b2Body;
      
      b2internal var §,#0§:Boolean;
      
      b2internal var §0!8§:Boolean;
      
      private var §[!^§;
      
      b2internal var §;"5§:b2Vec2;
      
      b2internal var §7w§:b2Vec2;
      
      b2internal var §=!y§:Number;
      
      b2internal var §5"<§:Number;
      
      b2internal var §2!X§:Number;
      
      b2internal var §[!]§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§"!q§ = new b2JointEdge();
         this.§3"o§ = new b2JointEdge();
         this.§;"5§ = new b2Vec2();
         this.§7w§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§5"I§ != param1.§[!K§);
         this.§<"a§ = param1.type;
         this.§%" § = null;
         this.§?"Z§ = null;
         this.§ ,§ = param1.§5"I§;
         this.§?!p§ = param1.§[!K§;
         this.§0!8§ = param1.collideConnected;
         this.§,#0§ = false;
         this.§[!^§ = param1.§="M§;
      }
      
      b2internal static function § "a§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::`!?:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::-!M:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::[!C:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[!j:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::8"j:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::%"P:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::^"7:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::?!q:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function § !g§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §+"M§() : int
      {
         return this.§<"a§;
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
      
      public function §!Q§() : b2Body
      {
         return this.§ ,§;
      }
      
      public function §>Y§() : b2Body
      {
         return this.§?!p§;
      }
      
      public function §^a§() : b2Joint
      {
         return this.§?"Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!^§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§[!^§ = param1;
      }
      
      public function § !f§() : Boolean
      {
         return this.§ ,§.§ !f§() && this.§?!p§.§ !f§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §<q§() : void
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
