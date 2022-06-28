package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var length:Number;
      
      public var §!N§:Number;
      
      public var §^c§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'!<§ = new b2Vec2();
         this.§1!0§ = new b2Vec2();
         super();
         type = b2Joint.§7z§;
         this.length = 1;
         this.§!N§ = 0;
         this.§^c§ = 0;
      }
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §7!K§ = param1;
         §'P§ = param2;
         this.§'!<§.SetV(§7!K§.GetLocalPoint(param3));
         this.§1!0§.SetV(§'P§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§!N§ = 0;
         this.§^c§ = 0;
      }
   }
}
