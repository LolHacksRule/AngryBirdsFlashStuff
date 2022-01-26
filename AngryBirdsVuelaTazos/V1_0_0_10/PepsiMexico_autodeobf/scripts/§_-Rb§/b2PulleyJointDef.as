package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-sS§:b2Vec2;
      
      public var §_-sy§:b2Vec2;
      
      public var §_-24§:b2Vec2;
      
      public var §_-2Z§:b2Vec2;
      
      public var §_-aC§:Number;
      
      public var §_-G7§:Number;
      
      public var §_-8Q§:Number;
      
      public var §_-NH§:Number;
      
      public var §_-u5§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-sS§ = new b2Vec2();
         this.§_-sy§ = new b2Vec2();
         this.§_-24§ = new b2Vec2();
         this.§_-2Z§ = new b2Vec2();
         super();
         type = b2Joint.§_-WJ§;
         this.§_-sS§.Set(-1,1);
         this.§_-sy§.Set(1,1);
         this.§_-24§.Set(-1,0);
         this.§_-2Z§.Set(1,0);
         this.§_-aC§ = 0;
         this.§_-G7§ = 0;
         this.§_-8Q§ = 0;
         this.§_-NH§ = 0;
         this.§_-u5§ = 1;
         collideConnected = true;
      }
      
      public function §_-E0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-Ay§ = param1;
         §_-vo§ = param2;
         this.§_-sS§.SetV(param3);
         this.§_-sy§.SetV(param4);
         this.§_-24§ = §_-Ay§.GetLocalPoint(param5);
         this.§_-2Z§ = §_-vo§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-aC§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-8Q§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-u5§ = param7;
         var _loc12_:Number = this.§_-aC§ + this.§_-u5§ * this.§_-8Q§;
         this.§_-G7§ = _loc12_ - this.§_-u5§ * b2PulleyJoint.§_-pa§;
         this.§_-NH§ = (_loc12_ - b2PulleyJoint.§_-pa§) / this.§_-u5§;
      }
   }
}
