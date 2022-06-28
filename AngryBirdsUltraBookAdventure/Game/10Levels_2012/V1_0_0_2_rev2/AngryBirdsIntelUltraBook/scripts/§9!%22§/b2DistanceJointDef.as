package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var length:Number;
      
      public var § y§:Number;
      
      public var §`!X§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§<?§ = new b2Vec2();
         this.§%!e§ = new b2Vec2();
         super();
         type = b2Joint.§09§;
         this.length = 1;
         this.§ y§ = 0;
         this.§`!X§ = 0;
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §3x§ = param1;
         §8P§ = param2;
         this.§<?§.SetV(§3x§.GetLocalPoint(param3));
         this.§%!e§.SetV(§8P§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§ y§ = 0;
         this.§`!X§ = 0;
      }
   }
}
