package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §7z§:b2Vec2;
      
      public var §#t§:b2Vec2;
      
      public var length:Number;
      
      public var §3!_§:Number;
      
      public var §-f§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§7z§ = new b2Vec2();
         this.§#t§ = new b2Vec2();
         super();
         type = b2Joint.§>0§;
         this.length = 1;
         this.§3!_§ = 0;
         this.§-f§ = 0;
      }
      
      public function §4$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §]!M§ = param1;
         §'!Q§ = param2;
         this.§7z§.SetV(§]!M§.GetLocalPoint(param3));
         this.§#t§.SetV(§'!Q§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§3!_§ = 0;
         this.§-f§ = 0;
      }
   }
}
