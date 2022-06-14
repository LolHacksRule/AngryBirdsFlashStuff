package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var length:Number;
      
      public var §>"9§:Number;
      
      public var §""2§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§#C§ = new b2Vec2();
         this.§^!J§ = new b2Vec2();
         super();
         type = b2Joint.§1!A§;
         this.length = 1;
         this.§>"9§ = 0;
         this.§""2§ = 0;
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §!!v§ = param1;
         §'!4§ = param2;
         this.§#C§.SetV(§!!v§.GetLocalPoint(param3));
         this.§^!J§.SetV(§'!4§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§>"9§ = 0;
         this.§""2§ = 0;
      }
   }
}
