package §!4§
{
   import §&x§.b2Body;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §3_§:b2Vec2;
      
      public var §-<§:b2Vec2;
      
      public var length:Number;
      
      public var §+m§:Number;
      
      public var §3Q§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§3_§ = new b2Vec2();
         this.§-<§ = new b2Vec2();
         super();
         type = b2Joint.§`O§;
         this.length = 1;
         this.§+m§ = 0;
         this.§3Q§ = 0;
      }
      
      public function §,!p§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@!F§ = param1;
         §9!T§ = param2;
         this.§3_§.SetV(§@!F§.GetLocalPoint(param3));
         this.§-<§.SetV(§9!T§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§+m§ = 0;
         this.§3Q§ = 0;
      }
   }
}
