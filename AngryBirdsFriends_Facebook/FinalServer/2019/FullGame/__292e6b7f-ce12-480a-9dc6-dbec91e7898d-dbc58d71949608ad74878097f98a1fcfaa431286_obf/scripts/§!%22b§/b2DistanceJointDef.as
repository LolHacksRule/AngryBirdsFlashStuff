package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §,#D§:b2Vec2;
      
      public var §?#d§:b2Vec2;
      
      public var length:Number;
      
      public var §'#%§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§,#D§ = new b2Vec2();
         this.§?#d§ = new b2Vec2();
         super();
         type = b2Joint.§>"J§;
         this.length = 1;
         this.§'#%§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §&N§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9!Z§ = param1;
         §#!_§ = param2;
         this.§,#D§.SetV(§9!Z§.GetLocalPoint(param3));
         this.§?#d§.SetV(§#!_§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§'#%§ = 0;
         this.dampingRatio = 0;
      }
   }
}
