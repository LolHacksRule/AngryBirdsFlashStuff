package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-0-2§:b2Vec2;
      
      public var each:b2Vec2;
      
      public var §_-Vd§:b2Vec2;
      
      public var §_-j3§:b2Vec2;
      
      public var §_-AQ§:Number;
      
      public var §throw§:Number;
      
      public var §_-tu§:Number;
      
      public var §_-ct§:Number;
      
      public var §_-6d§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-0-2§ = new b2Vec2();
         this.each = new b2Vec2();
         this.§_-Vd§ = new b2Vec2();
         this.§_-j3§ = new b2Vec2();
         super();
         type = b2Joint.§_-a8§;
         this.§_-0-2§.Set(-1,1);
         this.each.Set(1,1);
         this.§_-Vd§.Set(-1,0);
         this.§_-j3§.Set(1,0);
         this.§_-AQ§ = 0;
         this.§throw§ = 0;
         this.§_-tu§ = 0;
         this.§_-ct§ = 0;
         this.§_-6d§ = 1;
         collideConnected = true;
      }
      
      public function §_-Qz§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-6a§ = param1;
         §_-95§ = param2;
         this.§_-0-2§.SetV(param3);
         this.each.SetV(param4);
         this.§_-Vd§ = §_-6a§.GetLocalPoint(param5);
         this.§_-j3§ = §_-95§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-AQ§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-tu§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-6d§ = param7;
         var _loc12_:Number = this.§_-AQ§ + this.§_-6d§ * this.§_-tu§;
         this.§throw§ = _loc12_ - this.§_-6d§ * b2PulleyJoint.§_-xd§;
         this.§_-ct§ = (_loc12_ - b2PulleyJoint.§_-xd§) / this.§_-6d§;
      }
   }
}
