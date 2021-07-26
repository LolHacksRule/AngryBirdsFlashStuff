package §!"b§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7#c§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §+!7§:int = 2;
      
      b2internal static const §>"J§:int = 3;
      
      b2internal static const §'%§:int = 4;
      
      b2internal static const §]"E§:int = 5;
      
      b2internal static const §2"U§:int = 6;
      
      b2internal static const §"!'§:int = 7;
      
      b2internal static const § !o§:int = 8;
      
      b2internal static const §6#Y§:int = 9;
      
      b2internal static const §&A§:int = 0;
      
      b2internal static const §-I§:int = 1;
      
      b2internal static const §?b§:int = 2;
      
      b2internal static const § "$§:int = 3;
       
      
      b2internal var §#!T§:int;
      
      b2internal var §-$7§:b2Joint;
      
      b2internal var §>d§:b2Joint;
      
      b2internal var §<D§:b2JointEdge;
      
      b2internal var §>##§:b2JointEdge;
      
      b2internal var §6#6§:b2Body;
      
      b2internal var §]#j§:b2Body;
      
      b2internal var §1!m§:Boolean;
      
      b2internal var §''§:Boolean;
      
      private var §5!3§;
      
      b2internal var §-#i§:b2Vec2;
      
      b2internal var §+!8§:b2Vec2;
      
      b2internal var §3$#§:Number;
      
      b2internal var include:Number;
      
      b2internal var §"O§:Number;
      
      b2internal var §0#4§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§<D§ = new b2JointEdge();
         this.§>##§ = new b2JointEdge();
         this.§-#i§ = new b2Vec2();
         this.§+!8§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§9!Z§ != param1.§#!_§);
         this.§#!T§ = param1.type;
         this.§-$7§ = null;
         this.§>d§ = null;
         this.§6#6§ = param1.§9!Z§;
         this.§]#j§ = param1.§#!_§;
         this.§''§ = param1.collideConnected;
         this.§1!m§ = false;
         this.§5!3§ = param1.§9!6§;
      }
      
      b2internal static function §9#s§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::>"J:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::]"E:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::+!7:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::'%:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::2"U:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::"!':
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal:: !o:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::6#Y:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §,#?§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §<!e§() : int
      {
         return this.§#!T§;
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
      
      public function §0I§() : b2Body
      {
         return this.§6#6§;
      }
      
      public function §2"y§() : b2Body
      {
         return this.§]#j§;
      }
      
      public function §4!7§() : b2Joint
      {
         return this.§>d§;
      }
      
      public function GetUserData() : *
      {
         return this.§5!3§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§5!3§ = param1;
      }
      
      public function §-"x§() : Boolean
      {
         return this.§6#6§.§-"x§() && this.§]#j§.§-"x§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §"'§() : void
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
