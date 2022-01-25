package §6$§
{
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2TimeStep;
   import §<!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §@S§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §2!;§:int = 2;
      
      b2internal static const §else §:int = 3;
      
      b2internal static const §[!`§:int = 4;
      
      b2internal static const §]&§:int = 5;
      
      b2internal static const §@+§:int = 6;
      
      b2internal static const §,"§:int = 7;
      
      b2internal static const §^t§:int = 8;
      
      b2internal static const §,!P§:int = 9;
      
      b2internal static const §]m§:int = 0;
      
      b2internal static const §``§:int = 1;
      
      b2internal static const §=A§:int = 2;
      
      b2internal static const §5!<§:int = 3;
       
      
      b2internal var §'!c§:int;
      
      b2internal var §4d§:b2Joint;
      
      b2internal var §^!B§:b2Joint;
      
      b2internal var §<!c§:b2JointEdge;
      
      b2internal var § K§:b2JointEdge;
      
      b2internal var §2!I§:b2Body;
      
      b2internal var §%!#§:b2Body;
      
      b2internal var §<!F§:Boolean;
      
      b2internal var §;!b§:Boolean;
      
      private var §]%§;
      
      b2internal var §5!W§:b2Vec2;
      
      b2internal var §!!N§:b2Vec2;
      
      b2internal var §9R§:Number;
      
      b2internal var §'o§:Number;
      
      b2internal var §%!K§:Number;
      
      b2internal var §82§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§<!c§ = new b2JointEdge();
         this.§ K§ = new b2JointEdge();
         this.§5!W§ = new b2Vec2();
         this.§!!N§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§'@§ != param1.§"!2§);
         this.§'!c§ = param1.type;
         this.§4d§ = null;
         this.§^!B§ = null;
         this.§2!I§ = param1.§'@§;
         this.§%!#§ = param1.§"!2§;
         this.§;!b§ = param1.collideConnected;
         this.§<!F§ = false;
         this.§]%§ = param1.§6!6§;
      }
      
      b2internal static function §&!W§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::else :
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::]&:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::2!;:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[!`:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::@+:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::,":
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::^t:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::,!P:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §'D§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6`§() : int
      {
         return this.§'!c§;
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
      
      public function §7!'§() : b2Body
      {
         return this.§2!I§;
      }
      
      public function §[!"§() : b2Body
      {
         return this.§%!#§;
      }
      
      public function §#!3§() : b2Joint
      {
         return this.§^!B§;
      }
      
      public function GetUserData() : *
      {
         return this.§]%§;
      }
      
      public function §3!Z§(param1:*) : void
      {
         this.§]%§ = param1;
      }
      
      public function §1t§() : Boolean
      {
         return this.§2!I§.§1t§() && this.§%!#§.§1t§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §3U§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
