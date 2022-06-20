package §&g§
{
   import § !k§.b2Body;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'!v§:b2Vec2;
      
      public var §?!m§:b2Vec2;
      
      public var length:Number;
      
      public var §3"7§:Number;
      
      public var §8!D§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'!v§ = new b2Vec2();
         this.§?!m§ = new b2Vec2();
         super();
         type = b2Joint.§&!p§;
         this.length = 1;
         this.§3"7§ = 0;
         this.§8!D§ = 0;
      }
      
      public function §&!j§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §3"$§ = param1;
         §?!A§ = param2;
         this.§'!v§.SetV(§3"$§.GetLocalPoint(param3));
         this.§?!m§.SetV(§?!A§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§3"7§ = 0;
         this.§8!D§ = 0;
      }
   }
}
