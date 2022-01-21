package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §1B§.b2TimeStep;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §``§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §'!,§:int = 2;
      
      b2internal static const §0=§:int = 3;
      
      b2internal static const §6-§:int = 4;
      
      b2internal static const §0!f§:int = 5;
      
      b2internal static const §`!b§:int = 6;
      
      b2internal static const §=!;§:int = 7;
      
      b2internal static const §@!9§:int = 8;
      
      b2internal static const §!7§:int = 9;
      
      b2internal static const §>4§:int = 0;
      
      b2internal static const §9!M§:int = 1;
      
      b2internal static const § !,§:int = 2;
      
      b2internal static const §[!P§:int = 3;
       
      
      b2internal var §+C§:int;
      
      b2internal var §]!K§:b2Joint;
      
      b2internal var §>y§:b2Joint;
      
      b2internal var §#!O§:b2JointEdge;
      
      b2internal var §7!8§:b2JointEdge;
      
      b2internal var § each§:b2Body;
      
      b2internal var §8[§:b2Body;
      
      b2internal var §39§:Boolean;
      
      b2internal var §9!9§:Boolean;
      
      private var §89§;
      
      b2internal var §24§:b2Vec2;
      
      b2internal var §@5§:b2Vec2;
      
      b2internal var §9l§:Number;
      
      b2internal var §0A§:Number;
      
      b2internal var §?l§:Number;
      
      b2internal var §"!%§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§#!O§ = new b2JointEdge();
         this.§7!8§ = new b2JointEdge();
         this.§24§ = new b2Vec2();
         this.§@5§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§-6§ != param1.§?w§);
         this.§+C§ = param1.type;
         this.§]!K§ = null;
         this.§>y§ = null;
         this.§ each§ = param1.§-6§;
         this.§8[§ = param1.§?w§;
         this.§9!9§ = param1.collideConnected;
         this.§39§ = false;
         this.§89§ = param1.§0I§;
      }
      
      b2internal static function § %§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::0=:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::0!f:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::'!,:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::6-:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::`!b:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::=!;:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@!9:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::!7:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §%_§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §#+§() : int
      {
         return this.§+C§;
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
      
      public function §#!9§() : b2Body
      {
         return this.§ each§;
      }
      
      public function §2J§() : b2Body
      {
         return this.§8[§;
      }
      
      public function §-7§() : b2Joint
      {
         return this.§>y§;
      }
      
      public function GetUserData() : *
      {
         return this.§89§;
      }
      
      public function § !@§(param1:*) : void
      {
         this.§89§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§ each§.IsActive() && this.§8[§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §,S§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
