package §_-E§
{
   import §_-00B§.b2Body;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-tM§:b2Vec2;
      
      public var §_-k5§:b2Vec2;
      
      public var §_-4N§:b2Vec2;
      
      public var §_-nR§:b2Vec2;
      
      public var §_-jx§:Number;
      
      public var §_-DF§:Number;
      
      public var §_-Fn§:Number;
      
      public var §_-03§:Number;
      
      public var §_-I9§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-tM§ = new b2Vec2();
         this.§_-k5§ = new b2Vec2();
         this.§_-4N§ = new b2Vec2();
         this.§_-nR§ = new b2Vec2();
         super();
         type = b2Joint.§_-j2§;
         this.§_-tM§.Set(-1,1);
         this.§_-k5§.Set(1,1);
         this.§_-4N§.Set(-1,0);
         this.§_-nR§.Set(1,0);
         this.§_-jx§ = 0;
         this.§_-DF§ = 0;
         this.§_-Fn§ = 0;
         this.§_-03§ = 0;
         this.§_-I9§ = 1;
         collideConnected = true;
      }
      
      public function §_-yN§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-c7§ = param1;
         §_-60§ = param2;
         this.§_-tM§.SetV(param3);
         this.§_-k5§.SetV(param4);
         this.§_-4N§ = §_-c7§.GetLocalPoint(param5);
         this.§_-nR§ = §_-60§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-jx§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-Fn§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-I9§ = param7;
         var _loc12_:Number = this.§_-jx§ + this.§_-I9§ * this.§_-Fn§;
         this.§_-DF§ = _loc12_ - this.§_-I9§ * b2PulleyJoint.§_-Pg§;
         this.§_-03§ = (_loc12_ - b2PulleyJoint.§_-Pg§) / this.§_-I9§;
      }
   }
}
