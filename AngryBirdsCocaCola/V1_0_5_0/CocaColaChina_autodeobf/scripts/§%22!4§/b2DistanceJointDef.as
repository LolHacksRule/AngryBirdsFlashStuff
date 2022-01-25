package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §9%§:b2Vec2;
      
      public var §+!"§:b2Vec2;
      
      public var length:Number;
      
      public var §^!,§:Number;
      
      public var §1z§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§9%§ = new b2Vec2();
         this.§+!"§ = new b2Vec2();
         super();
         type = b2Joint.§4!N§;
         this.length = 1;
         this.§^!,§ = 0;
         this.§1z§ = 0;
      }
      
      public function §#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §8L§ = param1;
         §4!H§ = param2;
         this.§9%§.SetV(§8L§.GetLocalPoint(param3));
         this.§+!"§.SetV(§4!H§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§^!,§ = 0;
         this.§1z§ = 0;
      }
   }
}
