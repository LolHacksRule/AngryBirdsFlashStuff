package §6>§
{
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §4!U§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §!9§:int = 2;
      
      b2internal static const §,n§:int = 3;
      
      b2internal static const §#!@§:int = 4;
      
      b2internal static const §5!Y§:int = 5;
      
      b2internal static const §@!<§:int = 6;
      
      b2internal static const §+!O§:int = 7;
      
      b2internal static const §]!P§:int = 8;
      
      b2internal static const §#!'§:int = 9;
      
      b2internal static const §;W§:int = 0;
      
      b2internal static const §8!O§:int = 1;
      
      b2internal static const §&![§:int = 2;
      
      b2internal static const §`!1§:int = 3;
       
      
      b2internal var §'A§:int;
      
      b2internal var §5E§:b2Joint;
      
      b2internal var §,C§:b2Joint;
      
      b2internal var §>!3§:b2JointEdge;
      
      b2internal var §,V§:b2JointEdge;
      
      b2internal var §+!N§:b2Body;
      
      b2internal var §@;§:b2Body;
      
      b2internal var §%!^§:Boolean;
      
      b2internal var §@!]§:Boolean;
      
      private var §4!3§;
      
      b2internal var §+3§:b2Vec2;
      
      b2internal var §+h§:b2Vec2;
      
      b2internal var §@W§:Number;
      
      b2internal var §01§:Number;
      
      b2internal var §"!D§:Number;
      
      b2internal var §`!J§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>!3§ = new b2JointEdge();
         this.§,V§ = new b2JointEdge();
         this.§+3§ = new b2Vec2();
         this.§+h§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§;0§ != param1.§+4§);
         this.§'A§ = param1.type;
         this.§5E§ = null;
         this.§,C§ = null;
         this.§+!N§ = param1.§;0§;
         this.§@;§ = param1.§+4§;
         this.§@!]§ = param1.collideConnected;
         this.§%!^§ = false;
         this.§4!3§ = param1.§3q§;
      }
      
      b2internal static function § `§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::,n:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::5!Y:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::!9:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::#!@:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::@!<:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::+!O:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]!P:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::#!':
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §%!`§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §<!M§() : int
      {
         return this.§'A§;
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
      
      public function §+!T§() : b2Body
      {
         return this.§+!N§;
      }
      
      public function §3!S§() : b2Body
      {
         return this.§@;§;
      }
      
      public function §]S§() : b2Joint
      {
         return this.§,C§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!3§;
      }
      
      public function §!X§(param1:*) : void
      {
         this.§4!3§ = param1;
      }
      
      public function §4@§() : Boolean
      {
         return this.§+!N§.§4@§() && this.§@;§.§4@§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §7!8§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
