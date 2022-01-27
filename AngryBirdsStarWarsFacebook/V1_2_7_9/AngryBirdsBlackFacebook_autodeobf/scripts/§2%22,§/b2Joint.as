package §2",§
{
   import §1x§.b2Body;
   import §1x§.b2TimeStep;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §9""§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §'!,§:int = 2;
      
      b2internal static const §17§:int = 3;
      
      b2internal static const §7N§:int = 4;
      
      b2internal static const §4!P§:int = 5;
      
      b2internal static const §&!>§:int = 6;
      
      b2internal static const §1" §:int = 7;
      
      b2internal static const §,!2§:int = 8;
      
      b2internal static const §5!N§:int = 9;
      
      b2internal static const §<!D§:int = 0;
      
      b2internal static const §6+§:int = 1;
      
      b2internal static const §6#-§:int = 2;
      
      b2internal static const §<!I§:int = 3;
       
      
      b2internal var §?I§:int;
      
      b2internal var §<@§:b2Joint;
      
      b2internal var § z§:b2Joint;
      
      b2internal var §'"K§:b2JointEdge;
      
      b2internal var §!!!§:b2JointEdge;
      
      b2internal var §0"n§:b2Body;
      
      b2internal var §@!u§:b2Body;
      
      b2internal var §8!]§:Boolean;
      
      b2internal var §[!z§:Boolean;
      
      private var §<A§;
      
      b2internal var §2"!§:b2Vec2;
      
      b2internal var §6!0§:b2Vec2;
      
      b2internal var §]q§:Number;
      
      b2internal var §>"u§:Number;
      
      b2internal var §,!U§:Number;
      
      b2internal var §]C§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§'"K§ = new b2JointEdge();
         this.§!!!§ = new b2JointEdge();
         this.§2"!§ = new b2Vec2();
         this.§6!0§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§!!x§ != param1.§%!x§);
         this.§?I§ = param1.type;
         this.§<@§ = null;
         this.§ z§ = null;
         this.§0"n§ = param1.§!!x§;
         this.§@!u§ = param1.§%!x§;
         this.§[!z§ = param1.collideConnected;
         this.§8!]§ = false;
         this.§<A§ = param1.§>g§;
      }
      
      b2internal static function §0"]§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::17:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4!P:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::'!,:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::7N:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::&!>:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::1" :
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::,!2:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::5!N:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §%c§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function § "N§() : int
      {
         return this.§?I§;
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
      
      public function §5?§() : b2Body
      {
         return this.§0"n§;
      }
      
      public function §1t§() : b2Body
      {
         return this.§@!u§;
      }
      
      public function §=!&§() : b2Joint
      {
         return this.§ z§;
      }
      
      public function GetUserData() : *
      {
         return this.§<A§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<A§ = param1;
      }
      
      public function §]!P§() : Boolean
      {
         return this.§0"n§.§]!P§() && this.§@!u§.§]!P§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §else§() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
