package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-Ys§:b2Vec2;
      
      public var §_-8p§:b2Vec2;
      
      public var length:Number;
      
      public var §_-4J§:Number;
      
      public var §_-ZH§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-Ys§ = new b2Vec2();
         this.§_-8p§ = new b2Vec2();
         super();
         type = b2Joint.§_-rD§;
         this.length = 1;
         this.§_-4J§ = 0;
         this.§_-ZH§ = 0;
      }
      
      public function §_-95§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-wE§ = param1;
         §_-3J§ = param2;
         this.§_-Ys§.SetV(§_-wE§.GetLocalPoint(param3));
         this.§_-8p§.SetV(§_-3J§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-4J§ = 0;
         this.§_-ZH§ = 0;
      }
   }
}
