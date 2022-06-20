package §&g§
{
   import § !k§.b2Body;
   import § !k§.b2TimeStep;
   import §!"8§.b2Vec2;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § "+§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §%!R§:int = 2;
      
      b2internal static const §&!p§:int = 3;
      
      b2internal static const §[!h§:int = 4;
      
      b2internal static const §5!y§:int = 5;
      
      b2internal static const §]K§:int = 6;
      
      b2internal static const §!!3§:int = 7;
      
      b2internal static const §[!!§:int = 8;
      
      b2internal static const §!"B§:int = 9;
      
      b2internal static const §9!5§:int = 0;
      
      b2internal static const §>"%§:int = 1;
      
      b2internal static const §0J§:int = 2;
      
      b2internal static const §"!s§:int = 3;
       
      
      b2internal var §=""§:int;
      
      b2internal var §=>§:b2Joint;
      
      b2internal var §7"@§:b2Joint;
      
      b2internal var §&!i§:b2JointEdge;
      
      b2internal var §,!Q§:b2JointEdge;
      
      b2internal var §5!A§:b2Body;
      
      b2internal var § k§:b2Body;
      
      b2internal var §&!4§:Boolean;
      
      b2internal var §1c§:Boolean;
      
      private var §[?§;
      
      b2internal var §&!O§:b2Vec2;
      
      b2internal var §;!0§:b2Vec2;
      
      b2internal var §>k§:Number;
      
      b2internal var § =§:Number;
      
      b2internal var §!0§:Number;
      
      b2internal var §'s§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§&!i§ = new b2JointEdge();
         this.§,!Q§ = new b2JointEdge();
         this.§&!O§ = new b2Vec2();
         this.§;!0§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§3"$§ != param1.§?!A§);
         this.§=""§ = param1.type;
         this.§=>§ = null;
         this.§7"@§ = null;
         this.§5!A§ = param1.§3"$§;
         this.§ k§ = param1.§?!A§;
         this.§1c§ = param1.collideConnected;
         this.§&!4§ = false;
         this.§[?§ = param1.§#"@§;
      }
      
      b2internal static function §#!b§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::&!p:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::5!y:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::%!R:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::[!h:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::]K:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::!!3:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::[!!:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::!"B:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §1?§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §9!j§() : int
      {
         return this.§=""§;
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
      
      public function §]i§() : b2Body
      {
         return this.§5!A§;
      }
      
      public function §>F§() : b2Body
      {
         return this.§ k§;
      }
      
      public function §&A§() : b2Joint
      {
         return this.§7"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§[?§;
      }
      
      public function §'A§(param1:*) : void
      {
         this.§[?§ = param1;
      }
      
      public function IsActive() : Boolean
      {
         return this.§5!A§.IsActive() && this.§ k§.IsActive();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §80§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
