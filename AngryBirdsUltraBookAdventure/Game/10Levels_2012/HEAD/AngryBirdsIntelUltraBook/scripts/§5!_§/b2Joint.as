package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const dynamic:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#!D§:int = 2;
      
      b2internal static const §7z§:int = 3;
      
      b2internal static const §[!$§:int = 4;
      
      b2internal static const §>X§:int = 5;
      
      b2internal static const §5R§:int = 6;
      
      b2internal static const §+!>§:int = 7;
      
      b2internal static const §-!X§:int = 8;
      
      b2internal static const §,?§:int = 9;
      
      b2internal static const §1P§:int = 0;
      
      b2internal static const §1!>§:int = 1;
      
      b2internal static const §5'§:int = 2;
      
      b2internal static const §>!2§:int = 3;
       
      
      b2internal var §@!D§:int;
      
      b2internal var §4!0§:b2Joint;
      
      b2internal var §!J§:b2Joint;
      
      b2internal var §#n§:b2JointEdge;
      
      b2internal var §2H§:b2JointEdge;
      
      b2internal var §,^§:b2Body;
      
      b2internal var § X§:b2Body;
      
      b2internal var §8c§:Boolean;
      
      b2internal var §'!"§:Boolean;
      
      private var §#!I§;
      
      b2internal var §8'§:b2Vec2;
      
      b2internal var §<!;§:b2Vec2;
      
      b2internal var §+!b§:Number;
      
      b2internal var §%!]§:Number;
      
      b2internal var §[!3§:Number;
      
      b2internal var §[S§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§#n§ = new b2JointEdge();
         this.§2H§ = new b2JointEdge();
         this.§8'§ = new b2Vec2();
         this.§<!;§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§7!K§ != param1.§'P§);
         this.§@!D§ = param1.type;
         this.§4!0§ = null;
         this.§!J§ = null;
         this.§,^§ = param1.§7!K§;
         this.§ X§ = param1.§'P§;
         this.§'!"§ = param1.collideConnected;
         this.§8c§ = false;
         this.§#!I§ = param1.§#!`§;
      }
      
      b2internal static function §;!]§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case §7z§:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case §>X§:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case §#!D§:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case §[!$§:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case §5R§:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case §+!>§:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case §-!X§:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case §,?§:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"!Q§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §3r§() : int
      {
         return this.§@!D§;
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
      
      public function §;!B§() : b2Body
      {
         return this.§,^§;
      }
      
      public function § for§() : b2Body
      {
         return this.§ X§;
      }
      
      public function §5<§() : b2Joint
      {
         return this.§!J§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!I§;
      }
      
      public function §^!T§(param1:*) : void
      {
         this.§#!I§ = param1;
      }
      
      public function §6!%§() : Boolean
      {
         return this.§,^§.§6!%§() && this.§ X§.§6!%§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §#!0§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
