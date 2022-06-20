package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var length:Number;
      
      public var §0c§:Number;
      
      public var §6!i§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         super();
         type = b2Joint.§&"W§;
         this.length = 1;
         this.§0c§ = 0;
         this.§6!i§ = 0;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
         this.§["9§.SetV(§8!7§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§0c§ = 0;
         this.§6!i§ = 0;
      }
   }
}
