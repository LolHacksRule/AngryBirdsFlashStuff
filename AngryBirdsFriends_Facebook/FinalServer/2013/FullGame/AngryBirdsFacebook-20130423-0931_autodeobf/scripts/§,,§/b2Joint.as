package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §;!$§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §]!-§:int = 2;
      
      b2internal static const §&"W§:int = 3;
      
      b2internal static const §3`§:int = 4;
      
      b2internal static const §-m§:int = 5;
      
      b2internal static const §]x§:int = 6;
      
      b2internal static const §^A§:int = 7;
      
      b2internal static const §"L§:int = 8;
      
      b2internal static const §=!_§:int = 9;
      
      b2internal static const §>Q§:int = 0;
      
      b2internal static const §93§:int = 1;
      
      b2internal static const §,!E§:int = 2;
      
      b2internal static const §;!F§:int = 3;
       
      
      b2internal var §<"@§:int;
      
      b2internal var §;<§:b2Joint;
      
      b2internal var §?!g§:b2Joint;
      
      b2internal var §,E§:b2JointEdge;
      
      b2internal var §?!B§:b2JointEdge;
      
      b2internal var §3"X§:b2Body;
      
      b2internal var §5!§:b2Body;
      
      b2internal var §9!v§:Boolean;
      
      b2internal var §8_§:Boolean;
      
      private var §]!d§;
      
      b2internal var §+!L§:b2Vec2;
      
      b2internal var §`"Z§:b2Vec2;
      
      b2internal var §1!x§:Number;
      
      b2internal var §&!D§:Number;
      
      b2internal var §?]§:Number;
      
      b2internal var §!"S§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§,E§ = new b2JointEdge();
         this.§?!B§ = new b2JointEdge();
         this.§+!L§ = new b2Vec2();
         this.§`"Z§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§`y§ != param1.§8!7§);
         this.§<"@§ = param1.type;
         this.§;<§ = null;
         this.§?!g§ = null;
         this.§3"X§ = param1.§`y§;
         this.§5!§ = param1.§8!7§;
         this.§8_§ = param1.collideConnected;
         this.§9!v§ = false;
         this.§]!d§ = param1.§-!"§;
      }
      
      b2internal static function §3!N§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::&"W:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::-m:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::]!-:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::3`:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::]x:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::^A:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::"L:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::=!_:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §2!s§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §>!f§() : int
      {
         return this.§<"@§;
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
      
      public function §["H§() : b2Body
      {
         return this.§3"X§;
      }
      
      public function §]!s§() : b2Body
      {
         return this.§5!§;
      }
      
      public function §>!v§() : b2Joint
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         this.§]!d§ = param1;
      }
      
      public function §,"G§() : Boolean
      {
         return this.§3"X§.§,"G§() && this.§5!§.§,"G§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §,t§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
