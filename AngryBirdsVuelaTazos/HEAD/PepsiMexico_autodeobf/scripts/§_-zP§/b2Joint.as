package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-m-§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-Ci§:int = 2;
      
      b2internal static const §_-rD§:int = 3;
      
      b2internal static const §_-e3§:int = 4;
      
      b2internal static const §_-qZ§:int = 5;
      
      b2internal static const §_-lL§:int = 6;
      
      b2internal static const §_-qf§:int = 7;
      
      b2internal static const §_-to§:int = 8;
      
      b2internal static const §_-eR§:int = 9;
      
      b2internal static const §_-bn§:int = 0;
      
      b2internal static const §_-3O§:int = 1;
      
      b2internal static const §_-3x§:int = 2;
      
      b2internal static const §_-SD§:int = 3;
       
      
      b2internal var §_-Ra§:int;
      
      b2internal var §_-Fg§:b2Joint;
      
      b2internal var §_-np§:b2Joint;
      
      b2internal var §_-0H§:b2JointEdge;
      
      b2internal var §_-6X§:b2JointEdge;
      
      b2internal var §_-Vj§:b2Body;
      
      b2internal var §_-qa§:b2Body;
      
      b2internal var §_-CQ§:Boolean;
      
      b2internal var §_-Pc§:Boolean;
      
      private var §_-84§;
      
      b2internal var §_-va§:b2Vec2;
      
      b2internal var §_-8n§:b2Vec2;
      
      b2internal var §_-DC§:Number;
      
      b2internal var §_-TG§:Number;
      
      b2internal var §_-NS§:Number;
      
      b2internal var §_-e§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-0H§ = new b2JointEdge();
         this.§_-6X§ = new b2JointEdge();
         this.§_-va§ = new b2Vec2();
         this.§_-8n§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-wE§ != param1.§_-3J§);
         this.§_-Ra§ = param1.type;
         this.§_-Fg§ = null;
         this.§_-np§ = null;
         this.§_-Vj§ = param1.§_-wE§;
         this.§_-qa§ = param1.§_-3J§;
         this.§_-Pc§ = param1.collideConnected;
         this.§_-CQ§ = false;
         this.§_-84§ = param1.§_-nF§;
      }
      
      b2internal static function §_-gE§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-rD:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-qZ:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-Ci:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-e3:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-lL:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-qf:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-to:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-eR:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-6A§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-Wx§() : int
      {
         return this.§_-Ra§;
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
      
      public function §_-tM§() : b2Body
      {
         return this.§_-Vj§;
      }
      
      public function §_-fu§() : b2Body
      {
         return this.§_-qa§;
      }
      
      public function §_-9Y§() : b2Joint
      {
         return this.§_-np§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-84§;
      }
      
      public function §_-EQ§(param1:*) : void
      {
         this.§_-84§ = param1;
      }
      
      public function §_-B7§() : Boolean
      {
         return this.§_-Vj§.§_-B7§() && this.§_-qa§.§_-B7§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-LO§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
