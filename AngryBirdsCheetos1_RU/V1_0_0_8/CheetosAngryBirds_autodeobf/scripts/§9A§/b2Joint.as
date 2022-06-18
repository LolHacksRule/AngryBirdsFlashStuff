package §9A§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §5F§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §6!2§:int = 2;
      
      b2internal static const §9! §:int = 3;
      
      b2internal static const §-!A§:int = 4;
      
      b2internal static const §!L§:int = 5;
      
      b2internal static const §-;§:int = 6;
      
      b2internal static const §1C§:int = 7;
      
      b2internal static const §<@§:int = 8;
      
      b2internal static const §^+§:int = 9;
      
      b2internal static const §26§:int = 0;
      
      b2internal static const §1-§:int = 1;
      
      b2internal static const §<j§:int = 2;
      
      b2internal static const §=6§:int = 3;
       
      
      b2internal var §5! §:int;
      
      b2internal var §"5§:b2Joint;
      
      b2internal var §>!W§:b2Joint;
      
      b2internal var §"!^§:b2JointEdge;
      
      b2internal var §'1§:b2JointEdge;
      
      b2internal var §try§:b2Body;
      
      b2internal var §-f§:b2Body;
      
      b2internal var §[a§:Boolean;
      
      b2internal var §7!9§:Boolean;
      
      private var §[!U§;
      
      b2internal var §&!%§:b2Vec2;
      
      b2internal var §<!+§:b2Vec2;
      
      b2internal var §>!3§:Number;
      
      b2internal var §5_§:Number;
      
      b2internal var §1@§:Number;
      
      b2internal var §0x§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§"!^§ = new b2JointEdge();
         this.§'1§ = new b2JointEdge();
         this.§&!%§ = new b2Vec2();
         this.§<!+§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§#1§ != param1.§"!<§);
         this.§5! § = param1.type;
         this.§"5§ = null;
         this.§>!W§ = null;
         this.§try§ = param1.§#1§;
         this.§-f§ = param1.§"!<§;
         this.§7!9§ = param1.collideConnected;
         this.§[a§ = false;
         this.§[!U§ = param1.§1!%§;
      }
      
      b2internal static function § V§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::9! :
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::!L:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::6!2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-!A:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::-;:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::1C:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::<@:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::^+:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"z§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §1!A§() : int
      {
         return this.§5! §;
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
      
      public function §0!<§() : b2Body
      {
         return this.§try§;
      }
      
      public function §4I§() : b2Body
      {
         return this.§-f§;
      }
      
      public function §%W§() : b2Joint
      {
         return this.§>!W§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!U§;
      }
      
      public function §"Z§(param1:*) : void
      {
         this.§[!U§ = param1;
      }
      
      public function §[!N§() : Boolean
      {
         return this.§try§.§[!N§() && this.§-f§.§[!N§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §]![§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
