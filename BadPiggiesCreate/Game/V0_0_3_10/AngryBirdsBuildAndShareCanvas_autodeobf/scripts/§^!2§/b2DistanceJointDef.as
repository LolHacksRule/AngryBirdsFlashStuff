package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §9"%§:b2Vec2;
      
      public var §^j§:b2Vec2;
      
      public var length:Number;
      
      public var §`!j§:Number;
      
      public var §#T§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§9"%§ = new b2Vec2();
         this.§^j§ = new b2Vec2();
         super();
         type = b2Joint.§'!0§;
         this.length = 1;
         this.§`!j§ = 0;
         this.§#T§ = 0;
      }
      
      public function §6"8§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §`!z§ = param1;
         §#!3§ = param2;
         this.§9"%§.SetV(§`!z§.GetLocalPoint(param3));
         this.§^j§.SetV(§#!3§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§`!j§ = 0;
         this.§#T§ = 0;
      }
   }
}
