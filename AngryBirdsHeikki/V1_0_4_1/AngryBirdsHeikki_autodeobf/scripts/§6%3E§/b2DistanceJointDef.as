package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var § i§:b2Vec2;
      
      public var §<=§:b2Vec2;
      
      public var length:Number;
      
      public var §<!F§:Number;
      
      public var §%z§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§ i§ = new b2Vec2();
         this.§<=§ = new b2Vec2();
         super();
         type = b2Joint.§,n§;
         this.length = 1;
         this.§<!F§ = 0;
         this.§%z§ = 0;
      }
      
      public function §;!%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;0§ = param1;
         §+4§ = param2;
         this.§ i§.SetV(§;0§.GetLocalPoint(param3));
         this.§<=§.SetV(§+4§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§<!F§ = 0;
         this.§%z§ = 0;
      }
   }
}
