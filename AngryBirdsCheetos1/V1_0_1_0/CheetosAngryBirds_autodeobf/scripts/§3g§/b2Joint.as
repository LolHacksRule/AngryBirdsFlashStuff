package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §6&§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §;!"§:int = 2;
      
      b2internal static const §-!§:int = 3;
      
      b2internal static const §+!2§:int = 4;
      
      b2internal static const §-!2§:int = 5;
      
      b2internal static const §9T§:int = 6;
      
      b2internal static const §%!"§:int = 7;
      
      b2internal static const §]t§:int = 8;
      
      b2internal static const §`T§:int = 9;
      
      b2internal static const §1&§:int = 0;
      
      b2internal static const §1!6§:int = 1;
      
      b2internal static const §'5§:int = 2;
      
      b2internal static const §@!L§:int = 3;
       
      
      b2internal var §3c§:int;
      
      b2internal var §3U§:b2Joint;
      
      b2internal var §0]§:b2Joint;
      
      b2internal var §7s§:b2JointEdge;
      
      b2internal var §7!R§:b2JointEdge;
      
      b2internal var §2!D§:b2Body;
      
      b2internal var §;B§:b2Body;
      
      b2internal var §!#§:Boolean;
      
      b2internal var §"l§:Boolean;
      
      private var § !O§;
      
      b2internal var §]?§:b2Vec2;
      
      b2internal var §7U§:b2Vec2;
      
      b2internal var §5!M§:Number;
      
      b2internal var §+&§:Number;
      
      b2internal var §5%§:Number;
      
      b2internal var §2]§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§7s§ = new b2JointEdge();
         this.§7!R§ = new b2JointEdge();
         this.§]?§ = new b2Vec2();
         this.§7U§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§<§ != param1.§,!M§);
         this.§3c§ = param1.type;
         this.§3U§ = null;
         this.§0]§ = null;
         this.§2!D§ = param1.§<§;
         this.§;B§ = param1.§,!M§;
         this.§"l§ = param1.collideConnected;
         this.§!#§ = false;
         this.§ !O§ = param1.§7! §;
      }
      
      b2internal static function §?!@§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-!:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::-!2:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::;!":
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::+!2:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::9T:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::%!":
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]t:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::`T:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §4!L§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0!$§() : int
      {
         return this.§3c§;
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
      
      public function §,y§() : b2Body
      {
         return this.§2!D§;
      }
      
      public function §%!3§() : b2Body
      {
         return this.§;B§;
      }
      
      public function §`!R§() : b2Joint
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         this.§ !O§ = param1;
      }
      
      public function §7"§() : Boolean
      {
         return this.§2!D§.§7"§() && this.§;B§.§7"§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §>h§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
