package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §0$&§:b2Vec2;
      
      public var §=#I§:b2Vec2;
      
      public var length:Number;
      
      public var §,K§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§0$&§ = new b2Vec2();
         this.§=#I§ = new b2Vec2();
         super();
         type = b2Joint.§#"=§;
         this.length = 1;
         this.§,K§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §1!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;#X§ = param1;
         §`7§ = param2;
         this.§0$&§.SetV(§;#X§.GetLocalPoint(param3));
         this.§=#I§.SetV(§`7§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§,K§ = 0;
         this.dampingRatio = 0;
      }
   }
}
