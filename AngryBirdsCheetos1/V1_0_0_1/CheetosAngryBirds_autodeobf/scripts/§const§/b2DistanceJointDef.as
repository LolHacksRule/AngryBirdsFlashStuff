package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-Vd§:b2Vec2;
      
      public var §_-j3§:b2Vec2;
      
      public var length:Number;
      
      public var §_-ek§:Number;
      
      public var §_-DN§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-Vd§ = new b2Vec2();
         this.§_-j3§ = new b2Vec2();
         super();
         type = b2Joint.§_-hG§;
         this.length = 1;
         this.§_-ek§ = 0;
         this.§_-DN§ = 0;
      }
      
      public function §_-Qz§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-6a§ = param1;
         §_-95§ = param2;
         this.§_-Vd§.SetV(§_-6a§.GetLocalPoint(param3));
         this.§_-j3§.SetV(§_-95§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-ek§ = 0;
         this.§_-DN§ = 0;
      }
   }
}
