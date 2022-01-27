package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §@!T§:b2Vec2;
      
      public var §,!;§:b2Vec2;
      
      public var length:Number;
      
      public var §else§:Number;
      
      public var §`3§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§@!T§ = new b2Vec2();
         this.§,!;§ = new b2Vec2();
         super();
         type = b2Joint.§`T§;
         this.length = 1;
         this.§else§ = 0;
         this.§`3§ = 0;
      }
      
      public function §8!6§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §?$§ = param1;
         §%!§ = param2;
         this.§@!T§.SetV(§?$§.GetLocalPoint(param3));
         this.§,!;§.SetV(§%!§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§else§ = 0;
         this.§`3§ = 0;
      }
   }
}
