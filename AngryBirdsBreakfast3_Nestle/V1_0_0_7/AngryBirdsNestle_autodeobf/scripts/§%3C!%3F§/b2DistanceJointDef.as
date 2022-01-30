package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'!]§:b2Vec2;
      
      public var §@!p§:b2Vec2;
      
      public var length:Number;
      
      public var §'P§:Number;
      
      public var §#0§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'!]§ = new b2Vec2();
         this.§@!p§ = new b2Vec2();
         super();
         type = b2Joint.§5!r§;
         this.length = 1;
         this.§'P§ = 0;
         this.§#0§ = 0;
      }
      
      public function §7!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,!K§ = param1;
         §6n§ = param2;
         this.§'!]§.SetV(§,!K§.GetLocalPoint(param3));
         this.§@!p§.SetV(§6n§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§'P§ = 0;
         this.§#0§ = 0;
      }
   }
}
