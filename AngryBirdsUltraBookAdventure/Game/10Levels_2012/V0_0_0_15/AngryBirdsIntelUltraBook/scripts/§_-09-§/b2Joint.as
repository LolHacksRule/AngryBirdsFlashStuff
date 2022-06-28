package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-fY§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-CL§:int = 2;
      
      b2internal static const §_-Mk§:int = 3;
      
      b2internal static const §_-kH§:int = 4;
      
      b2internal static const §_-w§:int = 5;
      
      b2internal static const §_-eV§:int = 6;
      
      b2internal static const §_-z6§:int = 7;
      
      b2internal static const §_-0A2§:int = 8;
      
      b2internal static const §_-o4§:int = 9;
      
      b2internal static const §_-019§:int = 0;
      
      b2internal static const §_-D3§:int = 1;
      
      b2internal static const §_-Z5§:int = 2;
      
      b2internal static const §_-z3§:int = 3;
       
      
      b2internal var §_-1c§:int;
      
      b2internal var §_-021§:b2Joint;
      
      b2internal var §_-oz§:b2Joint;
      
      b2internal var §_-b3§:b2JointEdge;
      
      b2internal var §_-0DP§:b2JointEdge;
      
      b2internal var §_-0FB§:b2Body;
      
      b2internal var §_-c9§:b2Body;
      
      b2internal var §_-GX§:Boolean;
      
      b2internal var §_-vY§:Boolean;
      
      private var §_-oP§;
      
      b2internal var §_-2i§:b2Vec2;
      
      b2internal var §_-iQ§:b2Vec2;
      
      b2internal var §_-04l§:Number;
      
      b2internal var §_-cW§:Number;
      
      b2internal var §_-gk§:Number;
      
      b2internal var §_-at§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-b3§ = new b2JointEdge();
         this.§_-0DP§ = new b2JointEdge();
         this.§_-2i§ = new b2Vec2();
         this.§_-iQ§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-ZR§ != param1.§_-7b§);
         this.§_-1c§ = param1.type;
         this.§_-021§ = null;
         this.§_-oz§ = null;
         this.§_-0FB§ = param1.§_-ZR§;
         this.§_-c9§ = param1.§_-7b§;
         this.§_-vY§ = param1.collideConnected;
         this.§_-GX§ = false;
         this.§_-oP§ = param1.§_-05u§;
      }
      
      b2internal static function §_-xb§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-Mk:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-w:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-CL:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-kH:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-eV:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-z6:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-0A2:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-o4:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-01§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-oF§() : int
      {
         return this.§_-1c§;
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
      
      public function §_-00L§() : b2Body
      {
         return this.§_-0FB§;
      }
      
      public function §_-03D§() : b2Body
      {
         return this.§_-c9§;
      }
      
      public function §_-02g§() : b2Joint
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         this.§_-oP§ = param1;
      }
      
      public function §_-04Z§() : Boolean
      {
         return this.§_-0FB§.§_-04Z§() && this.§_-c9§.§_-04Z§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-dm§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
