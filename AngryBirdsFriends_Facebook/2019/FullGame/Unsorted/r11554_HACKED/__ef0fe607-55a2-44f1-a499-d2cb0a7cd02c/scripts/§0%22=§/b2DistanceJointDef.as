package §0"=§
{
   import §8#t§.b2Body;
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var § "2§:b2Vec2;
      
      public var §8!U§:b2Vec2;
      
      public var length:Number;
      
      public var §;$4§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§ "2§ = new b2Vec2();
         this.§8!U§ = new b2Vec2();
         super();
         type = b2Joint.§-t§;
         this.length = 1;
         this.§;$4§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §7##§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §%#&§ = param1;
         §8V§ = param2;
         this.§ "2§.SetV(§%#&§.GetLocalPoint(param3));
         this.§8!U§.SetV(§8V§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§;$4§ = 0;
         this.dampingRatio = 0;
      }
   }
}
