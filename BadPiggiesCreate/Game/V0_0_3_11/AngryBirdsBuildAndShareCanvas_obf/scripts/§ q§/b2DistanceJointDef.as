package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §[!L§:b2Vec2;
      
      public var §8!^§:b2Vec2;
      
      public var length:Number;
      
      public var §>!J§:Number;
      
      public var §5!y§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§[!L§ = new b2Vec2();
         this.§8!^§ = new b2Vec2();
         super();
         type = b2Joint.§+c§;
         this.length = 1;
         this.§>!J§ = 0;
         this.§5!y§ = 0;
      }
      
      public function §5$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@]§ = param1;
         §3@§ = param2;
         this.§[!L§.SetV(§@]§.GetLocalPoint(param3));
         this.§8!^§.SetV(§3@§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§>!J§ = 0;
         this.§5!y§ = 0;
      }
   }
}
