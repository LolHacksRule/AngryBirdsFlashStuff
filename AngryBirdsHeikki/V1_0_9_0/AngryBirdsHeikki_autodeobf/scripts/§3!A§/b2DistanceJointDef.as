package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §?&§:b2Vec2;
      
      public var §4t§:b2Vec2;
      
      public var length:Number;
      
      public var §&!=§:Number;
      
      public var §1b§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§?&§ = new b2Vec2();
         this.§4t§ = new b2Vec2();
         super();
         type = b2Joint.§&!`§;
         this.length = 1;
         this.§&!=§ = 0;
         this.§1b§ = 0;
      }
      
      public function §8_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §[!N§ = param1;
         §0!'§ = param2;
         this.§?&§.SetV(§[!N§.GetLocalPoint(param3));
         this.§4t§.SetV(§0!'§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§&!=§ = 0;
         this.§1b§ = 0;
      }
   }
}
