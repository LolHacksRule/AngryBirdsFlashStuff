package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §9!j§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §>!V§:int = 2;
      
      b2internal static const §&!D§:int = 3;
      
      b2internal static const §-L§:int = 4;
      
      b2internal static const §5!?§:int = 5;
      
      b2internal static const §+!W§:int = 6;
      
      b2internal static const §&M§:int = 7;
      
      b2internal static const §@!>§:int = 8;
      
      b2internal static const §0!!§:int = 9;
      
      b2internal static const §#!?§:int = 0;
      
      b2internal static const §'`§:int = 1;
      
      b2internal static const §>6§:int = 2;
      
      b2internal static const §`C§:int = 3;
       
      
      b2internal var §"_§:int;
      
      b2internal var §[2§:b2Joint;
      
      b2internal var §@o§:b2Joint;
      
      b2internal var §>v§:b2JointEdge;
      
      b2internal var §?!>§:b2JointEdge;
      
      b2internal var §>0§:b2Body;
      
      b2internal var §[=§:b2Body;
      
      b2internal var §%!'§:Boolean;
      
      b2internal var § "§:Boolean;
      
      private var §,h§;
      
      b2internal var §#A§:b2Vec2;
      
      b2internal var §9!@§:b2Vec2;
      
      b2internal var §,'§:Number;
      
      b2internal var §[!2§:Number;
      
      b2internal var §=!Z§:Number;
      
      b2internal var §^!?§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>v§ = new b2JointEdge();
         this.§?!>§ = new b2JointEdge();
         this.§#A§ = new b2Vec2();
         this.§9!@§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§0w§ != param1.§^2§);
         this.§"_§ = param1.type;
         this.§[2§ = null;
         this.§@o§ = null;
         this.§>0§ = param1.§0w§;
         this.§[=§ = param1.§^2§;
         this.§ "§ = param1.collideConnected;
         this.§%!'§ = false;
         this.§,h§ = param1.§#+§;
      }
      
      b2internal static function §1#§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::&!D:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::5!?:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::>!V:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-L:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::+!W:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::&M:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@!>:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::0!!:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §,!W§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §'!_§() : int
      {
         return this.§"_§;
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
      
      public function §>!0§() : b2Body
      {
         return this.§>0§;
      }
      
      public function §&@§() : b2Body
      {
         return this.§[=§;
      }
      
      public function §>H§() : b2Joint
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         this.§,h§ = param1;
      }
      
      public function §89§() : Boolean
      {
         return this.§>0§.§89§() && this.§[=§.§89§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §32§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
