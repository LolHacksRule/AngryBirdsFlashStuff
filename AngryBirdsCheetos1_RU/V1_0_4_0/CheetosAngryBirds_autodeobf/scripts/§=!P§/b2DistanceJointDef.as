package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;I§:b2Vec2;
      
      public var §-!&§:b2Vec2;
      
      public var length:Number;
      
      public var §&!$§:Number;
      
      public var §@Y§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§;I§ = new b2Vec2();
         this.§-!&§ = new b2Vec2();
         super();
         type = b2Joint.§&_§;
         this.length = 1;
         this.§&!$§ = 0;
         this.§@Y§ = 0;
      }
      
      public function §in §(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         § !,§ = param1;
         §]z§ = param2;
         this.§;I§.SetV(§ !,§.GetLocalPoint(param3));
         this.§-!&§.SetV(§]z§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§&!$§ = 0;
         this.§@Y§ = 0;
      }
   }
}
