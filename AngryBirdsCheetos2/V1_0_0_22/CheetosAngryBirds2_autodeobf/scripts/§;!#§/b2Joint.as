package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0Y§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §3!;§:int = 2;
      
      b2internal static const §-A§:int = 3;
      
      b2internal static const §[,§:int = 4;
      
      b2internal static const §`!U§:int = 5;
      
      b2internal static const §^!g§:int = 6;
      
      b2internal static const set:int = 7;
      
      b2internal static const §%=§:int = 8;
      
      b2internal static const §6!8§:int = 9;
      
      b2internal static const §9!d§:int = 0;
      
      b2internal static const §'M§:int = 1;
      
      b2internal static const §6!f§:int = 2;
      
      b2internal static const §0!F§:int = 3;
       
      
      b2internal var §#!&§:int;
      
      b2internal var §`D§:b2Joint;
      
      b2internal var §-![§:b2Joint;
      
      b2internal var §;!S§:b2JointEdge;
      
      b2internal var §"X§:b2JointEdge;
      
      b2internal var §6z§:b2Body;
      
      b2internal var §3D§:b2Body;
      
      b2internal var § P§:Boolean;
      
      b2internal var §+4§:Boolean;
      
      private var §&!i§;
      
      b2internal var §4r§:b2Vec2;
      
      b2internal var §9!h§:b2Vec2;
      
      b2internal var §"d§:Number;
      
      b2internal var §1!§:Number;
      
      b2internal var §^l§:Number;
      
      b2internal var §4!3§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§;!S§ = new b2JointEdge();
         this.§"X§ = new b2JointEdge();
         this.§4r§ = new b2Vec2();
         this.§9!h§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§-'§ != param1.§<!L§);
         this.§#!&§ = param1.type;
         this.§`D§ = null;
         this.§-![§ = null;
         this.§6z§ = param1.§-'§;
         this.§3D§ = param1.§<!L§;
         this.§+4§ = param1.collideConnected;
         this.§ P§ = false;
         this.§&!i§ = param1.§["§;
      }
      
      b2internal static function §#!M§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-A:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::`!U:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::3!;:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[,:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::^!g:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::set:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::%=:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::6!8:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §[!$§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §7!_§() : int
      {
         return this.§#!&§;
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
      
      public function §3g§() : b2Body
      {
         return this.§6z§;
      }
      
      public function §#F§() : b2Body
      {
         return this.§3D§;
      }
      
      public function §;!B§() : b2Joint
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         this.§&!i§ = param1;
      }
      
      public function §5f§() : Boolean
      {
         return this.§6z§.§5f§() && this.§3D§.§5f§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8!O§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
