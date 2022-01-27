package §?"#§
{
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2TimeStep;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §!!>§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §;G§:int = 2;
      
      b2internal static const §[!Y§:int = 3;
      
      b2internal static const §1!I§:int = 4;
      
      b2internal static const §]e§:int = 5;
      
      b2internal static const §3i§:int = 6;
      
      b2internal static const §"!0§:int = 7;
      
      b2internal static const §&"5§:int = 8;
      
      b2internal static const §1!&§:int = 9;
      
      b2internal static const §5!G§:int = 0;
      
      b2internal static const §=!C§:int = 1;
      
      b2internal static const §2!M§:int = 2;
      
      b2internal static const § _§:int = 3;
       
      
      b2internal var §9!w§:int;
      
      b2internal var §#!o§:b2Joint;
      
      b2internal var §+!>§:b2Joint;
      
      b2internal var §2H§:b2JointEdge;
      
      b2internal var §null §:b2JointEdge;
      
      b2internal var §8!M§:b2Body;
      
      b2internal var §8"?§:b2Body;
      
      b2internal var §?!t§:Boolean;
      
      b2internal var §^!]§:Boolean;
      
      private var §#!;§;
      
      b2internal var §=A§:b2Vec2;
      
      b2internal var §`"4§:b2Vec2;
      
      b2internal var §"u§:Number;
      
      b2internal var §4V§:Number;
      
      b2internal var §7T§:Number;
      
      b2internal var §=3§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§2H§ = new b2JointEdge();
         this.§null § = new b2JointEdge();
         this.§=A§ = new b2Vec2();
         this.§`"4§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§>!&§ != param1.§^!r§);
         this.§9!w§ = param1.type;
         this.§#!o§ = null;
         this.§+!>§ = null;
         this.§8!M§ = param1.§>!&§;
         this.§8"?§ = param1.§^!r§;
         this.§^!]§ = param1.collideConnected;
         this.§?!t§ = false;
         this.§#!;§ = param1.§?!#§;
      }
      
      b2internal static function §&!L§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::[!Y:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::]e:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::;G:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::1!I:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::3i:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"!0:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::&"5:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::1!&:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §<!p§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §^![§() : int
      {
         return this.§9!w§;
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
      
      public function §&H§() : b2Body
      {
         return this.§8!M§;
      }
      
      public function §[D§() : b2Body
      {
         return this.§8"?§;
      }
      
      public function §0!7§() : b2Joint
      {
         return this.§+!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!;§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#!;§ = param1;
      }
      
      public function §2d§() : Boolean
      {
         return this.§8!M§.§2d§() && this.§8"?§.§2d§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §7!V§() : void
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
