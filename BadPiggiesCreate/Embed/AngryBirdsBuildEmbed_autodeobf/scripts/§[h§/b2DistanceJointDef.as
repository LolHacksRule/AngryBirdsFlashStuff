package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var length:Number;
      
      public var §4,§:Number;
      
      public var §>!k§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         super();
         type = b2Joint.§-r§;
         this.length = 1;
         this.§4,§ = 0;
         this.§>!k§ = 0;
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §[!i§ = param1;
         §;!K§ = param2;
         this.§;!1§.SetV(§[!i§.GetLocalPoint(param3));
         this.§%?§.SetV(§;!K§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§4,§ = 0;
         this.§>!k§ = 0;
      }
   }
}
