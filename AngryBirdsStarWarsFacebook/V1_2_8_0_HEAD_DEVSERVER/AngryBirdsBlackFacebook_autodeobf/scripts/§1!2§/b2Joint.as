package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §+!o§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §`#^§:int = 2;
      
      b2internal static const §83§:int = 3;
      
      b2internal static const § "j§:int = 4;
      
      b2internal static const §4#T§:int = 5;
      
      b2internal static const §?!K§:int = 6;
      
      b2internal static const §=#9§:int = 7;
      
      b2internal static const §5@§:int = 8;
      
      b2internal static const §0+§:int = 9;
      
      b2internal static const §"!G§:int = 0;
      
      b2internal static const §5#C§:int = 1;
      
      b2internal static const §#"e§:int = 2;
      
      b2internal static const §?!b§:int = 3;
       
      
      b2internal var §%!9§:int;
      
      b2internal var § #&§:b2Joint;
      
      b2internal var §!"!§:b2Joint;
      
      b2internal var §>"-§:b2JointEdge;
      
      b2internal var §<!$§:b2JointEdge;
      
      b2internal var §2!g§:b2Body;
      
      b2internal var § "z§:b2Body;
      
      b2internal var §'!z§:Boolean;
      
      b2internal var §6"m§:Boolean;
      
      private var §0!+§;
      
      b2internal var §[#%§:b2Vec2;
      
      b2internal var §&"8§:b2Vec2;
      
      b2internal var §<M§:Number;
      
      b2internal var §`"?§:Number;
      
      b2internal var §]r§:Number;
      
      b2internal var §-w§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§>"-§ = new b2JointEdge();
         this.§<!$§ = new b2JointEdge();
         this.§[#%§ = new b2Vec2();
         this.§&"8§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§9"P§ != param1.§continue§);
         this.§%!9§ = param1.type;
         this.§ #&§ = null;
         this.§!"!§ = null;
         this.§2!g§ = param1.§9"P§;
         this.§ "z§ = param1.§continue§;
         this.§6"m§ = param1.collideConnected;
         this.§'!z§ = false;
         this.§0!+§ = param1.§@"g§;
      }
      
      b2internal static function §=!S§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::83:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::4#T:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::`#^:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal:: "j:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::?!K:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::=#9:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::5@:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::0+:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §;!"§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §8! §() : int
      {
         return this.§%!9§;
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
      
      public function §;!`§() : b2Body
      {
         return this.§2!g§;
      }
      
      public function §8!'§() : b2Body
      {
         return this.§ "z§;
      }
      
      public function §>!>§() : b2Joint
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0!+§ = param1;
      }
      
      public function §%!L§() : Boolean
      {
         return this.§2!g§.§%!L§() && this.§ "z§.§%!L§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §4"J§() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
