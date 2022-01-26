package §_-bt§
{
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-5O§:b2Vec2;
      
      public var §_-q3§:b2Vec2;
      
      public var length:Number;
      
      public var §_-3I§:Number;
      
      public var §_-wr§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§_-5O§ = new b2Vec2();
         this.§_-q3§ = new b2Vec2();
         super();
         type = b2Joint.§_-6G§;
         this.length = 1;
         this.§_-3I§ = 0;
         this.§_-wr§ = 0;
      }
      
      public function §_-Vy§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-pV§ = param1;
         §_-3o§ = param2;
         this.§_-5O§.SetV(§_-pV§.GetLocalPoint(param3));
         this.§_-q3§.SetV(§_-3o§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§_-3I§ = 0;
         this.§_-wr§ = 0;
      }
   }
}
