package §!t§
{
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   import §?!E§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §6Y§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §`!i§:int = 2;
      
      b2internal static const §3!l§:int = 3;
      
      b2internal static const §=!>§:int = 4;
      
      b2internal static const §4"5§:int = 5;
      
      b2internal static const §^j§:int = 6;
      
      b2internal static const §-!#§:int = 7;
      
      b2internal static const §2!&§:int = 8;
      
      b2internal static const §1!§:int = 9;
      
      b2internal static const § G§:int = 0;
      
      b2internal static const §&"3§:int = 1;
      
      b2internal static const §]!c§:int = 2;
      
      b2internal static const §"v§:int = 3;
       
      
      b2internal var §;M§:int;
      
      b2internal var §2<§:b2Joint;
      
      b2internal var §-!7§:b2Joint;
      
      b2internal var §4!3§:b2JointEdge;
      
      b2internal var §[" §:b2JointEdge;
      
      b2internal var §7-§:b2Body;
      
      b2internal var §]5§:b2Body;
      
      b2internal var §@!d§:Boolean;
      
      b2internal var §7!@§:Boolean;
      
      private var §!!K§;
      
      b2internal var § !9§:b2Vec2;
      
      b2internal var §2!!§:b2Vec2;
      
      b2internal var §9"+§:Number;
      
      b2internal var §`!I§:Number;
      
      b2internal var §6!N§:Number;
      
      b2internal var §3t§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§4!3§ = new b2JointEdge();
         this.§[" § = new b2JointEdge();
         this.§ !9§ = new b2Vec2();
         this.§2!!§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§["%§ != param1.§`!<§);
         this.§;M§ = param1.type;
         this.§2<§ = null;
         this.§-!7§ = null;
         this.§7-§ = param1.§["%§;
         this.§]5§ = param1.§`!<§;
         this.§7!@§ = param1.collideConnected;
         this.§@!d§ = false;
         this.§!!K§ = param1.§-!j§;
      }
      
      b2internal static function §-"$§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::3!l:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4"5:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::`!i:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::=!>:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::^j:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::-!#:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::2!&:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::1!:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §@!,§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §7![§() : int
      {
         return this.§;M§;
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
      
      public function §;Z§() : b2Body
      {
         return this.§7-§;
      }
      
      public function §=w§() : b2Body
      {
         return this.§]5§;
      }
      
      public function §%T§() : b2Joint
      {
         return this.§-!7§;
      }
      
      public function GetUserData() : *
      {
         return this.§!!K§;
      }
      
      public function §^x§(param1:*) : void
      {
         this.§!!K§ = param1;
      }
      
      public function §0!Q§() : Boolean
      {
         return this.§7-§.§0!Q§() && this.§]5§.§0!Q§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §6D§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
