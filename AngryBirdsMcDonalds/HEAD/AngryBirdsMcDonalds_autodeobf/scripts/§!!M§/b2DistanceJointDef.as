package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §5!E§:b2Vec2;
      
      public var §21§:b2Vec2;
      
      public var length:Number;
      
      public var §"j§:Number;
      
      public var §%6§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§5!E§ = new b2Vec2();
         this.§21§ = new b2Vec2();
         super();
         type = b2Joint.§=E§;
         this.length = 1;
         this.§"j§ = 0;
         this.§%6§ = 0;
      }
      
      public function §`!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-i§ = param1;
         §0!F§ = param2;
         this.§5!E§.SetV(§-i§.GetLocalPoint(param3));
         this.§21§.SetV(§0!F§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§"j§ = 0;
         this.§%6§ = 0;
      }
   }
}
