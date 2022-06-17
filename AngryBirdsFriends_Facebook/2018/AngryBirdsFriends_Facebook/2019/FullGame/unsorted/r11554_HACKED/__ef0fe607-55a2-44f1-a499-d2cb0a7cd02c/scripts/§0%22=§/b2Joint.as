package §0"=§
{
   import §8#t§.b2Body;
   import §8#t§.b2TimeStep;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0!P§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §7#<§:int = 2;
      
      b2internal static const §-t§:int = 3;
      
      b2internal static const §@!g§:int = 4;
      
      b2internal static const §?#z§:int = 5;
      
      b2internal static const §1#?§:int = 6;
      
      b2internal static const §7x§:int = 7;
      
      b2internal static const §>!g§:int = 8;
      
      b2internal static const §9"p§:int = 9;
      
      b2internal static const §0#W§:int = 0;
      
      b2internal static const §`!S§:int = 1;
      
      b2internal static const §#"o§:int = 2;
      
      b2internal static const §^#T§:int = 3;
       
      
      b2internal var §'!A§:int;
      
      b2internal var §@!w§:b2Joint;
      
      b2internal var §0$9§:b2Joint;
      
      b2internal var §[$-§:b2JointEdge;
      
      b2internal var §'a§:b2JointEdge;
      
      b2internal var §?#E§:b2Body;
      
      b2internal var §;$6§:b2Body;
      
      b2internal var §,!U§:Boolean;
      
      b2internal var §6" §:Boolean;
      
      private var §0#B§;
      
      b2internal var §##4§:b2Vec2;
      
      b2internal var §!"u§:b2Vec2;
      
      b2internal var §1l§:Number;
      
      b2internal var §0X§:Number;
      
      b2internal var §"!z§:Number;
      
      b2internal var §6"&§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§[$-§ = new b2JointEdge();
         this.§'a§ = new b2JointEdge();
         this.§##4§ = new b2Vec2();
         this.§!"u§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§%#&§ != param1.§8V§);
         this.§'!A§ = param1.type;
         this.§@!w§ = null;
         this.§0$9§ = null;
         this.§?#E§ = param1.§%#&§;
         this.§;$6§ = param1.§8V§;
         this.§6" § = param1.collideConnected;
         this.§,!U§ = false;
         this.§0#B§ = param1.§@"Z§;
      }
      
      b2internal static function §9b§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::-t:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::?#z:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::7#<:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::@!g:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::1#?:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::7x:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::>!g:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::9"p:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §-!2§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §52§() : int
      {
         return this.§'!A§;
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
      
      public function §&$#§() : b2Body
      {
         return this.§?#E§;
      }
      
      public function §&!u§() : b2Body
      {
         return this.§;$6§;
      }
      
      public function §+c§() : b2Joint
      {
         return this.§0$9§;
      }
      
      public function GetUserData() : *
      {
         return this.§0#B§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0#B§ = param1;
      }
      
      public function §6!1§() : Boolean
      {
         return this.§?#E§.§6!1§() && this.§;$6§.§6!1§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §""I§() : void
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
