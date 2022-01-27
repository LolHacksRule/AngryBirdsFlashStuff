package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §8U§:b2Vec2;
      
      public var §#i§:b2Vec2;
      
      public var length:Number;
      
      public var §2I§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§8U§ = new b2Vec2();
         this.§#i§ = new b2Vec2();
         super();
         type = b2Joint.§7!t§;
         this.length = 1;
         this.§2I§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §break§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0f§ = param1;
         §>F§ = param2;
         this.§8U§.SetV(§0f§.GetLocalPoint(param3));
         this.§#i§.SetV(§>F§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§2I§ = 0;
         this.dampingRatio = 0;
      }
   }
}
