package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var length:Number;
      
      public var §?!J§:Number;
      
      public var §9!7§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§`!V§ = new b2Vec2();
         this.§6$§ = new b2Vec2();
         super();
         type = b2Joint.§7!L§;
         this.length = 1;
         this.§?!J§ = 0;
         this.§9!7§ = 0;
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §^!G§ = param1;
         §-z§ = param2;
         this.§`!V§.SetV(§^!G§.GetLocalPoint(param3));
         this.§6$§.SetV(§-z§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§?!J§ = 0;
         this.§9!7§ = 0;
      }
   }
}
