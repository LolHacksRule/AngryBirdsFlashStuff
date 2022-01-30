package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §]'§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §3n§:int = 2;
      
      b2internal static const §@J§:int = 3;
      
      b2internal static const §'G§:int = 4;
      
      b2internal static const § var§:int = 5;
      
      b2internal static const §3!I§:int = 6;
      
      b2internal static const §#a§:int = 7;
      
      b2internal static const §&!A§:int = 8;
      
      b2internal static const §1C§:int = 9;
      
      b2internal static const §21§:int = 0;
      
      b2internal static const §<i§:int = 1;
      
      b2internal static const §2!s§:int = 2;
      
      b2internal static const §"h§:int = 3;
       
      
      b2internal var §+V§:int;
      
      b2internal var §]!9§:b2Joint;
      
      b2internal var §'!@§:b2Joint;
      
      b2internal var §@w§:b2JointEdge;
      
      b2internal var §4!4§:b2JointEdge;
      
      b2internal var §"!U§:b2Body;
      
      b2internal var §!!3§:b2Body;
      
      b2internal var §0!0§:Boolean;
      
      b2internal var §8k§:Boolean;
      
      private var §4!e§;
      
      b2internal var §9;§:b2Vec2;
      
      b2internal var §[!0§:b2Vec2;
      
      b2internal var §`!i§:Number;
      
      b2internal var §6!§:Number;
      
      b2internal var §;a§:Number;
      
      b2internal var §3B§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§@w§ = new b2JointEdge();
         this.§4!4§ = new b2JointEdge();
         this.§9;§ = new b2Vec2();
         this.§[!0§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§>"$§ != param1.§%"1§);
         this.§+V§ = param1.type;
         this.§]!9§ = null;
         this.§'!@§ = null;
         this.§"!U§ = param1.§>"$§;
         this.§!!3§ = param1.§%"1§;
         this.§8k§ = param1.collideConnected;
         this.§0!0§ = false;
         this.§4!e§ = param1.§7!_§;
      }
      
      b2internal static function §[,§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::@J:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal:: var:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::3n:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::'G:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3!I:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::#a:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::&!A:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::1C:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §3"8§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6!Q§() : int
      {
         return this.§+V§;
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
      
      public function §>`§() : b2Body
      {
         return this.§"!U§;
      }
      
      public function §@B§() : b2Body
      {
         return this.§!!3§;
      }
      
      public function §`!u§() : b2Joint
      {
         return this.§'!@§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!e§;
      }
      
      public function §="-§(param1:*) : void
      {
         this.§4!e§ = param1;
      }
      
      public function §8!m§() : Boolean
      {
         return this.§"!U§.§8!m§() && this.§!!3§.§8!m§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8[§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
