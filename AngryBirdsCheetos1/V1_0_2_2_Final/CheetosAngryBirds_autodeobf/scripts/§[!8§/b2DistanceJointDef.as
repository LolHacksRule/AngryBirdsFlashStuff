package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var length:Number;
      
      public var §!k§:Number;
      
      public var §-C§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§;9§ = new b2Vec2();
         this.§-y§ = new b2Vec2();
         super();
         type = b2Joint.§>#§;
         this.length = 1;
         this.§!k§ = 0;
         this.§-C§ = 0;
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §8!5§ = param1;
         §0n§ = param2;
         this.§;9§.SetV(§8!5§.GetLocalPoint(param3));
         this.§-y§.SetV(§0n§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§!k§ = 0;
         this.§-C§ = 0;
      }
   }
}
