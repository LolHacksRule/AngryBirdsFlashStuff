package §#!K§
{
   import §-0§.b2Body;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §0'§:b2Vec2;
      
      public var §;!b§:b2Vec2;
      
      public var length:Number;
      
      public var §^!H§:Number;
      
      public var §"! §:Number;
      
      public function b2DistanceJointDef()
      {
         this.§0'§ = new b2Vec2();
         this.§;!b§ = new b2Vec2();
         super();
         type = b2Joint.§;V§;
         this.length = 1;
         this.§^!H§ = 0;
         this.§"! § = 0;
      }
      
      public function §08§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>!k§ = param1;
         §<u§ = param2;
         this.§0'§.SetV(§>!k§.GetLocalPoint(param3));
         this.§;!b§.SetV(§<u§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§^!H§ = 0;
         this.§"! § = 0;
      }
   }
}
