package §const§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-F1§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-gB§:int = 2;
      
      b2internal static const §_-hG§:int = 3;
      
      b2internal static const §_-a8§:int = 4;
      
      b2internal static const §_-Y5§:int = 5;
      
      b2internal static const §_-i6§:int = 6;
      
      b2internal static const §_-2H§:int = 7;
      
      b2internal static const §_-Zb§:int = 8;
      
      b2internal static const §_-BT§:int = 9;
      
      b2internal static const §_-Qy§:int = 0;
      
      b2internal static const §_-yU§:int = 1;
      
      b2internal static const §_-mY§:int = 2;
      
      b2internal static const get:int = 3;
       
      
      b2internal var §_-f7§:int;
      
      b2internal var §_-o2§:b2Joint;
      
      b2internal var §_-QK§:b2Joint;
      
      b2internal var §_-UP§:b2JointEdge;
      
      b2internal var §_-2q§:b2JointEdge;
      
      b2internal var §_-Jb§:b2Body;
      
      b2internal var §_-RO§:b2Body;
      
      b2internal var §_-a0§:Boolean;
      
      b2internal var §_-yj§:Boolean;
      
      private var §_-C3§;
      
      b2internal var §_-iO§:b2Vec2;
      
      b2internal var §_-Jr§:b2Vec2;
      
      b2internal var §_-Ma§:Number;
      
      b2internal var §_-cY§:Number;
      
      b2internal var §else §:Number;
      
      b2internal var §_-Bp§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-UP§ = new b2JointEdge();
         this.§_-2q§ = new b2JointEdge();
         this.§_-iO§ = new b2Vec2();
         this.§_-Jr§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-6a§ != param1.§_-95§);
         this.§_-f7§ = param1.type;
         this.§_-o2§ = null;
         this.§_-QK§ = null;
         this.§_-Jb§ = param1.§_-6a§;
         this.§_-RO§ = param1.§_-95§;
         this.§_-yj§ = param1.collideConnected;
         this.§_-a0§ = false;
         this.§_-C3§ = param1.§_-MJ§;
      }
      
      b2internal static function §_-JJ§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-hG:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-Y5:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-gB:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-a8:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-i6:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-2H:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-Zb:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-BT:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-y3§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-sl§() : int
      {
         return this.§_-f7§;
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
      
      public function §_-qJ§() : b2Body
      {
         return this.§_-Jb§;
      }
      
      public function §_-CS§() : b2Body
      {
         return this.§_-RO§;
      }
      
      public function §_-go§() : b2Joint
      {
         return this.§_-QK§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-C3§;
      }
      
      public function §_-N-§(param1:*) : void
      {
         this.§_-C3§ = param1;
      }
      
      public function §_-Bw§() : Boolean
      {
         return this.§_-Jb§.§_-Bw§() && this.§_-RO§.§_-Bw§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-cq§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
