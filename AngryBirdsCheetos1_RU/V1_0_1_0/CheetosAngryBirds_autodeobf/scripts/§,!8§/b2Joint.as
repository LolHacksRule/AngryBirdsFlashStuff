package §,!8§
{
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §5S§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §%!3§:int = 2;
      
      b2internal static const §@S§:int = 3;
      
      b2internal static const §92§:int = 4;
      
      b2internal static const §+3§:int = 5;
      
      b2internal static const §4"§:int = 6;
      
      b2internal static const §!U§:int = 7;
      
      b2internal static const §%^§:int = 8;
      
      b2internal static const §#!;§:int = 9;
      
      b2internal static const §@d§:int = 0;
      
      b2internal static const §1,§:int = 1;
      
      b2internal static const §"&§:int = 2;
      
      b2internal static const §3^§:int = 3;
       
      
      b2internal var §@9§:int;
      
      b2internal var §]h§:b2Joint;
      
      b2internal var §83§:b2Joint;
      
      b2internal var §=h§:b2JointEdge;
      
      b2internal var §7!4§:b2JointEdge;
      
      b2internal var §%!F§:b2Body;
      
      b2internal var §?!S§:b2Body;
      
      b2internal var §#9§:Boolean;
      
      b2internal var §6'§:Boolean;
      
      private var §%m§;
      
      b2internal var §%s§:b2Vec2;
      
      b2internal var §8N§:b2Vec2;
      
      b2internal var §9"§:Number;
      
      b2internal var § !W§:Number;
      
      b2internal var §0;§:Number;
      
      b2internal var §+!B§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§=h§ = new b2JointEdge();
         this.§7!4§ = new b2JointEdge();
         this.§%s§ = new b2Vec2();
         this.§8N§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§^!<§ != param1.§!E§);
         this.§@9§ = param1.type;
         this.§]h§ = null;
         this.§83§ = null;
         this.§%!F§ = param1.§^!<§;
         this.§?!S§ = param1.§!E§;
         this.§6'§ = param1.collideConnected;
         this.§#9§ = false;
         this.§%m§ = param1.§ X§;
      }
      
      b2internal static function §[?§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::@S:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::+3:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::%!3:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::92:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::4":
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::!U:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::%^:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::#!;:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §58§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §=!,§() : int
      {
         return this.§@9§;
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
      
      public function §37§() : b2Body
      {
         return this.§%!F§;
      }
      
      public function §&!>§() : b2Body
      {
         return this.§?!S§;
      }
      
      public function §&-§() : b2Joint
      {
         return this.§83§;
      }
      
      public function GetUserData() : *
      {
         return this.§%m§;
      }
      
      public function §4R§(param1:*) : void
      {
         this.§%m§ = param1;
      }
      
      public function § "§() : Boolean
      {
         return this.§%!F§.§ "§() && this.§?!S§.§ "§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8p§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
