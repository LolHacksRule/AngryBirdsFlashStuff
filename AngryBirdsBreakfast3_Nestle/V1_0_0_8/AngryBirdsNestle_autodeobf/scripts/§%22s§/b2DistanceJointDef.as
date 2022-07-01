package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §#J§:b2Vec2;
      
      public var §7!A§:b2Vec2;
      
      public var length:Number;
      
      public var §2!Z§:Number;
      
      public var §"!%§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§#J§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         super();
         type = b2Joint.§<!P§;
         this.length = 1;
         this.§2!Z§ = 0;
         this.§"!%§ = 0;
      }
      
      public function §3!,§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §%!T§ = param1;
         §,d§ = param2;
         this.§#J§.SetV(§%!T§.GetLocalPoint(param3));
         this.§7!A§.SetV(§,d§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§2!Z§ = 0;
         this.§"!%§ = 0;
      }
   }
}
