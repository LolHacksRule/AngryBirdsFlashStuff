package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §`$+§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §1X§:int = 2;
      
      b2internal static const §%!-§:int = 3;
      
      b2internal static const §]"u§:int = 4;
      
      b2internal static const §<#d§:int = 5;
      
      b2internal static const §>"M§:int = 6;
      
      b2internal static const §2T§:int = 7;
      
      b2internal static const §="9§:int = 8;
      
      b2internal static const §!!e§:int = 9;
      
      b2internal static const §7m§:int = 0;
      
      b2internal static const §=!A§:int = 1;
      
      b2internal static const §`!§:int = 2;
      
      b2internal static const §]H§:int = 3;
       
      
      b2internal var §"#W§:int;
      
      b2internal var §,p§:b2Joint;
      
      b2internal var §-!l§:b2Joint;
      
      b2internal var §#!X§:b2JointEdge;
      
      b2internal var §!$"§:b2JointEdge;
      
      b2internal var §3!^§:b2Body;
      
      b2internal var §^U§:b2Body;
      
      b2internal var §"",§:Boolean;
      
      b2internal var §"#X§:Boolean;
      
      private var §^!V§;
      
      b2internal var §+#4§:b2Vec2;
      
      b2internal var §,+§:b2Vec2;
      
      b2internal var §-"+§:Number;
      
      b2internal var §!!E§:Number;
      
      b2internal var §%L§:Number;
      
      b2internal var §"#P§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§#!X§ = new b2JointEdge();
         this.§!$"§ = new b2JointEdge();
         this.§+#4§ = new b2Vec2();
         this.§,+§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§'§ != param1.§>!2§);
         this.§"#W§ = param1.type;
         this.§,p§ = null;
         this.§-!l§ = null;
         this.§3!^§ = param1.§'§;
         this.§^U§ = param1.§>!2§;
         this.§"#X§ = param1.collideConnected;
         this.§"",§ = false;
         this.§^!V§ = param1.§>J§;
      }
      
      b2internal static function §4"T§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::%!-:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::<#d:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::1X:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::]"u:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::>"M:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::2T:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::="9:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::!!e:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §`"e§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §+L§() : int
      {
         return this.§"#W§;
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
      
      public function §94§() : b2Body
      {
         return this.§3!^§;
      }
      
      public function §=#O§() : b2Body
      {
         return this.§^U§;
      }
      
      public function §^"y§() : b2Joint
      {
         return this.§-!l§;
      }
      
      public function GetUserData() : *
      {
         return this.§^!V§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^!V§ = param1;
      }
      
      public function §]$1§() : Boolean
      {
         return this.§3!^§.§]$1§() && this.§^U§.§]$1§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §!!D§() : void
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
