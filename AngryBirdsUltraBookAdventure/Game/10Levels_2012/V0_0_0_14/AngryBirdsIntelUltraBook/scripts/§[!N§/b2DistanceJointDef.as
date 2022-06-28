package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var length:Number;
      
      public var § $§:Number;
      
      public var §7B§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§9!9§ = new b2Vec2();
         this.§^G§ = new b2Vec2();
         super();
         type = b2Joint.§-!u§;
         this.length = 1;
         this.§ $§ = 0;
         this.§7B§ = 0;
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-!O§ = param1;
         §3!u§ = param2;
         this.§9!9§.SetV(§-!O§.GetLocalPoint(param3));
         this.§^G§.SetV(§3!u§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§ $§ = 0;
         this.§7B§ = 0;
      }
   }
}
