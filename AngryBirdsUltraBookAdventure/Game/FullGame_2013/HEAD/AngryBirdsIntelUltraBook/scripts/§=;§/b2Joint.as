package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!>§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §2!V§:int = 2;
      
      b2internal static const §@5§:int = 3;
      
      b2internal static const §9!c§:int = 4;
      
      b2internal static const §9!C§:int = 5;
      
      b2internal static const §9§:int = 6;
      
      b2internal static const §+"§:int = 7;
      
      b2internal static const §8!0§:int = 8;
      
      b2internal static const §"!T§:int = 9;
      
      b2internal static const §5!§:int = 0;
      
      b2internal static const §1p§:int = 1;
      
      b2internal static const §`7§:int = 2;
      
      b2internal static const §;x§:int = 3;
       
      
      b2internal var §2!5§:int;
      
      b2internal var §<!9§:b2Joint;
      
      b2internal var §,!Z§:b2Joint;
      
      b2internal var §56§:b2JointEdge;
      
      b2internal var §1b§:b2JointEdge;
      
      b2internal var §-;§:b2Body;
      
      b2internal var §`x§:b2Body;
      
      b2internal var §#!7§:Boolean;
      
      b2internal var §[[§:Boolean;
      
      private var §=f§;
      
      b2internal var §%y§:b2Vec2;
      
      b2internal var §,V§:b2Vec2;
      
      b2internal var §1!h§:Number;
      
      b2internal var §9!6§:Number;
      
      b2internal var §%k§:Number;
      
      b2internal var §9!7§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§56§ = new b2JointEdge();
         this.§1b§ = new b2JointEdge();
         this.§%y§ = new b2Vec2();
         this.§,V§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§7l§ != param1.§<H§);
         this.§2!5§ = param1.type;
         this.§<!9§ = null;
         this.§,!Z§ = null;
         this.§-;§ = param1.§7l§;
         this.§`x§ = param1.§<H§;
         this.§[[§ = param1.collideConnected;
         this.§#!7§ = false;
         this.§=f§ = param1.§+!f§;
      }
      
      b2internal static function §@!L§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case §@5§:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case §9!C§:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case §2!V§:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case §9!c§:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case §9§:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case §+"§:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case §8!0§:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case §"!T§:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"G§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6!-§() : int
      {
         return this.§2!5§;
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
      
      public function §0!M§() : b2Body
      {
         return this.§-;§;
      }
      
      public function §,n§() : b2Body
      {
         return this.§`x§;
      }
      
      public function §'!;§() : b2Joint
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         this.§=f§ = param1;
      }
      
      public function §7!S§() : Boolean
      {
         return this.§-;§.§7!S§() && this.§`x§.§7!S§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §9r§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
