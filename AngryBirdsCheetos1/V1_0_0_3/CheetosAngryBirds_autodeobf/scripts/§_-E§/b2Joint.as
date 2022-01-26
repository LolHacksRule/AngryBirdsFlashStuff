package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-da§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-r2§:int = 2;
      
      b2internal static const §_-ew§:int = 3;
      
      b2internal static const §_-j2§:int = 4;
      
      b2internal static const §_-2m§:int = 5;
      
      b2internal static const §_-b8§:int = 6;
      
      b2internal static const §_-09§:int = 7;
      
      b2internal static const §_-7C§:int = 8;
      
      b2internal static const §_-zD§:int = 9;
      
      b2internal static const §_-S8§:int = 0;
      
      b2internal static const §_-t2§:int = 1;
      
      b2internal static const §_-v7§:int = 2;
      
      b2internal static const §_-wp§:int = 3;
       
      
      b2internal var §_-Kg§:int;
      
      b2internal var §_-u6§:b2Joint;
      
      b2internal var §_-E1§:b2Joint;
      
      b2internal var §_-5h§:b2JointEdge;
      
      b2internal var §_-Hk§:b2JointEdge;
      
      b2internal var §_-oB§:b2Body;
      
      b2internal var §_-52§:b2Body;
      
      b2internal var §_-JK§:Boolean;
      
      b2internal var §_-J-§:Boolean;
      
      private var §_-uF§;
      
      b2internal var § else§:b2Vec2;
      
      b2internal var §_-Wm§:b2Vec2;
      
      b2internal var §_-M8§:Number;
      
      b2internal var §_-pU§:Number;
      
      b2internal var §_-Fp§:Number;
      
      b2internal var §_-Gb§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-5h§ = new b2JointEdge();
         this.§_-Hk§ = new b2JointEdge();
         this.§ else§ = new b2Vec2();
         this.§_-Wm§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-c7§ != param1.§_-60§);
         this.§_-Kg§ = param1.type;
         this.§_-u6§ = null;
         this.§_-E1§ = null;
         this.§_-oB§ = param1.§_-c7§;
         this.§_-52§ = param1.§_-60§;
         this.§_-J-§ = param1.collideConnected;
         this.§_-JK§ = false;
         this.§_-uF§ = param1.§_-FA§;
      }
      
      b2internal static function §null §(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-ew:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-2m:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-r2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-j2:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-b8:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-09:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-7C:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-zD:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-TB§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-n§() : int
      {
         return this.§_-Kg§;
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
      
      public function §_-AM§() : b2Body
      {
         return this.§_-oB§;
      }
      
      public function §_-oE§() : b2Body
      {
         return this.§_-52§;
      }
      
      public function §_-si§() : b2Joint
      {
         return this.§_-E1§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-uF§;
      }
      
      public function §_-aa§(param1:*) : void
      {
         this.§_-uF§ = param1;
      }
      
      public function §_-Uh§() : Boolean
      {
         return this.§_-oB§.§_-Uh§() && this.§_-52§.§_-Uh§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-h§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
