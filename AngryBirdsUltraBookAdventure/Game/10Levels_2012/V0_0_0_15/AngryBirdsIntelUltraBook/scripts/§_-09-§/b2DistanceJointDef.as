package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var length:Number;
      
      public var §true §:Number;
      
      public var §_-9r§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-F6§ = new b2Vec2();
         this.§_-0Bf§ = new b2Vec2();
         super();
         type = b2Joint.§_-Mk§;
         this.length = 1;
         this.§true § = 0;
         this.§_-9r§ = 0;
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-ZR§ = param1;
         §_-7b§ = param2;
         this.§_-F6§.SetV(§_-ZR§.GetLocalPoint(param3));
         this.§_-0Bf§.SetV(§_-7b§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§true § = 0;
         this.§_-9r§ = 0;
      }
   }
}
