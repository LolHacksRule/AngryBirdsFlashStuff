package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §7z§.b2TimeStep;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §[""§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §^1§:int = 2;
      
      b2internal static const §+c§:int = 3;
      
      b2internal static const §@!l§:int = 4;
      
      b2internal static const §4=§:int = 5;
      
      b2internal static const §7m§:int = 6;
      
      b2internal static const §>!-§:int = 7;
      
      b2internal static const §6v§:int = 8;
      
      b2internal static const §>!u§:int = 9;
      
      b2internal static const §7w§:int = 0;
      
      b2internal static const §'^§:int = 1;
      
      b2internal static const §0!%§:int = 2;
      
      b2internal static const §^_§:int = 3;
       
      
      b2internal var §7!S§:int;
      
      b2internal var §;!F§:b2Joint;
      
      b2internal var §7t§:b2Joint;
      
      b2internal var §'!6§:b2JointEdge;
      
      b2internal var §[§:b2JointEdge;
      
      b2internal var § [§:b2Body;
      
      b2internal var §-?§:b2Body;
      
      b2internal var §;!D§:Boolean;
      
      b2internal var §^"6§:Boolean;
      
      private var §&M§;
      
      b2internal var §1!B§:b2Vec2;
      
      b2internal var §[e§:b2Vec2;
      
      b2internal var §9!J§:Number;
      
      b2internal var §?!^§:Number;
      
      b2internal var §;!v§:Number;
      
      b2internal var §0h§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§'!6§ = new b2JointEdge();
         this.§[§ = new b2JointEdge();
         this.§1!B§ = new b2Vec2();
         this.§[e§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§@]§ != param1.§3@§);
         this.§7!S§ = param1.type;
         this.§;!F§ = null;
         this.§7t§ = null;
         this.§ [§ = param1.§@]§;
         this.§-?§ = param1.§3@§;
         this.§^"6§ = param1.collideConnected;
         this.§;!D§ = false;
         this.§&M§ = param1.§'!3§;
      }
      
      b2internal static function §7T§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::+c:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4=:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::^1:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::@!l:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::7m:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::>!-:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::6v:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::>!u:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §#"&§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §,!B§() : int
      {
         return this.§7!S§;
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
      
      public function §-c§() : b2Body
      {
         return this.§ [§;
      }
      
      public function §0Z§() : b2Body
      {
         return this.§-?§;
      }
      
      public function §9!P§() : b2Joint
      {
         return this.§7t§;
      }
      
      public function GetUserData() : *
      {
         return this.§&M§;
      }
      
      public function §3T§(param1:*) : void
      {
         this.§&M§ = param1;
      }
      
      public function §7%§() : Boolean
      {
         return this.§ [§.§7%§() && this.§-?§.§7%§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §"p§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
