package §@!O§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §##s§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §4$2§:int = 2;
      
      b2internal static const §+$!§:int = 3;
      
      b2internal static const §>#r§:int = 4;
      
      b2internal static const §4#t§:int = 5;
      
      b2internal static const §<!I§:int = 6;
      
      b2internal static const §<#n§:int = 7;
      
      b2internal static const §+%§:int = 8;
      
      b2internal static const §+#r§:int = 9;
      
      b2internal static const §<g§:int = 0;
      
      b2internal static const §2#E§:int = 1;
      
      b2internal static const §#h§:int = 2;
      
      b2internal static const §'"h§:int = 3;
       
      
      b2internal var §6"&§:int;
      
      b2internal var §+"j§:b2Joint;
      
      b2internal var §@##§:b2Joint;
      
      b2internal var §'#a§:b2JointEdge;
      
      b2internal var §;#&§:b2JointEdge;
      
      b2internal var §;"Q§:b2Body;
      
      b2internal var §%;§:b2Body;
      
      b2internal var §<!2§:Boolean;
      
      b2internal var §5#&§:Boolean;
      
      private var §^"]§;
      
      b2internal var §##"§:b2Vec2;
      
      b2internal var §8#j§:b2Vec2;
      
      b2internal var §]!N§:Number;
      
      b2internal var § #N§:Number;
      
      b2internal var §!J§:Number;
      
      b2internal var §>!,§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§'#a§ = new b2JointEdge();
         this.§;#&§ = new b2JointEdge();
         this.§##"§ = new b2Vec2();
         this.§8#j§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§9"Z§ != param1.§'!Y§);
         this.§6"&§ = param1.type;
         this.§+"j§ = null;
         this.§@##§ = null;
         this.§;"Q§ = param1.§9"Z§;
         this.§%;§ = param1.§'!Y§;
         this.§5#&§ = param1.collideConnected;
         this.§<!2§ = false;
         this.§^"]§ = param1.§>"<§;
      }
      
      b2internal static function §'#h§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::+$!:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4#t:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::4$2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::>#r:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::<!I:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::<#n:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::+%:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::+#r:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §@!]§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function § "c§() : int
      {
         return this.§6"&§;
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
      
      public function §+#0§() : b2Body
      {
         return this.§;"Q§;
      }
      
      public function §4#M§() : b2Body
      {
         return this.§%;§;
      }
      
      public function § !V§() : b2Joint
      {
         return this.§@##§;
      }
      
      public function GetUserData() : *
      {
         return this.§^"]§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^"]§ = param1;
      }
      
      public function §[G§() : Boolean
      {
         return this.§;"Q§.§[G§() && this.§%;§.§[G§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §<z§() : void
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
