package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-rJ§:b2Vec2;
      
      public var §_-f-§:b2Vec2;
      
      public var §_-Ys§:b2Vec2;
      
      public var §_-8p§:b2Vec2;
      
      public var §_-HI§:Number;
      
      public var §_-aL§:Number;
      
      public var §_-vC§:Number;
      
      public var §_-Wt§:Number;
      
      public var §_-An§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-rJ§ = new b2Vec2();
         this.§_-f-§ = new b2Vec2();
         this.§_-Ys§ = new b2Vec2();
         this.§_-8p§ = new b2Vec2();
         super();
         type = b2Joint.§_-e3§;
         this.§_-rJ§.Set(-1,1);
         this.§_-f-§.Set(1,1);
         this.§_-Ys§.Set(-1,0);
         this.§_-8p§.Set(1,0);
         this.§_-HI§ = 0;
         this.§_-aL§ = 0;
         this.§_-vC§ = 0;
         this.§_-Wt§ = 0;
         this.§_-An§ = 1;
         collideConnected = true;
      }
      
      public function §_-95§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-wE§ = param1;
         §_-3J§ = param2;
         this.§_-rJ§.SetV(param3);
         this.§_-f-§.SetV(param4);
         this.§_-Ys§ = §_-wE§.GetLocalPoint(param5);
         this.§_-8p§ = §_-3J§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-HI§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-vC§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-An§ = param7;
         var _loc12_:Number = this.§_-HI§ + this.§_-An§ * this.§_-vC§;
         this.§_-aL§ = _loc12_ - this.§_-An§ * b2PulleyJoint.§_-S9§;
         this.§_-Wt§ = (_loc12_ - b2PulleyJoint.§_-S9§) / this.§_-An§;
      }
   }
}
