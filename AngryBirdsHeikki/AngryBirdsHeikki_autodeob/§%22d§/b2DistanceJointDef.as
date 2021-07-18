package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var length:Number;
      
      public var §&!a§:Number;
      
      public var §0J§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§@b§ = new b2Vec2();
         this.§=i§ = new b2Vec2();
         super();
         type = b2Joint.§0=§;
         this.length = 1;
         this.§&!a§ = 0;
         this.§0J§ = 0;
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §&]§ = param1;
         §+0§ = param2;
         this.§@b§.SetV(§&]§.GetLocalPoint(param3));
         this.§=i§.SetV(§+0§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§&!a§ = 0;
         this.§0J§ = 0;
      }
   }
}
