package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § !"§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §@$§:int = 2;
      
      b2internal static const §7!L§:int = 3;
      
      b2internal static const §+4§:int = 4;
      
      b2internal static const § !,§:int = 5;
      
      b2internal static const §"!E§:int = 6;
      
      b2internal static const §^!L§:int = 7;
      
      b2internal static const §3n§:int = 8;
      
      b2internal static const §5![§:int = 9;
      
      b2internal static const §15§:int = 0;
      
      b2internal static const §6!!§:int = 1;
      
      b2internal static const §0!&§:int = 2;
      
      b2internal static const §!!4§:int = 3;
       
      
      b2internal var §32§:int;
      
      b2internal var §7!Q§:b2Joint;
      
      b2internal var §,1§:b2Joint;
      
      b2internal var §[j§:b2JointEdge;
      
      b2internal var §>!3§:b2JointEdge;
      
      b2internal var §1!G§:b2Body;
      
      b2internal var §&!F§:b2Body;
      
      b2internal var §4p§:Boolean;
      
      b2internal var §1s§:Boolean;
      
      private var §8!B§;
      
      b2internal var §,! §:b2Vec2;
      
      b2internal var §&l§:b2Vec2;
      
      b2internal var §%]§:Number;
      
      b2internal var §1!-§:Number;
      
      b2internal var §?!N§:Number;
      
      b2internal var §2<§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§[j§ = new b2JointEdge();
         this.§>!3§ = new b2JointEdge();
         this.§,! § = new b2Vec2();
         this.§&l§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§^!G§ != param1.§-z§);
         this.§32§ = param1.type;
         this.§7!Q§ = null;
         this.§,1§ = null;
         this.§1!G§ = param1.§^!G§;
         this.§&!F§ = param1.§-z§;
         this.§1s§ = param1.collideConnected;
         this.§4p§ = false;
         this.§8!B§ = param1.§?!X§;
      }
      
      b2internal static function §]!U§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case §7!L§:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case § !,§:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case §@$§:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case §+4§:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case §"!E§:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case §^!L§:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case §3n§:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case §5![§:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §"P§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §-V§() : int
      {
         return this.§32§;
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
      
      public function §7m§() : b2Body
      {
         return this.§1!G§;
      }
      
      public function §3B§() : b2Body
      {
         return this.§&!F§;
      }
      
      public function §70§() : b2Joint
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         this.§8!B§ = param1;
      }
      
      public function §-<§() : Boolean
      {
         return this.§1!G§.§-<§() && this.§&!F§.§-<§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §[!B§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
