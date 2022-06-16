package §"G§
{
   import §&!Y§.b2Body;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!d§:b2Vec2;
      
      public var §;!9§:b2Vec2;
      
      public var length:Number;
      
      public var §[!p§:Number;
      
      public var §<!7§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§!d§ = new b2Vec2();
         this.§;!9§ = new b2Vec2();
         super();
         type = b2Joint.§4k§;
         this.length = 1;
         this.§[!p§ = 0;
         this.§<!7§ = 0;
      }
      
      public function §,!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §4"?§ = param1;
         §+H§ = param2;
         this.§!d§.SetV(§4"?§.GetLocalPoint(param3));
         this.§;!9§.SetV(§+H§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§[!p§ = 0;
         this.§<!7§ = 0;
      }
   }
}
