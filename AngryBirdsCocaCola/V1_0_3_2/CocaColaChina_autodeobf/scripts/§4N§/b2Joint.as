package §4N§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2TimeStep;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §function§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §>-§:int = 2;
      
      b2internal static const §>0§:int = 3;
      
      b2internal static const §2r§:int = 4;
      
      b2internal static const §8,§:int = 5;
      
      b2internal static const §!1§:int = 6;
      
      b2internal static const §"!9§:int = 7;
      
      b2internal static const §@Q§:int = 8;
      
      b2internal static const §3t§:int = 9;
      
      b2internal static const §=!X§:int = 0;
      
      b2internal static const §"!3§:int = 1;
      
      b2internal static const §`p§:int = 2;
      
      b2internal static const §+2§:int = 3;
       
      
      b2internal var §;>§:int;
      
      b2internal var §-s§:b2Joint;
      
      b2internal var §9`§:b2Joint;
      
      b2internal var §"!O§:b2JointEdge;
      
      b2internal var §9!X§:b2JointEdge;
      
      b2internal var §^!N§:b2Body;
      
      b2internal var §1A§:b2Body;
      
      b2internal var §?!4§:Boolean;
      
      b2internal var §<!M§:Boolean;
      
      private var §9!M§;
      
      b2internal var §2+§:b2Vec2;
      
      b2internal var §7^§:b2Vec2;
      
      b2internal var §try§:Number;
      
      b2internal var §0!?§:Number;
      
      b2internal var §;P§:Number;
      
      b2internal var §^!9§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§"!O§ = new b2JointEdge();
         this.§9!X§ = new b2JointEdge();
         this.§2+§ = new b2Vec2();
         this.§7^§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§]!M§ != param1.§'!Q§);
         this.§;>§ = param1.type;
         this.§-s§ = null;
         this.§9`§ = null;
         this.§^!N§ = param1.§]!M§;
         this.§1A§ = param1.§'!Q§;
         this.§<!M§ = param1.collideConnected;
         this.§?!4§ = false;
         this.§9!M§ = param1.§`!`§;
      }
      
      b2internal static function §0!^§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::>0:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::8,:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::>-:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::2r:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::!1:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"!9:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@Q:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::3t:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §9!K§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §@e§() : int
      {
         return this.§;>§;
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
      
      public function §-V§() : b2Body
      {
         return this.§^!N§;
      }
      
      public function §7!"§() : b2Body
      {
         return this.§1A§;
      }
      
      public function §^r§() : b2Joint
      {
         return this.§9`§;
      }
      
      public function GetUserData() : *
      {
         return this.§9!M§;
      }
      
      public function §=!=§(param1:*) : void
      {
         this.§9!M§ = param1;
      }
      
      public function §]!_§() : Boolean
      {
         return this.§^!N§.§]!_§() && this.§1A§.§]!_§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function § <§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
