package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-Vt§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-S-§:int = 2;
      
      b2internal static const §_-6G§:int = 3;
      
      b2internal static const §_-sU§:int = 4;
      
      b2internal static const §_-X7§:int = 5;
      
      b2internal static const §_-vU§:int = 6;
      
      b2internal static const §_-mY§:int = 7;
      
      b2internal static const §_-t7§:int = 8;
      
      b2internal static const §_-D8§:int = 9;
      
      b2internal static const §_-zJ§:int = 0;
      
      b2internal static const §_-Ep§:int = 1;
      
      b2internal static const §_-45§:int = 2;
      
      b2internal static const §_-5i§:int = 3;
       
      
      b2internal var §_-rI§:int;
      
      b2internal var §_-nr§:b2Joint;
      
      b2internal var §_-1k§:b2Joint;
      
      b2internal var §_-II§:b2JointEdge;
      
      b2internal var §_-17§:b2JointEdge;
      
      b2internal var §_-ba§:b2Body;
      
      b2internal var §_-pK§:b2Body;
      
      b2internal var §_-lR§:Boolean;
      
      b2internal var §_-mf§:Boolean;
      
      private var §_-7f§;
      
      b2internal var §_-C0§:b2Vec2;
      
      b2internal var §_-py§:b2Vec2;
      
      b2internal var §_-YG§:Number;
      
      b2internal var §_-VU§:Number;
      
      b2internal var §_-33§:Number;
      
      b2internal var §_-oP§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-II§ = new b2JointEdge();
         this.§_-17§ = new b2JointEdge();
         this.§_-C0§ = new b2Vec2();
         this.§_-py§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-pV§ != param1.§_-3o§);
         this.§_-rI§ = param1.type;
         this.§_-nr§ = null;
         this.§_-1k§ = null;
         this.§_-ba§ = param1.§_-pV§;
         this.§_-pK§ = param1.§_-3o§;
         this.§_-mf§ = param1.collideConnected;
         this.§_-lR§ = false;
         this.§_-7f§ = param1.§_-tW§;
      }
      
      b2internal static function §_-mA§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-6G:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-X7:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-S-:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-sU:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-vU:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-mY:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-t7:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-D8:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-T9§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-hZ§() : int
      {
         return this.§_-rI§;
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
      
      public function §_-kI§() : b2Body
      {
         return this.§_-ba§;
      }
      
      public function §do§() : b2Body
      {
         return this.§_-pK§;
      }
      
      public function §_-e4§() : b2Joint
      {
         return this.§_-1k§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-7f§;
      }
      
      public function §_-ii§(param1:*) : void
      {
         this.§_-7f§ = param1;
      }
      
      public function §_-07§() : Boolean
      {
         return this.§_-ba§.§_-07§() && this.§_-pK§.§_-07§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-4§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
