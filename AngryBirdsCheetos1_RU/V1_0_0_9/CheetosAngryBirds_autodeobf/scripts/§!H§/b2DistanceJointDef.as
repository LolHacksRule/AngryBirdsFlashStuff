package §!H§
{
   import §!!B§.b2Body;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §7p§:b2Vec2;
      
      public var §"!C§:b2Vec2;
      
      public var length:Number;
      
      public var §!;§:Number;
      
      public var §=h§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§7p§ = new b2Vec2();
         this.§"!C§ = new b2Vec2();
         super();
         type = b2Joint.§ Q§;
         this.length = 1;
         this.§!;§ = 0;
         this.§=h§ = 0;
      }
      
      public function §`!0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1U§ = param1;
         §"=§ = param2;
         this.§7p§.SetV(§1U§.GetLocalPoint(param3));
         this.§"!C§.SetV(§"=§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§!;§ = 0;
         this.§=h§ = 0;
      }
   }
}
