package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §,!K§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var length:Number;
      
      public var §5!0§:Number;
      
      public var §,!=§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§,!K§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         super();
         type = b2Joint.§;G§;
         this.length = 1;
         this.§5!0§ = 0;
         this.§,!=§ = 0;
      }
      
      public function §1U§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;!L§ = param1;
         §0!U§ = param2;
         this.§,!K§.SetV(§;!L§.GetLocalPoint(param3));
         this.§[!5§.SetV(§0!U§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§5!0§ = 0;
         this.§,!=§ = 0;
      }
   }
}
