package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §"#b§:b2Vec2;
      
      public var §[#b§:b2Vec2;
      
      public var length:Number;
      
      public var §6"%§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§"#b§ = new b2Vec2();
         this.§[#b§ = new b2Vec2();
         super();
         type = b2Joint.§9"w§;
         this.length = 1;
         this.§6"%§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §80§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,E§ = param1;
         §&$7§ = param2;
         this.§"#b§.SetV(§,E§.GetLocalPoint(param3));
         this.§[#b§.SetV(§&$7§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§6"%§ = 0;
         this.dampingRatio = 0;
      }
   }
}
