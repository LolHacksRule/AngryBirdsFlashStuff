package §_-Ox§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-7E§:b2Vec2;
      
      public var §_-ID§:b2Vec2;
      
      public var length:Number;
      
      public var §_-Dr§:Number;
      
      public var §_-Dj§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-7E§ = new b2Vec2();
         this.§_-ID§ = new b2Vec2();
         super();
         type = b2Joint.§_-Eu§;
         this.length = 1;
         this.§_-Dr§ = 0;
         this.§_-Dj§ = 0;
      }
      
      public function §_-fn§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-lk§ = param1;
         §_-OV§ = param2;
         this.§_-7E§.SetV(§_-lk§.GetLocalPoint(param3));
         this.§_-ID§.SetV(§_-OV§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-Dr§ = 0;
         this.§_-Dj§ = 0;
      }
   }
}
