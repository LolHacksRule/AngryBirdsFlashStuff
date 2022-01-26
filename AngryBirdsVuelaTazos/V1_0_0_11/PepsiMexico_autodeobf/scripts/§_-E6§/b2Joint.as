package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-Gm§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-pW§:int = 2;
      
      b2internal static const §_-e9§:int = 3;
      
      b2internal static const §_-fP§:int = 4;
      
      b2internal static const §_-r9§:int = 5;
      
      b2internal static const §_-6C§:int = 6;
      
      b2internal static const §_-0p§:int = 7;
      
      b2internal static const §_-Bx§:int = 8;
      
      b2internal static const §_-47§:int = 9;
      
      b2internal static const §_-H9§:int = 0;
      
      b2internal static const §_-lg§:int = 1;
      
      b2internal static const §_-pq§:int = 2;
      
      b2internal static const §extends§:int = 3;
       
      
      b2internal var §_-9f§:int;
      
      b2internal var §_-mb§:b2Joint;
      
      b2internal var §_-Lg§:b2Joint;
      
      b2internal var §_-wo§:b2JointEdge;
      
      b2internal var §_-SH§:b2JointEdge;
      
      b2internal var §_-t6§:b2Body;
      
      b2internal var §_-7f§:b2Body;
      
      b2internal var §_-53§:Boolean;
      
      b2internal var §_-3G§:Boolean;
      
      private var §_-3M§;
      
      b2internal var §_-mz§:b2Vec2;
      
      b2internal var §_-Op§:b2Vec2;
      
      b2internal var §_-lT§:Number;
      
      b2internal var §_-vb§:Number;
      
      b2internal var §_-lc§:Number;
      
      b2internal var §_-n0§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-wo§ = new b2JointEdge();
         this.§_-SH§ = new b2JointEdge();
         this.§_-mz§ = new b2Vec2();
         this.§_-Op§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-33§ != param1.§_-Pt§);
         this.§_-9f§ = param1.type;
         this.§_-mb§ = null;
         this.§_-Lg§ = null;
         this.§_-t6§ = param1.§_-33§;
         this.§_-7f§ = param1.§_-Pt§;
         this.§_-3G§ = param1.collideConnected;
         this.§_-53§ = false;
         this.§_-3M§ = param1.§_-5W§;
      }
      
      b2internal static function §_-JU§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-e9:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-r9:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-pW:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-fP:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-6C:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-0p:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-Bx:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-47:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-Hh§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-AY§() : int
      {
         return this.§_-9f§;
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
      
      public function §_-qv§() : b2Body
      {
         return this.§_-t6§;
      }
      
      public function §_-3h§() : b2Body
      {
         return this.§_-7f§;
      }
      
      public function §_-7P§() : b2Joint
      {
         return this.§_-Lg§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-3M§;
      }
      
      public function §_-t4§(param1:*) : void
      {
         this.§_-3M§ = param1;
      }
      
      public function §_-ml§() : Boolean
      {
         return this.§_-t6§.§_-ml§() && this.§_-7f§.§_-ml§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-qa§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
