package §5n§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §!N§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §7w§:int = 2;
      
      b2internal static const §+t§:int = 3;
      
      b2internal static const §="§:int = 4;
      
      b2internal static const §=!=§:int = 5;
      
      b2internal static const §>q§:int = 6;
      
      b2internal static const §"0§:int = 7;
      
      b2internal static const §@!-§:int = 8;
      
      b2internal static const §&l§:int = 9;
      
      b2internal static const §`4§:int = 0;
      
      b2internal static const §@E§:int = 1;
      
      b2internal static const §3G§:int = 2;
      
      b2internal static const §9P§:int = 3;
       
      
      b2internal var §&>§:int;
      
      b2internal var §80§:b2Joint;
      
      b2internal var §`!T§:b2Joint;
      
      b2internal var §>w§:b2JointEdge;
      
      b2internal var §`s§:b2JointEdge;
      
      b2internal var §"8§:b2Body;
      
      b2internal var §2!;§:b2Body;
      
      b2internal var §&?§:Boolean;
      
      b2internal var §24§:Boolean;
      
      private var §`G§;
      
      b2internal var §7U§:b2Vec2;
      
      b2internal var §'k§:b2Vec2;
      
      b2internal var §3!5§:Number;
      
      b2internal var §"M§:Number;
      
      b2internal var §6!§:Number;
      
      b2internal var §=!9§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>w§ = new b2JointEdge();
         this.§`s§ = new b2JointEdge();
         this.§7U§ = new b2Vec2();
         this.§'k§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§1I§ != param1.§!T§);
         this.§&>§ = param1.type;
         this.§80§ = null;
         this.§`!T§ = null;
         this.§"8§ = param1.§1I§;
         this.§2!;§ = param1.§!T§;
         this.§24§ = param1.collideConnected;
         this.§&?§ = false;
         this.§`G§ = param1.§+!?§;
      }
      
      b2internal static function §#![§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::+t:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::=!=:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::7w:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::=":
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::>q:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"0:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::@!-:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::&l:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §%P§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"5§() : int
      {
         return this.§&>§;
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
      
      public function §]!U§() : b2Body
      {
         return this.§"8§;
      }
      
      public function §>§() : b2Body
      {
         return this.§2!;§;
      }
      
      public function §%!<§() : b2Joint
      {
         return this.§`!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`G§;
      }
      
      public function §3!!§(param1:*) : void
      {
         this.§`G§ = param1;
      }
      
      public function §]I§() : Boolean
      {
         return this.§"8§.§]I§() && this.§2!;§.§]I§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §6!M§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
