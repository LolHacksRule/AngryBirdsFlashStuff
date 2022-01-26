package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-MX§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §use §:int = 2;
      
      b2internal static const §_-bG§:int = 3;
      
      b2internal static const §_-9C§:int = 4;
      
      b2internal static const §_-9P§:int = 5;
      
      b2internal static const §_-O6§:int = 6;
      
      b2internal static const §_-WY§:int = 7;
      
      b2internal static const §_-8V§:int = 8;
      
      b2internal static const §_-z1§:int = 9;
      
      b2internal static const §_-J1§:int = 0;
      
      b2internal static const §_-2p§:int = 1;
      
      b2internal static const §_-3g§:int = 2;
      
      b2internal static const §_-4Q§:int = 3;
       
      
      b2internal var §_-zO§:int;
      
      b2internal var §_-Nc§:b2Joint;
      
      b2internal var §_-4N§:b2Joint;
      
      b2internal var §_-d§:b2JointEdge;
      
      b2internal var §_-Xy§:b2JointEdge;
      
      b2internal var §_-Fj§:b2Body;
      
      b2internal var §_-eo§:b2Body;
      
      b2internal var §_-0W§:Boolean;
      
      b2internal var §_-sT§:Boolean;
      
      private var §_-Kp§;
      
      b2internal var §_-zS§:b2Vec2;
      
      b2internal var §_-tT§:b2Vec2;
      
      b2internal var §_-y9§:Number;
      
      b2internal var §_-dJ§:Number;
      
      b2internal var §_-Yh§:Number;
      
      b2internal var §_-ae§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-d§ = new b2JointEdge();
         this.§_-Xy§ = new b2JointEdge();
         this.§_-zS§ = new b2Vec2();
         this.§_-tT§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-4f§ != param1.§_-FU§);
         this.§_-zO§ = param1.type;
         this.§_-Nc§ = null;
         this.§_-4N§ = null;
         this.§_-Fj§ = param1.§_-4f§;
         this.§_-eo§ = param1.§_-FU§;
         this.§_-sT§ = param1.collideConnected;
         this.§_-0W§ = false;
         this.§_-Kp§ = param1.§_-eL§;
      }
      
      b2internal static function §_-6l§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-bG:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-9P:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::use :
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-9C:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-O6:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-WY:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-8V:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-z1:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-TI§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-cT§() : int
      {
         return this.§_-zO§;
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
      
      public function §_-3M§() : b2Body
      {
         return this.§_-Fj§;
      }
      
      public function §_-Ki§() : b2Body
      {
         return this.§_-eo§;
      }
      
      public function §_-4A§() : b2Joint
      {
         return this.§_-4N§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-Kp§;
      }
      
      public function §_-CM§(param1:*) : void
      {
         this.§_-Kp§ = param1;
      }
      
      public function §_-Au§() : Boolean
      {
         return this.§_-Fj§.§_-Au§() && this.§_-eo§.§_-Au§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-pl§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
