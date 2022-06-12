package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §@2§:b2Vec2;
      
      public var §7#$§:b2Vec2;
      
      public var length:Number;
      
      public var §3";§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§@2§ = new b2Vec2();
         this.§7#$§ = new b2Vec2();
         super();
         type = b2Joint.§+$!§;
         this.length = 1;
         this.§3";§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §1[§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9"Z§ = param1;
         §'!Y§ = param2;
         this.§@2§.SetV(§9"Z§.GetLocalPoint(param3));
         this.§7#$§.SetV(§'!Y§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§3";§ = 0;
         this.dampingRatio = 0;
      }
   }
}
