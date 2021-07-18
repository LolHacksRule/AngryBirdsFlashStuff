package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var length:Number;
      
      public var §""u§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§!"4§ = new b2Vec2();
         this.§#"B§ = new b2Vec2();
         super();
         type = b2Joint.§83§;
         this.length = 1;
         this.§""u§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9"P§ = param1;
         §continue§ = param2;
         this.§!"4§.SetV(§9"P§.GetLocalPoint(param3));
         this.§#"B§.SetV(§continue§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§""u§ = 0;
         this.dampingRatio = 0;
      }
   }
}
