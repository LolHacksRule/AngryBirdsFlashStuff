package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §4D§:b2Vec2;
      
      public var §@@§:b2Vec2;
      
      public var length:Number;
      
      public var §'!X§:Number;
      
      public var §7a§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§4D§ = new b2Vec2();
         this.§@@§ = new b2Vec2();
         super();
         type = b2Joint.§0=§;
         this.length = 1;
         this.§'!X§ = 0;
         this.§7a§ = 0;
      }
      
      public function §4G§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-6§ = param1;
         §?w§ = param2;
         this.§4D§.SetV(§-6§.GetLocalPoint(param3));
         this.§@@§.SetV(§?w§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§'!X§ = 0;
         this.§7a§ = 0;
      }
   }
}
