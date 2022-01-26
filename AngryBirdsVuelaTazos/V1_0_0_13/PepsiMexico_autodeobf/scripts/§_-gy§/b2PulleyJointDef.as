package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-p2§:b2Vec2;
      
      public var §_-W-§:b2Vec2;
      
      public var §_-3r§:b2Vec2;
      
      public var §_-sR§:b2Vec2;
      
      public var §_-AK§:Number;
      
      public var §_-ne§:Number;
      
      public var §_-3E§:Number;
      
      public var §_-8J§:Number;
      
      public var §_-DX§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-p2§ = new b2Vec2();
         this.§_-W-§ = new b2Vec2();
         this.§_-3r§ = new b2Vec2();
         this.§_-sR§ = new b2Vec2();
         super();
         type = b2Joint.§_-0P§;
         this.§_-p2§.Set(-1,1);
         this.§_-W-§.Set(1,1);
         this.§_-3r§.Set(-1,0);
         this.§_-sR§.Set(1,0);
         this.§_-AK§ = 0;
         this.§_-ne§ = 0;
         this.§_-3E§ = 0;
         this.§_-8J§ = 0;
         this.§_-DX§ = 1;
         collideConnected = true;
      }
      
      public function §_-PU§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-cw§ = param1;
         §_-U9§ = param2;
         this.§_-p2§.SetV(param3);
         this.§_-W-§.SetV(param4);
         this.§_-3r§ = §_-cw§.GetLocalPoint(param5);
         this.§_-sR§ = §_-U9§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-AK§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-3E§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-DX§ = param7;
         var _loc12_:Number = this.§_-AK§ + this.§_-DX§ * this.§_-3E§;
         this.§_-ne§ = _loc12_ - this.§_-DX§ * b2PulleyJoint.§_-Xt§;
         this.§_-8J§ = (_loc12_ - b2PulleyJoint.§_-Xt§) / this.§_-DX§;
      }
   }
}
