package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §'2§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §<w§:int = 2;
      
      b2internal static const §8-§:int = 3;
      
      b2internal static const §3!+§:int = 4;
      
      b2internal static const §%![§:int = 5;
      
      b2internal static const §%?§:int = 6;
      
      b2internal static const §-f§:int = 7;
      
      b2internal static const §"!1§:int = 8;
      
      b2internal static const §>!`§:int = 9;
      
      b2internal static const §]B§:int = 0;
      
      b2internal static const §1l§:int = 1;
      
      b2internal static const §4!S§:int = 2;
      
      b2internal static const §3!`§:int = 3;
       
      
      b2internal var §3r§:int;
      
      b2internal var §+!3§:b2Joint;
      
      b2internal var §=!8§:b2Joint;
      
      b2internal var §2a§:b2JointEdge;
      
      b2internal var §]^§:b2JointEdge;
      
      b2internal var §&A§:b2Body;
      
      b2internal var §4!d§:b2Body;
      
      b2internal var §1v§:Boolean;
      
      b2internal var §7u§:Boolean;
      
      private var §>g§;
      
      b2internal var §9&§:b2Vec2;
      
      b2internal var §2![§:b2Vec2;
      
      b2internal var §`!Q§:Number;
      
      b2internal var §'!$§:Number;
      
      b2internal var §3<§:Number;
      
      b2internal var §]!%§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§2a§ = new b2JointEdge();
         this.§]^§ = new b2JointEdge();
         this.§9&§ = new b2Vec2();
         this.§2![§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§19§ != param1.§"@§);
         this.§3r§ = param1.type;
         this.§+!3§ = null;
         this.§=!8§ = null;
         this.§&A§ = param1.§19§;
         this.§4!d§ = param1.§"@§;
         this.§7u§ = param1.collideConnected;
         this.§1v§ = false;
         this.§>g§ = param1.§]!=§;
      }
      
      b2internal static function §1!Y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::8-:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::%![:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::<w:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::3!+:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::%?:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::-f:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::"!1:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::>!`:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §=_§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function § 5§() : int
      {
         return this.§3r§;
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
      
      public function §&,§() : b2Body
      {
         return this.§&A§;
      }
      
      public function §<! §() : b2Body
      {
         return this.§4!d§;
      }
      
      public function §?!^§() : b2Joint
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         this.§>g§ = param1;
      }
      
      public function §3!C§() : Boolean
      {
         return this.§&A§.§3!C§() && this.§4!d§.§3!C§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §@!O§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
