package §^!2§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   import §`]§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §`§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §-"2§:int = 2;
      
      b2internal static const §'!0§:int = 3;
      
      b2internal static const §0!$§:int = 4;
      
      b2internal static const §!!?§:int = 5;
      
      b2internal static const §%!W§:int = 6;
      
      b2internal static const §4"3§:int = 7;
      
      b2internal static const §6",§:int = 8;
      
      b2internal static const §8!o§:int = 9;
      
      b2internal static const §"S§:int = 0;
      
      b2internal static const §4d§:int = 1;
      
      b2internal static const §>!^§:int = 2;
      
      b2internal static const §"!9§:int = 3;
       
      
      b2internal var §""#§:int;
      
      b2internal var §0"+§:b2Joint;
      
      b2internal var §7<§:b2Joint;
      
      b2internal var §2!O§:b2JointEdge;
      
      b2internal var §-s§:b2JointEdge;
      
      b2internal var §5'§:b2Body;
      
      b2internal var §?!&§:b2Body;
      
      b2internal var §`f§:Boolean;
      
      b2internal var §!R§:Boolean;
      
      private var §]3§;
      
      b2internal var §&T§:b2Vec2;
      
      b2internal var §=N§:b2Vec2;
      
      b2internal var §1!7§:Number;
      
      b2internal var §2!#§:Number;
      
      b2internal var §"n§:Number;
      
      b2internal var §;M§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§2!O§ = new b2JointEdge();
         this.§-s§ = new b2JointEdge();
         this.§&T§ = new b2Vec2();
         this.§=N§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§`!z§ != param1.§#!3§);
         this.§""#§ = param1.type;
         this.§0"+§ = null;
         this.§7<§ = null;
         this.§5'§ = param1.§`!z§;
         this.§?!&§ = param1.§#!3§;
         this.§!R§ = param1.collideConnected;
         this.§`f§ = false;
         this.§]3§ = param1.§;O§;
      }
      
      b2internal static function §6t§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::'!0:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::!!?:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::-"2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::0!$:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::%!W:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::4"3:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::6",:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::8!o:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §=!!§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §8!d§() : int
      {
         return this.§""#§;
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
      
      public function §6!$§() : b2Body
      {
         return this.§5'§;
      }
      
      public function §=!y§() : b2Body
      {
         return this.§?!&§;
      }
      
      public function §&!=§() : b2Joint
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§]3§;
      }
      
      public function §'!d§(param1:*) : void
      {
         this.§]3§ = param1;
      }
      
      public function §^w§() : Boolean
      {
         return this.§5'§.§^w§() && this.§?!&§.§^w§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8Q§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
