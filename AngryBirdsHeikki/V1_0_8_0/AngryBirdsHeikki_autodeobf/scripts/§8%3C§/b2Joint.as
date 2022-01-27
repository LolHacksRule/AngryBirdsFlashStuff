package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0!?§.b2TimeStep;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §[p§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §;!I§:int = 2;
      
      b2internal static const §`T§:int = 3;
      
      b2internal static const §@e§:int = 4;
      
      b2internal static const §<!U§:int = 5;
      
      b2internal static const §9!;§:int = 6;
      
      b2internal static const §%!C§:int = 7;
      
      b2internal static const §^!"§:int = 8;
      
      b2internal static const §[! §:int = 9;
      
      b2internal static const §5s§:int = 0;
      
      b2internal static const §[<§:int = 1;
      
      b2internal static const §^!T§:int = 2;
      
      b2internal static const §>M§:int = 3;
       
      
      b2internal var §%P§:int;
      
      b2internal var §4!_§:b2Joint;
      
      b2internal var §=!T§:b2Joint;
      
      b2internal var §8![§:b2JointEdge;
      
      b2internal var §=!Q§:b2JointEdge;
      
      b2internal var §?2§:b2Body;
      
      b2internal var §!N§:b2Body;
      
      b2internal var §;_§:Boolean;
      
      b2internal var §?4§:Boolean;
      
      private var §`!0§;
      
      b2internal var §1!P§:b2Vec2;
      
      b2internal var §+i§:b2Vec2;
      
      b2internal var §0#§:Number;
      
      b2internal var § f§:Number;
      
      b2internal var §?!c§:Number;
      
      b2internal var §`;§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§8![§ = new b2JointEdge();
         this.§=!Q§ = new b2JointEdge();
         this.§1!P§ = new b2Vec2();
         this.§+i§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§?$§ != param1.§%!§);
         this.§%P§ = param1.type;
         this.§4!_§ = null;
         this.§=!T§ = null;
         this.§?2§ = param1.§?$§;
         this.§!N§ = param1.§%!§;
         this.§?4§ = param1.collideConnected;
         this.§;_§ = false;
         this.§`!0§ = param1.§2=§;
      }
      
      b2internal static function §6>§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::`T:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::<!U:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::;!I:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::@e:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::9!;:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::%!C:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::^!":
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::[! :
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §>s§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §7"§() : int
      {
         return this.§%P§;
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
      
      public function §0Q§() : b2Body
      {
         return this.§?2§;
      }
      
      public function §<o§() : b2Body
      {
         return this.§!N§;
      }
      
      public function §=t§() : b2Joint
      {
         return this.§=!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`!0§;
      }
      
      public function §^!M§(param1:*) : void
      {
         this.§`!0§ = param1;
      }
      
      public function §5!`§() : Boolean
      {
         return this.§?2§.§5!`§() && this.§!N§.§5!`§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §;H§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
