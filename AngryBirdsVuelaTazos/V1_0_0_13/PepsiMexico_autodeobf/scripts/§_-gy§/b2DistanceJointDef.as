package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-3r§:b2Vec2;
      
      public var §_-sR§:b2Vec2;
      
      public var length:Number;
      
      public var §_-DV§:Number;
      
      public var §_-qi§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-3r§ = new b2Vec2();
         this.§_-sR§ = new b2Vec2();
         super();
         type = b2Joint.§_-SL§;
         this.length = 1;
         this.§_-DV§ = 0;
         this.§_-qi§ = 0;
      }
      
      public function §_-PU§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-cw§ = param1;
         §_-U9§ = param2;
         this.§_-3r§.SetV(§_-cw§.GetLocalPoint(param3));
         this.§_-sR§.SetV(§_-U9§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-DV§ = 0;
         this.§_-qi§ = 0;
      }
   }
}
