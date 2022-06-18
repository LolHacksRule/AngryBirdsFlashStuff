package §8<§
{
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2TimeStep;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0!-§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const § case§:int = 2;
      
      b2internal static const § Q§:int = 3;
      
      b2internal static const §]!'§:int = 4;
      
      b2internal static const §67§:int = 5;
      
      b2internal static const §>c§:int = 6;
      
      b2internal static const §null §:int = 7;
      
      b2internal static const §0O§:int = 8;
      
      b2internal static const §"!%§:int = 9;
      
      b2internal static const §,!5§:int = 0;
      
      b2internal static const §=l§:int = 1;
      
      b2internal static const §+[§:int = 2;
      
      b2internal static const §74§:int = 3;
       
      
      b2internal var §%V§:int;
      
      b2internal var §-%§:b2Joint;
      
      b2internal var § !P§:b2Joint;
      
      b2internal var §`!Q§:b2JointEdge;
      
      b2internal var §'D§:b2JointEdge;
      
      b2internal var §!!_§:b2Body;
      
      b2internal var §;<§:b2Body;
      
      b2internal var §'!5§:Boolean;
      
      b2internal var §2!5§:Boolean;
      
      private var §,7§;
      
      b2internal var §>x§:b2Vec2;
      
      b2internal var §7!@§:b2Vec2;
      
      b2internal var §?,§:Number;
      
      b2internal var §=w§:Number;
      
      b2internal var §`%§:Number;
      
      b2internal var §@T§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§`!Q§ = new b2JointEdge();
         this.§'D§ = new b2JointEdge();
         this.§>x§ = new b2Vec2();
         this.§7!@§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§,w§ != param1.§2h§);
         this.§%V§ = param1.type;
         this.§-%§ = null;
         this.§ !P§ = null;
         this.§!!_§ = param1.§,w§;
         this.§;<§ = param1.§2h§;
         this.§2!5§ = param1.collideConnected;
         this.§'!5§ = false;
         this.§,7§ = param1.§5!_§;
      }
      
      b2internal static function §[?§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal:: Q:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::67:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal:: case:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::]!':
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::>c:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::null :
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::0O:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::"!%:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §^!K§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §,!W§() : int
      {
         return this.§%V§;
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
      
      public function §^M§() : b2Body
      {
         return this.§!!_§;
      }
      
      public function § !H§() : b2Body
      {
         return this.§;<§;
      }
      
      public function §&6§() : b2Joint
      {
         return this.§ !P§;
      }
      
      public function GetUserData() : *
      {
         return this.§,7§;
      }
      
      public function §?l§(param1:*) : void
      {
         this.§,7§ = param1;
      }
      
      public function §47§() : Boolean
      {
         return this.§!!_§.§47§() && this.§;<§.§47§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §`&§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
