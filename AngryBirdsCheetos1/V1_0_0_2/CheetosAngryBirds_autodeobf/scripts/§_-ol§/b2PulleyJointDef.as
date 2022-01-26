package §_-ol§
{
   import §_-43§.b2Body;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-XB§:b2Vec2;
      
      public var §_-Q1§:b2Vec2;
      
      public var §_-lj§:b2Vec2;
      
      public var §_-zW§:b2Vec2;
      
      public var §_-5e§:Number;
      
      public var §_-kE§:Number;
      
      public var §_-yg§:Number;
      
      public var §_-nU§:Number;
      
      public var §_-LA§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-XB§ = new b2Vec2();
         this.§_-Q1§ = new b2Vec2();
         this.§_-lj§ = new b2Vec2();
         this.§_-zW§ = new b2Vec2();
         super();
         type = b2Joint.§_-9C§;
         this.§_-XB§.Set(-1,1);
         this.§_-Q1§.Set(1,1);
         this.§_-lj§.Set(-1,0);
         this.§_-zW§.Set(1,0);
         this.§_-5e§ = 0;
         this.§_-kE§ = 0;
         this.§_-yg§ = 0;
         this.§_-nU§ = 0;
         this.§_-LA§ = 1;
         collideConnected = true;
      }
      
      public function §_-M0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-4f§ = param1;
         §_-FU§ = param2;
         this.§_-XB§.SetV(param3);
         this.§_-Q1§.SetV(param4);
         this.§_-lj§ = §_-4f§.GetLocalPoint(param5);
         this.§_-zW§ = §_-FU§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-5e§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-yg§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-LA§ = param7;
         var _loc12_:Number = this.§_-5e§ + this.§_-LA§ * this.§_-yg§;
         this.§_-kE§ = _loc12_ - this.§_-LA§ * b2PulleyJoint.§_-aQ§;
         this.§_-nU§ = (_loc12_ - b2PulleyJoint.§_-aQ§) / this.§_-LA§;
      }
   }
}
