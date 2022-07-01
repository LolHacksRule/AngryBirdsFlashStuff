package §;!r§
{
   import §,v§.b2Body;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §5S§:b2Vec2;
      
      public var §-!9§:b2Vec2;
      
      public var length:Number;
      
      public var §?!O§:Number;
      
      public var §9@§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§5S§ = new b2Vec2();
         this.§-!9§ = new b2Vec2();
         super();
         type = b2Joint.§^!q§;
         this.length = 1;
         this.§?!O§ = 0;
         this.§9@§ = 0;
      }
      
      public function §"!o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@!`§ = param1;
         §@$§ = param2;
         this.§5S§.SetV(§@!`§.GetLocalPoint(param3));
         this.§-!9§.SetV(§@$§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§?!O§ = 0;
         this.§9@§ = 0;
      }
   }
}
