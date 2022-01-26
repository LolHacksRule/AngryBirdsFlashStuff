package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-hP§:b2Vec2;
      
      public var §_-Mn§:b2Vec2;
      
      public var §_-7E§:b2Vec2;
      
      public var §_-ID§:b2Vec2;
      
      public var §_-b7§:Number;
      
      public var §_-nF§:Number;
      
      public var §_-Ir§:Number;
      
      public var §_-p2§:Number;
      
      public var §_-SD§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-hP§ = new b2Vec2();
         this.§_-Mn§ = new b2Vec2();
         this.§_-7E§ = new b2Vec2();
         this.§_-ID§ = new b2Vec2();
         super();
         type = b2Joint.§_-5X§;
         this.§_-hP§.Set(-1,1);
         this.§_-Mn§.Set(1,1);
         this.§_-7E§.Set(-1,0);
         this.§_-ID§.Set(1,0);
         this.§_-b7§ = 0;
         this.§_-nF§ = 0;
         this.§_-Ir§ = 0;
         this.§_-p2§ = 0;
         this.§_-SD§ = 1;
         collideConnected = true;
      }
      
      public function §_-fn§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-lk§ = param1;
         §_-OV§ = param2;
         this.§_-hP§.SetV(param3);
         this.§_-Mn§.SetV(param4);
         this.§_-7E§ = §_-lk§.GetLocalPoint(param5);
         this.§_-ID§ = §_-OV§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-b7§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-Ir§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-SD§ = param7;
         var _loc12_:Number = this.§_-b7§ + this.§_-SD§ * this.§_-Ir§;
         this.§_-nF§ = _loc12_ - this.§_-SD§ * b2PulleyJoint.§_-V-§;
         this.§_-p2§ = (_loc12_ - b2PulleyJoint.§_-V-§) / this.§_-SD§;
      }
   }
}
