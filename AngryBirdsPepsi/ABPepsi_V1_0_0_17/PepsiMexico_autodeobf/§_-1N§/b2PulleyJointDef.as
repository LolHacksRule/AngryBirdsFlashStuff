package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-v1§:b2Vec2;
      
      public var §_-xj§:b2Vec2;
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-gn§:Number;
      
      public var §_-47§:Number;
      
      public var §_-s6§:Number;
      
      public var §_-B8§:Number;
      
      public var §_-Qg§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-v1§ = new b2Vec2();
         this.§_-xj§ = new b2Vec2();
         this.§_-Kz§ = new b2Vec2();
         this.§_-Dq§ = new b2Vec2();
         super();
         type = b2Joint.§_-45§;
         this.§_-v1§.Set(-1,1);
         this.§_-xj§.Set(1,1);
         this.§_-Kz§.Set(-1,0);
         this.§_-Dq§.Set(1,0);
         this.§_-gn§ = 0;
         this.§_-47§ = 0;
         this.§_-s6§ = 0;
         this.§_-B8§ = 0;
         this.§_-Qg§ = 1;
         collideConnected = true;
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-v1§.SetV(param3);
         this.§_-xj§.SetV(param4);
         this.§_-Kz§ = §_-dL§.GetLocalPoint(param5);
         this.§_-Dq§ = §_-h1§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-gn§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-s6§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-Qg§ = param7;
         var _loc12_:Number = this.§_-gn§ + this.§_-Qg§ * this.§_-s6§;
         this.§_-47§ = _loc12_ - this.§_-Qg§ * b2PulleyJoint.§_-gg§;
         this.§_-B8§ = (_loc12_ - b2PulleyJoint.§_-gg§) / this.§_-Qg§;
      }
   }
}
