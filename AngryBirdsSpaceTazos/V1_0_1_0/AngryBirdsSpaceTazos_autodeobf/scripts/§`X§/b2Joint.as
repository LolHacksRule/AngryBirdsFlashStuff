package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §#!h§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §1"@§:int = 2;
      
      b2internal static const §4!Z§:int = 3;
      
      b2internal static const §%!0§:int = 4;
      
      b2internal static const §in §:int = 5;
      
      b2internal static const §"!>§:int = 6;
      
      b2internal static const §2",§:int = 7;
      
      b2internal static const §@"$§:int = 8;
      
      b2internal static const §+_§:int = 9;
      
      b2internal static const §[!_§:int = 0;
      
      b2internal static const §6!S§:int = 1;
      
      b2internal static const §]!=§:int = 2;
      
      b2internal static const §<4§:int = 3;
       
      
      b2internal var §0w§:int;
      
      b2internal var §20§:b2Joint;
      
      b2internal var §+!o§:b2Joint;
      
      b2internal var §<!S§:b2JointEdge;
      
      b2internal var §`!-§:b2JointEdge;
      
      b2internal var §<!1§:b2Body;
      
      b2internal var §?H§:b2Body;
      
      b2internal var §[!a§:Boolean;
      
      b2internal var §46§:Boolean;
      
      private var §7R§;
      
      b2internal var §#">§:b2Vec2;
      
      b2internal var §7N§:b2Vec2;
      
      b2internal var §8"2§:Number;
      
      b2internal var §9;§:Number;
      
      b2internal var §-!J§:Number;
      
      b2internal var §6"2§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§<!S§ = new b2JointEdge();
         this.§`!-§ = new b2JointEdge();
         this.§#">§ = new b2Vec2();
         this.§7N§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§+,§ != param1.§"R§);
         this.§0w§ = param1.type;
         this.§20§ = null;
         this.§+!o§ = null;
         this.§<!1§ = param1.§+,§;
         this.§?H§ = param1.§"R§;
         this.§46§ = param1.collideConnected;
         this.§[!a§ = false;
         this.§7R§ = param1.§!!%§;
      }
      
      b2internal static function §]H§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::4!Z:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::in :
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::1"@:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::%!0:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::"!>:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::2",:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@"$:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::+_:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §^!a§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §@!N§() : int
      {
         return this.§0w§;
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
      
      public function §#n§() : b2Body
      {
         return this.§<!1§;
      }
      
      public function §1x§() : b2Body
      {
         return this.§?H§;
      }
      
      public function §`!y§() : b2Joint
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§7R§ = param1;
      }
      
      public function §0!h§() : Boolean
      {
         return this.§<!1§.§0!h§() && this.§?H§.§0!h§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8!,§() : void
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
