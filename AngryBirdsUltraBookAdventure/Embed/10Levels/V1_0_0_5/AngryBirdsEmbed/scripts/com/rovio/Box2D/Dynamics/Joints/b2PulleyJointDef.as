package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var groundAnchorA:b2Vec2;
      
      public var groundAnchorB:b2Vec2;
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var lengthA:Number;
      
      public var maxLengthA:Number;
      
      public var lengthB:Number;
      
      public var maxLengthB:Number;
      
      public var ratio:Number;
      
      public function b2PulleyJointDef()
      {
         this.groundAnchorA = new b2Vec2();
         this.groundAnchorB = new b2Vec2();
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_pulleyJoint;
         this.groundAnchorA.Set(-1,1);
         this.groundAnchorB.Set(1,1);
         this.localAnchorA.Set(-1,0);
         this.localAnchorB.Set(1,0);
         this.lengthA = 0;
         this.maxLengthA = 0;
         this.lengthB = 0;
         this.maxLengthB = 0;
         this.ratio = 1;
         collideConnected = true;
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.groundAnchorA.SetV(param3);
         this.groundAnchorB.SetV(param4);
         this.localAnchorA = bodyA.GetLocalPoint(param5);
         this.localAnchorB = bodyB.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.lengthA = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.lengthB = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.ratio = param7;
         var _loc12_:Number = this.lengthA + this.ratio * this.lengthB;
         this.maxLengthA = _loc12_ - this.ratio * b2PulleyJoint.b2_minPulleyLength;
         this.maxLengthB = (_loc12_ - b2PulleyJoint.b2_minPulleyLength) / this.ratio;
      }
   }
}
