package §6$§
{
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §<!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §8!Z§:b2Vec2;
      
      public var §]!P§:b2Vec2;
      
      public var length:Number;
      
      public var §#;§:Number;
      
      public var §8u§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§8!Z§ = new b2Vec2();
         this.§]!P§ = new b2Vec2();
         super();
         type = b2Joint.§else §;
         this.length = 1;
         this.§#;§ = 0;
         this.§8u§ = 0;
      }
      
      public function §,?§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'@§ = param1;
         §"!2§ = param2;
         this.§8!Z§.SetV(§'@§.GetLocalPoint(param3));
         this.§]!P§.SetV(§"!2§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§#;§ = 0;
         this.§8u§ = 0;
      }
   }
}
