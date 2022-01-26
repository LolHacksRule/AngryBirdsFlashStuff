package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-24§:b2Vec2;
      
      public var §_-2Z§:b2Vec2;
      
      public var length:Number;
      
      public var §_-8R§:Number;
      
      public var §_-XX§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-24§ = new b2Vec2();
         this.§_-2Z§ = new b2Vec2();
         super();
         type = b2Joint.§_-Uo§;
         this.length = 1;
         this.§_-8R§ = 0;
         this.§_-XX§ = 0;
      }
      
      public function §_-E0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-Ay§ = param1;
         §_-vo§ = param2;
         this.§_-24§.SetV(§_-Ay§.GetLocalPoint(param3));
         this.§_-2Z§.SetV(§_-vo§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-8R§ = 0;
         this.§_-XX§ = 0;
      }
   }
}
