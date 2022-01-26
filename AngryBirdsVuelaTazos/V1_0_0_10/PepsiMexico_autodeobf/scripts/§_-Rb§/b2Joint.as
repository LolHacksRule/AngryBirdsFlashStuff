package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-w2§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-oA§:int = 2;
      
      b2internal static const §_-Uo§:int = 3;
      
      b2internal static const §_-WJ§:int = 4;
      
      b2internal static const §_-fD§:int = 5;
      
      b2internal static const §_-hI§:int = 6;
      
      b2internal static const §_-WK§:int = 7;
      
      b2internal static const §_-pW§:int = 8;
      
      b2internal static const §_-1u§:int = 9;
      
      b2internal static const native:int = 0;
      
      b2internal static const §_-nw§:int = 1;
      
      b2internal static const §_-WR§:int = 2;
      
      b2internal static const §_-dd§:int = 3;
       
      
      b2internal var §_-K9§:int;
      
      b2internal var §_-M9§:b2Joint;
      
      b2internal var §_-AX§:b2Joint;
      
      b2internal var §_-O4§:b2JointEdge;
      
      b2internal var §_-dj§:b2JointEdge;
      
      b2internal var §_-Rz§:b2Body;
      
      b2internal var §_-GP§:b2Body;
      
      b2internal var §_-pp§:Boolean;
      
      b2internal var §_-b-§:Boolean;
      
      private var §_-cT§;
      
      b2internal var §_-32§:b2Vec2;
      
      b2internal var §_-Of§:b2Vec2;
      
      b2internal var §_-UK§:Number;
      
      b2internal var §_-qn§:Number;
      
      b2internal var §_-J7§:Number;
      
      b2internal var §_-Fq§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-O4§ = new b2JointEdge();
         this.§_-dj§ = new b2JointEdge();
         this.§_-32§ = new b2Vec2();
         this.§_-Of§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-Ay§ != param1.§_-vo§);
         this.§_-K9§ = param1.type;
         this.§_-M9§ = null;
         this.§_-AX§ = null;
         this.§_-Rz§ = param1.§_-Ay§;
         this.§_-GP§ = param1.§_-vo§;
         this.§_-b-§ = param1.collideConnected;
         this.§_-pp§ = false;
         this.§_-cT§ = param1.§_-QX§;
      }
      
      b2internal static function §_-i-§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-Uo:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-fD:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-oA:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-WJ:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-hI:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-WK:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-pW:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-1u:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-1m§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-Iy§() : int
      {
         return this.§_-K9§;
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
      
      public function §_-ut§() : b2Body
      {
         return this.§_-Rz§;
      }
      
      public function §_-ir§() : b2Body
      {
         return this.§_-GP§;
      }
      
      public function §_-mR§() : b2Joint
      {
         return this.§_-AX§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-cT§;
      }
      
      public function §_-mK§(param1:*) : void
      {
         this.§_-cT§ = param1;
      }
      
      public function §_-2Y§() : Boolean
      {
         return this.§_-Rz§.§_-2Y§() && this.§_-GP§.§_-2Y§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-u4§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
