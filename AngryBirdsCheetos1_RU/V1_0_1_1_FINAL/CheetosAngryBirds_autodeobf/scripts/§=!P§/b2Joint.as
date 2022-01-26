package §=!P§
{
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2TimeStep;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7@§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §%Q§:int = 2;
      
      b2internal static const §&_§:int = 3;
      
      b2internal static const §^!#§:int = 4;
      
      b2internal static const §'B§:int = 5;
      
      b2internal static const §1Q§:int = 6;
      
      b2internal static const §7!-§:int = 7;
      
      b2internal static const §]0§:int = 8;
      
      b2internal static const §#G§:int = 9;
      
      b2internal static const §@+§:int = 0;
      
      b2internal static const § %§:int = 1;
      
      b2internal static const §-I§:int = 2;
      
      b2internal static const §&9§:int = 3;
       
      
      b2internal var §3;§:int;
      
      b2internal var §&J§:b2Joint;
      
      b2internal var §%m§:b2Joint;
      
      b2internal var §5!3§:b2JointEdge;
      
      b2internal var §"!5§:b2JointEdge;
      
      b2internal var §&!?§:b2Body;
      
      b2internal var §!!c§:b2Body;
      
      b2internal var §6-§:Boolean;
      
      b2internal var §;!Q§:Boolean;
      
      private var §,2§;
      
      b2internal var §]!"§:b2Vec2;
      
      b2internal var §6!X§:b2Vec2;
      
      b2internal var §,N§:Number;
      
      b2internal var §!7§:Number;
      
      b2internal var §5;§:Number;
      
      b2internal var §6$§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§5!3§ = new b2JointEdge();
         this.§"!5§ = new b2JointEdge();
         this.§]!"§ = new b2Vec2();
         this.§6!X§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§ !,§ != param1.§]z§);
         this.§3;§ = param1.type;
         this.§&J§ = null;
         this.§%m§ = null;
         this.§&!?§ = param1.§ !,§;
         this.§!!c§ = param1.§]z§;
         this.§;!Q§ = param1.collideConnected;
         this.§6-§ = false;
         this.§,2§ = param1.§]h§;
      }
      
      b2internal static function §1P§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::&_:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::'B:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::%Q:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::^!#:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::1Q:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::7!-:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::]0:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::#G:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §88§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §9P§() : int
      {
         return this.§3;§;
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
      
      public function §#!!§() : b2Body
      {
         return this.§&!?§;
      }
      
      public function §+!I§() : b2Body
      {
         return this.§!!c§;
      }
      
      public function §&!V§() : b2Joint
      {
         return this.§%m§;
      }
      
      public function GetUserData() : *
      {
         return this.§,2§;
      }
      
      public function §]4§(param1:*) : void
      {
         this.§,2§ = param1;
      }
      
      public function §%!@§() : Boolean
      {
         return this.§&!?§.§%!@§() && this.§!!c§.§%!@§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §]!6§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
