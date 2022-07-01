package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §'y§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const § use§:int = 2;
      
      b2internal static const §-r§:int = 3;
      
      b2internal static const §?l§:int = 4;
      
      b2internal static const § !D§:int = 5;
      
      b2internal static const §=!"§:int = 6;
      
      b2internal static const §?k§:int = 7;
      
      b2internal static const §[=§:int = 8;
      
      b2internal static const §3L§:int = 9;
      
      b2internal static const §2!v§:int = 0;
      
      b2internal static const §,!'§:int = 1;
      
      b2internal static const §86§:int = 2;
      
      b2internal static const §+!5§:int = 3;
       
      
      b2internal var §5!Z§:int;
      
      b2internal var §?!D§:b2Joint;
      
      b2internal var § <§:b2Joint;
      
      b2internal var §<!F§:b2JointEdge;
      
      b2internal var §@#§:b2JointEdge;
      
      b2internal var §2+§:b2Body;
      
      b2internal var §4P§:b2Body;
      
      b2internal var §=T§:Boolean;
      
      b2internal var §4!2§:Boolean;
      
      private var §>!2§;
      
      b2internal var §^!Y§:b2Vec2;
      
      b2internal var §6!k§:b2Vec2;
      
      b2internal var §3T§:Number;
      
      b2internal var §`y§:Number;
      
      b2internal var §@!=§:Number;
      
      b2internal var §'o§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§<!F§ = new b2JointEdge();
         this.§@#§ = new b2JointEdge();
         this.§^!Y§ = new b2Vec2();
         this.§6!k§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§[!i§ != param1.§;!K§);
         this.§5!Z§ = param1.type;
         this.§?!D§ = null;
         this.§ <§ = null;
         this.§2+§ = param1.§[!i§;
         this.§4P§ = param1.§;!K§;
         this.§4!2§ = param1.collideConnected;
         this.§=T§ = false;
         this.§>!2§ = param1.§!L§;
      }
      
      b2internal static function §?J§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-r:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal:: !D:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal:: use:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::?l:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::=!":
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::?k:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::[=:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::3L:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;!#§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"!j§() : int
      {
         return this.§5!Z§;
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
      
      public function §<!W§() : b2Body
      {
         return this.§2+§;
      }
      
      public function §?!=§() : b2Body
      {
         return this.§4P§;
      }
      
      public function §4!j§() : b2Joint
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         this.§>!2§ = param1;
      }
      
      public function §,!t§() : Boolean
      {
         return this.§2+§.§,!t§() && this.§4P§.§,!t§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §7!2§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
