package §"G§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2TimeStep;
   import §7F§.b2Vec2;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § !q§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8N§:int = 2;
      
      b2internal static const §4k§:int = 3;
      
      b2internal static const §9r§:int = 4;
      
      b2internal static const §in§:int = 5;
      
      b2internal static const §2+§:int = 6;
      
      b2internal static const §&!w§:int = 7;
      
      b2internal static const §4$§:int = 8;
      
      b2internal static const §6?§:int = 9;
      
      b2internal static const §;7§:int = 0;
      
      b2internal static const §#N§:int = 1;
      
      b2internal static const §!c§:int = 2;
      
      b2internal static const § j§:int = 3;
       
      
      b2internal var §6N§:int;
      
      b2internal var §>b§:b2Joint;
      
      b2internal var §&!n§:b2Joint;
      
      b2internal var §7s§:b2JointEdge;
      
      b2internal var §%V§:b2JointEdge;
      
      b2internal var §3"6§:b2Body;
      
      b2internal var §<X§:b2Body;
      
      b2internal var §84§:Boolean;
      
      b2internal var §"!#§:Boolean;
      
      private var §>!G§;
      
      b2internal var §&"#§:b2Vec2;
      
      b2internal var §<Y§:b2Vec2;
      
      b2internal var §@f§:Number;
      
      b2internal var §+"§:Number;
      
      b2internal var §4v§:Number;
      
      b2internal var §#f§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§7s§ = new b2JointEdge();
         this.§%V§ = new b2JointEdge();
         this.§&"#§ = new b2Vec2();
         this.§<Y§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§4"?§ != param1.§+H§);
         this.§6N§ = param1.type;
         this.§>b§ = null;
         this.§&!n§ = null;
         this.§3"6§ = param1.§4"?§;
         this.§<X§ = param1.§+H§;
         this.§"!#§ = param1.collideConnected;
         this.§84§ = false;
         this.§>!G§ = param1.§5!R§;
      }
      
      b2internal static function §]!e§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::4k:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::in:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::8N:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::9r:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::2+:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::&!w:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::4$:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::6?:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §]!f§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §;!w§() : int
      {
         return this.§6N§;
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
      
      public function §]!9§() : b2Body
      {
         return this.§3"6§;
      }
      
      public function §=3§() : b2Body
      {
         return this.§<X§;
      }
      
      public function §+U§() : b2Joint
      {
         return this.§&!n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!G§;
      }
      
      public function §#^§(param1:*) : void
      {
         this.§>!G§ = param1;
      }
      
      public function §!]§() : Boolean
      {
         return this.§3"6§.§!]§() && this.§<X§.§!]§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §?!"§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
