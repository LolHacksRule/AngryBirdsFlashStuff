package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-Z6§:b2Vec2;
      
      public var §_-qx§:b2Vec2;
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-i§:Number;
      
      public var §_-LT§:Number;
      
      public var §_-92§:Number;
      
      public var §_-Np§:Number;
      
      public var §_-0Bd§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-Z6§ = new b2Vec2();
         this.§_-qx§ = new b2Vec2();
         this.§_-F6§ = new b2Vec2();
         this.§_-0Bf§ = new b2Vec2();
         super();
         type = b2Joint.§_-kH§;
         this.§_-Z6§.Set(-1,1);
         this.§_-qx§.Set(1,1);
         this.§_-F6§.Set(-1,0);
         this.§_-0Bf§.Set(1,0);
         this.§_-i§ = 0;
         this.§_-LT§ = 0;
         this.§_-92§ = 0;
         this.§_-Np§ = 0;
         this.§_-0Bd§ = 1;
         collideConnected = true;
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-ZR§ = param1;
         §_-7b§ = param2;
         this.§_-Z6§.SetV(param3);
         this.§_-qx§.SetV(param4);
         this.§_-F6§ = §_-ZR§.GetLocalPoint(param5);
         this.§_-0Bf§ = §_-7b§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-i§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-92§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-0Bd§ = param7;
         var _loc12_:Number = this.§_-i§ + this.§_-0Bd§ * this.§_-92§;
         this.§_-LT§ = _loc12_ - this.§_-0Bd§ * b2PulleyJoint.§_-nC§;
         this.§_-Np§ = (_loc12_ - b2PulleyJoint.§_-nC§) / this.§_-0Bd§;
      }
   }
}
