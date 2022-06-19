package §_-E§
{
   import §_-00B§.b2Body;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-4N§:b2Vec2;
      
      public var §_-nR§:b2Vec2;
      
      public var length:Number;
      
      public var §_-R-§:Number;
      
      public var §_-q6§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-4N§ = new b2Vec2();
         this.§_-nR§ = new b2Vec2();
         super();
         type = b2Joint.§_-ew§;
         this.length = 1;
         this.§_-R-§ = 0;
         this.§_-q6§ = 0;
      }
      
      public function §_-yN§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-c7§ = param1;
         §_-60§ = param2;
         this.§_-4N§.SetV(§_-c7§.GetLocalPoint(param3));
         this.§_-nR§.SetV(§_-60§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-R-§ = 0;
         this.§_-q6§ = 0;
      }
   }
}
