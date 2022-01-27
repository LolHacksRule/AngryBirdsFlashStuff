package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §?"y§:b2Vec2;
      
      public var §0d§:b2Vec2;
      
      public var length:Number;
      
      public var §?"^§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§?"y§ = new b2Vec2();
         this.§0d§ = new b2Vec2();
         super();
         type = b2Joint.§`!?§;
         this.length = 1;
         this.§?"^§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §>D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §5"I§ = param1;
         §[!K§ = param2;
         this.§?"y§.SetV(§5"I§.GetLocalPoint(param3));
         this.§0d§.SetV(§[!K§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§?"^§ = 0;
         this.dampingRatio = 0;
      }
   }
}
