package §"!4§
{
   import § y§.b2Body;
   import § y§.b2TimeStep;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §5!A§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §;2§:int = 2;
      
      b2internal static const §4!N§:int = 3;
      
      b2internal static const §&!H§:int = 4;
      
      b2internal static const §?$§:int = 5;
      
      b2internal static const §use§:int = 6;
      
      b2internal static const §04§:int = 7;
      
      b2internal static const §1!&§:int = 8;
      
      b2internal static const §4!K§:int = 9;
      
      b2internal static const §'P§:int = 0;
      
      b2internal static const §;!-§:int = 1;
      
      b2internal static const §-g§:int = 2;
      
      b2internal static const §`u§:int = 3;
       
      
      b2internal var §2+§:int;
      
      b2internal var §7G§:b2Joint;
      
      b2internal var §&!+§:b2Joint;
      
      b2internal var §>!O§:b2JointEdge;
      
      b2internal var §%-§:b2JointEdge;
      
      b2internal var §`1§:b2Body;
      
      b2internal var §[!4§:b2Body;
      
      b2internal var §2=§:Boolean;
      
      b2internal var §2@§:Boolean;
      
      private var §<8§;
      
      b2internal var §]r§:b2Vec2;
      
      b2internal var §#N§:b2Vec2;
      
      b2internal var §0!'§:Number;
      
      b2internal var §]C§:Number;
      
      b2internal var §'t§:Number;
      
      b2internal var §=!S§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>!O§ = new b2JointEdge();
         this.§%-§ = new b2JointEdge();
         this.§]r§ = new b2Vec2();
         this.§#N§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§8L§ != param1.§4!H§);
         this.§2+§ = param1.type;
         this.§7G§ = null;
         this.§&!+§ = null;
         this.§`1§ = param1.§8L§;
         this.§[!4§ = param1.§4!H§;
         this.§2@§ = param1.collideConnected;
         this.§2=§ = false;
         this.§<8§ = param1.§^!V§;
      }
      
      b2internal static function §`Q§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::4!N:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::?$:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::;2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::&!H:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::use:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::04:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::1!&:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::4!K:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §5!,§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §`!Q§() : int
      {
         return this.§2+§;
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
      
      public function §"!Q§() : b2Body
      {
         return this.§`1§;
      }
      
      public function §1!$§() : b2Body
      {
         return this.§[!4§;
      }
      
      public function §3!I§() : b2Joint
      {
         return this.§&!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§<8§;
      }
      
      public function §'!W§(param1:*) : void
      {
         this.§<8§ = param1;
      }
      
      public function §"C§() : Boolean
      {
         return this.§`1§.§"C§() && this.§[!4§.§"C§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §&f§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
