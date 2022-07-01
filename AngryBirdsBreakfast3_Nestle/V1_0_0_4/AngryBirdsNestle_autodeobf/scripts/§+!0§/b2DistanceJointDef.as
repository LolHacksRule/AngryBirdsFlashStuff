package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §1"&§:b2Vec2;
      
      public var §-m§:b2Vec2;
      
      public var length:Number;
      
      public var §?X§:Number;
      
      public var §<!P§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§1"&§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         super();
         type = b2Joint.§-!D§;
         this.length = 1;
         this.§?X§ = 0;
         this.§<!P§ = 0;
      }
      
      public function §,n§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §6z§ = param1;
         §@! § = param2;
         this.§1"&§.SetV(§6z§.GetLocalPoint(param3));
         this.§-m§.SetV(§@! §.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§?X§ = 0;
         this.§<!P§ = 0;
      }
   }
}
