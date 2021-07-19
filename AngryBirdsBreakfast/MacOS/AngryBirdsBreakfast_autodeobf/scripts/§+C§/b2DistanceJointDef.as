package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var length:Number;
      
      public var §;l§:Number;
      
      public var §,8§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§0O§ = new b2Vec2();
         this.§ @§ = new b2Vec2();
         super();
         type = b2Joint.§'G§;
         this.length = 1;
         this.§;l§ = 0;
         this.§,8§ = 0;
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'!n§ = param1;
         § 5§ = param2;
         this.§0O§.SetV(§'!n§.GetLocalPoint(param3));
         this.§ @§.SetV(§ 5§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§;l§ = 0;
         this.§,8§ = 0;
      }
   }
}
