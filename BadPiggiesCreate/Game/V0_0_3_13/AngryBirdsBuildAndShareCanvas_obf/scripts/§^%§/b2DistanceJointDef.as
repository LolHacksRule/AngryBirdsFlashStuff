package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §98§:b2Vec2;
      
      public var §?m§:b2Vec2;
      
      public var length:Number;
      
      public var §>&§:Number;
      
      public var § o§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§98§ = new b2Vec2();
         this.§?m§ = new b2Vec2();
         super();
         type = b2Joint.§'!#§;
         this.length = 1;
         this.§>&§ = 0;
         this.§ o§ = 0;
      }
      
      public function §`!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0",§ = param1;
         §^W§ = param2;
         this.§98§.SetV(§0",§.GetLocalPoint(param3));
         this.§?m§.SetV(§^W§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§>&§ = 0;
         this.§ o§ = 0;
      }
   }
}
