package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §5";§:b2Vec2;
      
      public var §["%§:b2Vec2;
      
      public var length:Number;
      
      public var §#!X§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§5";§ = new b2Vec2();
         this.§["%§ = new b2Vec2();
         super();
         type = b2Joint.§[!Y§;
         this.length = 1;
         this.§#!X§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §'m§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>!&§ = param1;
         §^!r§ = param2;
         this.§5";§.SetV(§>!&§.GetLocalPoint(param3));
         this.§["%§.SetV(§^!r§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§#!X§ = 0;
         this.dampingRatio = 0;
      }
   }
}
