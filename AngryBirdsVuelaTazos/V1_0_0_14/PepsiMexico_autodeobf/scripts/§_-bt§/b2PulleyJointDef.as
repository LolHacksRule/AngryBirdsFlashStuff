package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-hD§:b2Vec2;
      
      public var §_-hx§:b2Vec2;
      
      public var §_-5O§:b2Vec2;
      
      public var §_-q3§:b2Vec2;
      
      public var §_-jE§:Number;
      
      public var §_-nC§:Number;
      
      public var §_-x§:Number;
      
      public var §_-l1§:Number;
      
      public var §_-Mp§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-hD§ = new b2Vec2();
         this.§_-hx§ = new b2Vec2();
         this.§_-5O§ = new b2Vec2();
         this.§_-q3§ = new b2Vec2();
         super();
         type = b2Joint.§_-sU§;
         this.§_-hD§.Set(-1,1);
         this.§_-hx§.Set(1,1);
         this.§_-5O§.Set(-1,0);
         this.§_-q3§.Set(1,0);
         this.§_-jE§ = 0;
         this.§_-nC§ = 0;
         this.§_-x§ = 0;
         this.§_-l1§ = 0;
         this.§_-Mp§ = 1;
         collideConnected = true;
      }
      
      public function §_-Vy§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-pV§ = param1;
         §_-3o§ = param2;
         this.§_-hD§.SetV(param3);
         this.§_-hx§.SetV(param4);
         this.§_-5O§ = §_-pV§.GetLocalPoint(param5);
         this.§_-q3§ = §_-3o§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-jE§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-x§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-Mp§ = param7;
         var _loc12_:Number = this.§_-jE§ + this.§_-Mp§ * this.§_-x§;
         this.§_-nC§ = _loc12_ - this.§_-Mp§ * b2PulleyJoint.§_-jw§;
         this.§_-l1§ = (_loc12_ - b2PulleyJoint.§_-jw§) / this.§_-Mp§;
      }
   }
}
