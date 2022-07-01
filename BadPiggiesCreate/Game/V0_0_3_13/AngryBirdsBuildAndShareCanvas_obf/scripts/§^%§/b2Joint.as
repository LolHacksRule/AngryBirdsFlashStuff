package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §#P§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#a§:int = 2;
      
      b2internal static const §'!#§:int = 3;
      
      b2internal static const §-f§:int = 4;
      
      b2internal static const §#'§:int = 5;
      
      b2internal static const §>!R§:int = 6;
      
      b2internal static const §<b§:int = 7;
      
      b2internal static const §;r§:int = 8;
      
      b2internal static const §4!>§:int = 9;
      
      b2internal static const §;k§:int = 0;
      
      b2internal static const §+!c§:int = 1;
      
      b2internal static const §<!3§:int = 2;
      
      b2internal static const §0F§:int = 3;
       
      
      b2internal var §&"9§:int;
      
      b2internal var §5!M§:b2Joint;
      
      b2internal var §,"!§:b2Joint;
      
      b2internal var §-"9§:b2JointEdge;
      
      b2internal var §24§:b2JointEdge;
      
      b2internal var §9!B§:b2Body;
      
      b2internal var §;!=§:b2Body;
      
      b2internal var §>u§:Boolean;
      
      b2internal var § "<§:Boolean;
      
      private var §]!_§;
      
      b2internal var §3!R§:b2Vec2;
      
      b2internal var §9!§:b2Vec2;
      
      b2internal var §'!v§:Number;
      
      b2internal var §!!=§:Number;
      
      b2internal var §0o§:Number;
      
      b2internal var §2!u§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§-"9§ = new b2JointEdge();
         this.§24§ = new b2JointEdge();
         this.§3!R§ = new b2Vec2();
         this.§9!§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§0",§ != param1.§^W§);
         this.§&"9§ = param1.type;
         this.§5!M§ = null;
         this.§,"!§ = null;
         this.§9!B§ = param1.§0",§;
         this.§;!=§ = param1.§^W§;
         this.§ "<§ = param1.collideConnected;
         this.§>u§ = false;
         this.§]!_§ = param1.§>T§;
      }
      
      b2internal static function §="1§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::'!#:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::#':
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::#a:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::-f:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::>!R:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::<b:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::;r:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::4!>:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §,"0§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §7!r§() : int
      {
         return this.§&"9§;
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
      
      public function §[!N§() : b2Body
      {
         return this.§9!B§;
      }
      
      public function §!"4§() : b2Body
      {
         return this.§;!=§;
      }
      
      public function §5!`§() : b2Joint
      {
         return this.§,"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!_§;
      }
      
      public function §?!5§(param1:*) : void
      {
         this.§]!_§ = param1;
      }
      
      public function §"?§() : Boolean
      {
         return this.§9!B§.§"?§() && this.§;!=§.§"?§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §`'§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
