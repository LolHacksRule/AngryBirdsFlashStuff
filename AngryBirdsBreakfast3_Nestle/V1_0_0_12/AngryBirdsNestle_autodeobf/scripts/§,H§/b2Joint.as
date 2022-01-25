package §,H§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §4$§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §?!5§:int = 2;
      
      b2internal static const §,r§:int = 3;
      
      b2internal static const §!7§:int = 4;
      
      b2internal static const §<! §:int = 5;
      
      b2internal static const §;R§:int = 6;
      
      b2internal static const §>b§:int = 7;
      
      b2internal static const §53§:int = 8;
      
      b2internal static const §0!E§:int = 9;
      
      b2internal static const §6"%§:int = 0;
      
      b2internal static const §44§:int = 1;
      
      b2internal static const §<B§:int = 2;
      
      b2internal static const §8!4§:int = 3;
       
      
      b2internal var §[!5§:int;
      
      b2internal var §<!u§:b2Joint;
      
      b2internal var §>7§:b2Joint;
      
      b2internal var §^"2§:b2JointEdge;
      
      b2internal var §="7§:b2JointEdge;
      
      b2internal var §3v§:b2Body;
      
      b2internal var §;Q§:b2Body;
      
      b2internal var §6!@§:Boolean;
      
      b2internal var §,T§:Boolean;
      
      private var §?!W§;
      
      b2internal var §?!I§:b2Vec2;
      
      b2internal var §+!l§:b2Vec2;
      
      b2internal var §%"+§:Number;
      
      b2internal var §9!j§:Number;
      
      b2internal var §4!A§:Number;
      
      b2internal var §+!_§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§^"2§ = new b2JointEdge();
         this.§="7§ = new b2JointEdge();
         this.§?!I§ = new b2Vec2();
         this.§+!l§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§'!R§ != param1.§@V§);
         this.§[!5§ = param1.type;
         this.§<!u§ = null;
         this.§>7§ = null;
         this.§3v§ = param1.§'!R§;
         this.§;Q§ = param1.§@V§;
         this.§,T§ = param1.collideConnected;
         this.§6!@§ = false;
         this.§?!W§ = param1.userData;
      }
      
      b2internal static function §&y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::,r:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::<! :
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::?!5:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::!7:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::;R:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::>b:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::53:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::0!E:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"!,§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §&r§() : int
      {
         return this.§[!5§;
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
      
      public function §5!c§() : b2Body
      {
         return this.§3v§;
      }
      
      public function §^7§() : b2Body
      {
         return this.§;Q§;
      }
      
      public function §&!B§() : b2Joint
      {
         return this.§>7§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!W§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§?!W§ = param1;
      }
      
      public function §]!@§() : Boolean
      {
         return this.§3v§.§]!@§() && this.§;Q§.§]!@§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §1""§() : void
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
