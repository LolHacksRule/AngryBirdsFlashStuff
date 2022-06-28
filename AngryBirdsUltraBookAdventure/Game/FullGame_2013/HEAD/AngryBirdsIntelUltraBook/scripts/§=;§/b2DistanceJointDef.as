package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var length:Number;
      
      public var §5Q§:Number;
      
      public var §=$§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§>!g§ = new b2Vec2();
         this.§&1§ = new b2Vec2();
         super();
         type = b2Joint.§@5§;
         this.length = 1;
         this.§5Q§ = 0;
         this.§=$§ = 0;
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §7l§ = param1;
         §<H§ = param2;
         this.§>!g§.SetV(§7l§.GetLocalPoint(param3));
         this.§&1§.SetV(§<H§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§5Q§ = 0;
         this.§=$§ = 0;
      }
   }
}
