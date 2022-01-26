package §_-gy§
{
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2TimeStep;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-lD§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-G2§:int = 2;
      
      b2internal static const §_-SL§:int = 3;
      
      b2internal static const §_-0P§:int = 4;
      
      b2internal static const §_-2P§:int = 5;
      
      b2internal static const §_-LJ§:int = 6;
      
      b2internal static const §_-jT§:int = 7;
      
      b2internal static const §_-eU§:int = 8;
      
      b2internal static const §_-N4§:int = 9;
      
      b2internal static const §_-9a§:int = 0;
      
      b2internal static const §_-R7§:int = 1;
      
      b2internal static const §_-v4§:int = 2;
      
      b2internal static const §_-Lt§:int = 3;
       
      
      b2internal var §_-64§:int;
      
      b2internal var §_-ft§:b2Joint;
      
      b2internal var §_-4b§:b2Joint;
      
      b2internal var §_-RI§:b2JointEdge;
      
      b2internal var §_-8O§:b2JointEdge;
      
      b2internal var §_-do§:b2Body;
      
      b2internal var §_-Zw§:b2Body;
      
      b2internal var §_-iW§:Boolean;
      
      b2internal var §_-7I§:Boolean;
      
      private var §_-AC§;
      
      b2internal var §_-yp§:b2Vec2;
      
      b2internal var §_-Ze§:b2Vec2;
      
      b2internal var §_-r5§:Number;
      
      b2internal var §_-OX§:Number;
      
      b2internal var §_-Y5§:Number;
      
      b2internal var §_-Xk§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         this.§_-RI§ = new b2JointEdge();
         this.§_-8O§ = new b2JointEdge();
         this.§_-yp§ = new b2Vec2();
         this.§_-Ze§ = new b2Vec2();
         super();
         b2Settings.b2Assert(param1.§_-cw§ != param1.§_-U9§);
         this.§_-64§ = param1.type;
         this.§_-ft§ = null;
         this.§_-4b§ = null;
         this.§_-do§ = param1.§_-cw§;
         this.§_-Zw§ = param1.§_-U9§;
         this.§_-7I§ = param1.collideConnected;
         this.§_-iW§ = false;
         this.§_-AC§ = param1.§_-mx§;
      }
      
      b2internal static function §_-0K§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_-SL:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_-2P:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_-G2:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::e_revoluteJoint:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_-0P:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_-LJ:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_-jT:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_-eU:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_-N4:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function §_-l6§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-kK§() : int
      {
         return this.§_-64§;
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
      
      public function set() : b2Body
      {
         return this.§_-do§;
      }
      
      public function §_-c1§() : b2Body
      {
         return this.§_-Zw§;
      }
      
      public function §_-lA§() : b2Joint
      {
         return this.§_-4b§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-AC§;
      }
      
      public function §_-WN§(param1:*) : void
      {
         this.§_-AC§ = param1;
      }
      
      public function §_-O8§() : Boolean
      {
         return this.§_-do§.§_-O8§() && this.§_-Zw§.§_-O8§();
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-3f§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
