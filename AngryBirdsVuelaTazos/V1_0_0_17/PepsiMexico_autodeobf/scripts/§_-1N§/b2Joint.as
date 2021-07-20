package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-wc§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-bx§:int = 2;
      
      b2internal static const §_-wG§:int = 3;
      
      b2internal static const §_-45§:int = 4;
      
      b2internal static const §_-5H§:int = 5;
      
      b2internal static const §const§:int = 6;
      
      b2internal static const §_-7U§:int = 7;
      
      b2internal static const §_-B0§:int = 8;
      
      b2internal static const §_-oH§:int = 9;
      
      b2internal static const §_-vv§:int = 0;
      
      b2internal static const §_-oP§:int = 1;
      
      b2internal static const §_-Hv§:int = 2;
      
      b2internal static const §_-j9§:int = 3;
       
      
      b2internal var §_-Sj§:int;
      
      b2internal var §_-VL§:b2Joint;
      
      b2internal var §_-NA§:b2Joint;
      
      b2internal var §_-jw§:b2JointEdge;
      
      b2internal var §_-7k§:b2JointEdge;
      
      b2internal var §_-93§:b2Body;
      
      b2internal var §_-9K§:b2Body;
      
      b2internal var §_-j§:Boolean;
      
      b2internal var §_-Ef§:Boolean;
      
      private var §_-OB§;
      
      b2internal var §_-Sc§:b2Vec2;
      
      b2internal var §_-jk§:b2Vec2;
      
      b2internal var §_-k9§:Number;
      
      b2internal var §_-s8§:Number;
      
      b2internal var §_-kg§:Number;
      
      b2internal var §_-GH§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-jw§ = new b2JointEdge();
         this.§_-7k§ = new b2JointEdge();
         this.§_-Sc§ = new b2Vec2();
         this.§_-jk§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-dL§ != param1.§_-h1§);
         this.§_-Sj§ = param1.type;
         this.§_-VL§ = null;
         this.§_-NA§ = null;
         this.§_-93§ = param1.§_-dL§;
         this.§_-9K§ = param1.§_-h1§;
         this.§_-Ef§ = param1.collideConnected;
         this.§_-j§ = false;
         this.§_-OB§ = param1.§_-Vb§;
      }
      
      b2internal static function §_-xO§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-wG:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-5H:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-bx:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-45:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::const:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-7U:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-B0:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-oH:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-2A§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-ww§() : int
      {
         return this.§_-Sj§;
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
      
      public function §_-kE§() : b2Body
      {
         return this.§_-93§;
      }
      
      public function §_-Pl§() : b2Body
      {
         return this.§_-9K§;
      }
      
      public function §_-tx§() : b2Joint
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         this.§_-OB§ = param1;
      }
      
      public function §_-w4§() : Boolean
      {
         return this.§_-93§.§_-w4§() && this.§_-9K§.§_-w4§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-qd§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
