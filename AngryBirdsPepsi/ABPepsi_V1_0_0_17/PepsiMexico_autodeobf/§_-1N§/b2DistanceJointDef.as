package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var length:Number;
      
      public var §_-Kf§:Number;
      
      public var §_-Co§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-Kz§ = new b2Vec2();
         this.§_-Dq§ = new b2Vec2();
         super();
         type = b2Joint.§_-wG§;
         this.length = 1;
         this.§_-Kf§ = 0;
         this.§_-Co§ = 0;
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-Kz§.SetV(§_-dL§.GetLocalPoint(param3));
         this.§_-Dq§.SetV(§_-h1§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-Kf§ = 0;
         this.§_-Co§ = 0;
      }
   }
}
