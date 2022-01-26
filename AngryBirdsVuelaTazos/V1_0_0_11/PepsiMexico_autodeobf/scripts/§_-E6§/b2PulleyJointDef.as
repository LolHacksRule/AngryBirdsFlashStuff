package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-X9§:b2Vec2;
      
      public var §_-2o§:b2Vec2;
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var §_-R6§:Number;
      
      public var §_-S3§:Number;
      
      public var §_-W-§:Number;
      
      public var §_-6H§:Number;
      
      public var §_-8n§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§_-X9§ = new b2Vec2();
         this.§_-2o§ = new b2Vec2();
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         super();
         type = b2Joint.§_-fP§;
         this.§_-X9§.Set(-1,1);
         this.§_-2o§.Set(1,1);
         this.§_-uE§.Set(-1,0);
         this.§_-L5§.Set(1,0);
         this.§_-R6§ = 0;
         this.§_-S3§ = 0;
         this.§_-W-§ = 0;
         this.§_-6H§ = 0;
         this.§_-8n§ = 1;
         collideConnected = true;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-X9§.SetV(param3);
         this.§_-2o§.SetV(param4);
         this.§_-uE§ = §_-33§.GetLocalPoint(param5);
         this.§_-L5§ = §_-Pt§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§_-R6§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§_-W-§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§_-8n§ = param7;
         var _loc12_:Number = this.§_-R6§ + this.§_-8n§ * this.§_-W-§;
         this.§_-S3§ = _loc12_ - this.§_-8n§ * b2PulleyJoint.§_-SD§;
         this.§_-6H§ = (_loc12_ - b2PulleyJoint.§_-SD§) / this.§_-8n§;
      }
   }
}
