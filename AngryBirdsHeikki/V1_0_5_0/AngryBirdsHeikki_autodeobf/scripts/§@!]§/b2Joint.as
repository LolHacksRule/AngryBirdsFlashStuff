package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §!M§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §!-§:int = 2;
      
      b2internal static const §3!X§:int = 3;
      
      b2internal static const §%>§:int = 4;
      
      b2internal static const §2&§:int = 5;
      
      b2internal static const §&!1§:int = 6;
      
      b2internal static const §=p§:int = 7;
      
      b2internal static const §0,§:int = 8;
      
      b2internal static const §@6§:int = 9;
      
      b2internal static const §]W§:int = 0;
      
      b2internal static const §;!=§:int = 1;
      
      b2internal static const §[z§:int = 2;
      
      b2internal static const §?&§:int = 3;
       
      
      b2internal var §?S§:int;
      
      b2internal var §8§:b2Joint;
      
      b2internal var §+[§:b2Joint;
      
      b2internal var §0!Z§:b2JointEdge;
      
      b2internal var § !I§:b2JointEdge;
      
      b2internal var §]!O§:b2Body;
      
      b2internal var §2!=§:b2Body;
      
      b2internal var §5!S§:Boolean;
      
      b2internal var §8p§:Boolean;
      
      private var §?!I§;
      
      b2internal var §3!$§:b2Vec2;
      
      b2internal var §"D§:b2Vec2;
      
      b2internal var §,o§:Number;
      
      b2internal var §4!I§:Number;
      
      b2internal var §#e§:Number;
      
      b2internal var §9!&§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§0!Z§ = new b2JointEdge();
         this.§ !I§ = new b2JointEdge();
         this.§3!$§ = new b2Vec2();
         this.§"D§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§<!&§ != param1.§!8§);
         this.§?S§ = param1.type;
         this.§8§ = null;
         this.§+[§ = null;
         this.§]!O§ = param1.§<!&§;
         this.§2!=§ = param1.§!8§;
         this.§8p§ = param1.collideConnected;
         this.§5!S§ = false;
         this.§?!I§ = param1.§!Q§;
      }
      
      b2internal static function §<!E§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::3!X:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::2&:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::!-:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::%>:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::&!1:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::=p:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::0,:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::@6:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §[!,§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §[!H§() : int
      {
         return this.§?S§;
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
      
      public function §-!O§() : b2Body
      {
         return this.§]!O§;
      }
      
      public function §=!X§() : b2Body
      {
         return this.§2!=§;
      }
      
      public function §'Q§() : b2Joint
      {
         return this.§+[§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!I§;
      }
      
      public function §0%§(param1:*) : void
      {
         this.§?!I§ = param1;
      }
      
      public function §5!$§() : Boolean
      {
         return this.§]!O§.§5!$§() && this.§2!=§.§5!$§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §@!M§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
