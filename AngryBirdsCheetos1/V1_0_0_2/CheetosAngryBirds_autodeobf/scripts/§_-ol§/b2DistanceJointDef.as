package §_-ol§
{
   import §_-43§.b2Body;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-lj§:b2Vec2;
      
      public var §_-zW§:b2Vec2;
      
      public var length:Number;
      
      public var §_-NZ§:Number;
      
      public var §_-EV§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-lj§ = new b2Vec2();
         this.§_-zW§ = new b2Vec2();
         super();
         type = b2Joint.§_-bG§;
         this.length = 1;
         this.§_-NZ§ = 0;
         this.§_-EV§ = 0;
      }
      
      public function §_-M0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-4f§ = param1;
         §_-FU§ = param2;
         this.§_-lj§.SetV(§_-4f§.GetLocalPoint(param3));
         this.§_-zW§.SetV(§_-FU§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-NZ§ = 0;
         this.§_-EV§ = 0;
      }
   }
}
