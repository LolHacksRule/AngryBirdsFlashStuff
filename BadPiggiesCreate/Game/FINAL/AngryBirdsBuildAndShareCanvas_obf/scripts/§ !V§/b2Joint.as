package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §--§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §=!`§:int = 2;
      
      b2internal static const §9!T§:int = 3;
      
      b2internal static const §2!D§:int = 4;
      
      b2internal static const §=J§:int = 5;
      
      b2internal static const §[i§:int = 6;
      
      b2internal static const §7!z§:int = 7;
      
      b2internal static const §>_§:int = 8;
      
      b2internal static const §case §:int = 9;
      
      b2internal static const §@g§:int = 0;
      
      b2internal static const §2!J§:int = 1;
      
      b2internal static const §^"<§:int = 2;
      
      b2internal static const §@!5§:int = 3;
       
      
      b2internal var §="1§:int;
      
      b2internal var §7b§:b2Joint;
      
      b2internal var §>""§:b2Joint;
      
      b2internal var §%;§:b2JointEdge;
      
      b2internal var §!4§:b2JointEdge;
      
      b2internal var §0"7§:b2Body;
      
      b2internal var § `§:b2Body;
      
      b2internal var §`!s§:Boolean;
      
      b2internal var §1!-§:Boolean;
      
      private var §6g§;
      
      b2internal var §91§:b2Vec2;
      
      b2internal var §6"+§:b2Vec2;
      
      b2internal var §`!a§:Number;
      
      b2internal var §'!z§:Number;
      
      b2internal var §;u§:Number;
      
      b2internal var §1!Y§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§%;§ = new b2JointEdge();
         this.§!4§ = new b2JointEdge();
         this.§91§ = new b2Vec2();
         this.§6"+§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§@!<§ != param1.§3j§);
         this.§="1§ = param1.type;
         this.§7b§ = null;
         this.§>""§ = null;
         this.§0"7§ = param1.§@!<§;
         this.§ `§ = param1.§3j§;
         this.§1!-§ = param1.collideConnected;
         this.§`!s§ = false;
         this.§6g§ = param1.§1P§;
      }
      
      b2internal static function §-!x§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::9!T:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::=J:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::=!`:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::2!D:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::[i:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::7!z:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::>_:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::case :
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;&§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §+!O§() : int
      {
         return this.§="1§;
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
      
      public function §]"$§() : b2Body
      {
         return this.§0"7§;
      }
      
      public function §5v§() : b2Body
      {
         return this.§ `§;
      }
      
      public function §'!q§() : b2Joint
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         this.§6g§ = param1;
      }
      
      public function §9!9§() : Boolean
      {
         return this.§0"7§.§9!9§() && this.§ `§.§9!9§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8"§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
