package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §&a§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §@!M§:int = 2;
      
      b2internal static const §&!`§:int = 3;
      
      b2internal static const §=q§:int = 4;
      
      b2internal static const §<!_§:int = 5;
      
      b2internal static const §#!a§:int = 6;
      
      b2internal static const §&Q§:int = 7;
      
      b2internal static const §3]§:int = 8;
      
      b2internal static const §?I§:int = 9;
      
      b2internal static const §9Z§:int = 0;
      
      b2internal static const §%!P§:int = 1;
      
      b2internal static const §7L§:int = 2;
      
      b2internal static const §1!G§:int = 3;
       
      
      b2internal var §3!a§:int;
      
      b2internal var §9!@§:b2Joint;
      
      b2internal var §]!8§:b2Joint;
      
      b2internal var §%!G§:b2JointEdge;
      
      b2internal var §3T§:b2JointEdge;
      
      b2internal var §,"§:b2Body;
      
      b2internal var §,g§:b2Body;
      
      b2internal var §=![§:Boolean;
      
      b2internal var §+!+§:Boolean;
      
      private var §=E§;
      
      b2internal var §,7§:b2Vec2;
      
      b2internal var §2G§:b2Vec2;
      
      b2internal var §04§:Number;
      
      b2internal var §'2§:Number;
      
      b2internal var §+!J§:Number;
      
      b2internal var §"d§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§%!G§ = new b2JointEdge();
         this.§3T§ = new b2JointEdge();
         this.§,7§ = new b2Vec2();
         this.§2G§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§[!N§ != param1.§0!'§);
         this.§3!a§ = param1.type;
         this.§9!@§ = null;
         this.§]!8§ = null;
         this.§,"§ = param1.§[!N§;
         this.§,g§ = param1.§0!'§;
         this.§+!+§ = param1.collideConnected;
         this.§=![§ = false;
         this.§=E§ = param1.§<!=§;
      }
      
      b2internal static function §8b§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::&!`:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::<!_:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::@!M:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::=q:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::#!a:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::&Q:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::3]:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::?I:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §<a§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6+§() : int
      {
         return this.§3!a§;
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
      
      public function §=!e§() : b2Body
      {
         return this.§,"§;
      }
      
      public function §^5§() : b2Body
      {
         return this.§,g§;
      }
      
      public function §1![§() : b2Joint
      {
         return this.§]!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§=E§;
      }
      
      public function §0!@§(param1:*) : void
      {
         this.§=E§ = param1;
      }
      
      public function §0!Q§() : Boolean
      {
         return this.§,"§.§0!Q§() && this.§,g§.§0!Q§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §[!L§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
