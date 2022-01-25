package §#!K§
{
   import §-0§.b2Body;
   import §-0§.b2TimeStep;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §-J§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §6U§:int = 2;
      
      b2internal static const §;V§:int = 3;
      
      b2internal static const §@_§:int = 4;
      
      b2internal static const §'g§:int = 5;
      
      b2internal static const §`!R§:int = 6;
      
      b2internal static const §"!c§:int = 7;
      
      b2internal static const §[L§:int = 8;
      
      b2internal static const §4`§:int = 9;
      
      b2internal static const §8b§:int = 0;
      
      b2internal static const §`!2§:int = 1;
      
      b2internal static const §?!&§:int = 2;
      
      b2internal static const §"R§:int = 3;
       
      
      b2internal var §,!f§:int;
      
      b2internal var §9!R§:b2Joint;
      
      b2internal var §2G§:b2Joint;
      
      b2internal var §"+§:b2JointEdge;
      
      b2internal var §>&§:b2JointEdge;
      
      b2internal var §+!`§:b2Body;
      
      b2internal var §,!7§:b2Body;
      
      b2internal var §#8§:Boolean;
      
      b2internal var §1a§:Boolean;
      
      private var §6a§;
      
      b2internal var §`!0§:b2Vec2;
      
      b2internal var §#!o§:b2Vec2;
      
      b2internal var §@k§:Number;
      
      b2internal var §>V§:Number;
      
      b2internal var §4!Y§:Number;
      
      b2internal var §+B§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§"+§ = new b2JointEdge();
         this.§>&§ = new b2JointEdge();
         this.§`!0§ = new b2Vec2();
         this.§#!o§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§>!k§ != param1.§<u§);
         this.§,!f§ = param1.type;
         this.§9!R§ = null;
         this.§2G§ = null;
         this.§+!`§ = param1.§>!k§;
         this.§,!7§ = param1.§<u§;
         this.§1a§ = param1.collideConnected;
         this.§#8§ = false;
         this.§6a§ = param1.§6=§;
      }
      
      b2internal static function §6j§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::;V:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::'g:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::6U:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::@_:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::`!R:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"!c:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::[L:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::4`:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function § B§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §use§() : int
      {
         return this.§,!f§;
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
      
      public function §@!'§() : b2Body
      {
         return this.§+!`§;
      }
      
      public function §!!U§() : b2Body
      {
         return this.§,!7§;
      }
      
      public function §2z§() : b2Joint
      {
         return this.§2G§;
      }
      
      public function GetUserData() : *
      {
         return this.§6a§;
      }
      
      public function §`!8§(param1:*) : void
      {
         this.§6a§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§+!`§.IsActive() && this.§,!7§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §87§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
