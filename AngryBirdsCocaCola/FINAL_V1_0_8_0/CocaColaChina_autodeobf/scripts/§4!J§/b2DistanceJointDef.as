package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var length:Number;
      
      public var §-!c§:Number;
      
      public var §if §:Number;
      
      public function b2DistanceJointDef()
      {
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         super();
         type = b2Joint.§;!0§;
         this.length = 1;
         this.§-!c§ = 0;
         this.§if § = 0;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§;8§.SetV(§;!9§.GetLocalPoint(param3));
         this.§;!c§.SetV(§;!,§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§-!c§ = 0;
         this.§if § = 0;
      }
   }
}
