package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §2f§:b2Vec2;
      
      public var §@n§:b2Vec2;
      
      public var length:Number;
      
      public var §6!+§:Number;
      
      public var §&!U§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§2f§ = new b2Vec2();
         this.§@n§ = new b2Vec2();
         super();
         type = b2Joint.§%!R§;
         this.length = 1;
         this.§6!+§ = 0;
         this.§&!U§ = 0;
      }
      
      public function §+!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-[§ = param1;
         §>N§ = param2;
         this.§2f§.SetV(§-[§.GetLocalPoint(param3));
         this.§@n§.SetV(§>N§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§6!+§ = 0;
         this.§&!U§ = 0;
      }
   }
}
