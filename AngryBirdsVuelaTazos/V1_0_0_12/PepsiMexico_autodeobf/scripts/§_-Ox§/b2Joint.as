package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-9h§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-x6§:int = 2;
      
      b2internal static const §_-Eu§:int = 3;
      
      b2internal static const §_-5X§:int = 4;
      
      b2internal static const §_-DQ§:int = 5;
      
      b2internal static const §_-4M§:int = 6;
      
      b2internal static const §_-dE§:int = 7;
      
      b2internal static const §_-Q§:int = 8;
      
      b2internal static const §_-ZC§:int = 9;
      
      b2internal static const §_-R1§:int = 0;
      
      b2internal static const §_-Pp§:int = 1;
      
      b2internal static const §_-HL§:int = 2;
      
      b2internal static const §_-FL§:int = 3;
       
      
      b2internal var §_-g1§:int;
      
      b2internal var §_-3w§:b2Joint;
      
      b2internal var §_-GH§:b2Joint;
      
      b2internal var §_-8Z§:b2JointEdge;
      
      b2internal var §_-2G§:b2JointEdge;
      
      b2internal var §_-e4§:b2Body;
      
      b2internal var §_-qA§:b2Body;
      
      b2internal var §_-ly§:Boolean;
      
      b2internal var §_-Sh§:Boolean;
      
      private var §_-t4§;
      
      b2internal var §_-38§:b2Vec2;
      
      b2internal var §_-Bu§:b2Vec2;
      
      b2internal var §_-Zi§:Number;
      
      b2internal var §_-c2§:Number;
      
      b2internal var §_-Ay§:Number;
      
      b2internal var §_-it§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-8Z§ = new b2JointEdge();
         this.§_-2G§ = new b2JointEdge();
         this.§_-38§ = new b2Vec2();
         this.§_-Bu§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-lk§ != param1.§_-OV§);
         this.§_-g1§ = param1.type;
         this.§_-3w§ = null;
         this.§_-GH§ = null;
         this.§_-e4§ = param1.§_-lk§;
         this.§_-qA§ = param1.§_-OV§;
         this.§_-Sh§ = param1.collideConnected;
         this.§_-ly§ = false;
         this.§_-t4§ = param1.§_-ZT§;
      }
      
      b2internal static function §_-1Z§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-Eu:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-DQ:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-x6:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-5X:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-4M:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-dE:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-Q:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-ZC:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §else§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-7L§() : int
      {
         return this.§_-g1§;
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
      
      public function §_-Kk§() : b2Body
      {
         return this.§_-e4§;
      }
      
      public function §_-pc§() : b2Body
      {
         return this.§_-qA§;
      }
      
      public function §_-nc§() : b2Joint
      {
         return this.§_-GH§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-t4§;
      }
      
      public function §_-wK§(param1:*) : void
      {
         this.§_-t4§ = param1;
      }
      
      public function §_-YL§() : Boolean
      {
         return this.§_-e4§.§_-YL§() && this.§_-qA§.§_-YL§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-ro§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
