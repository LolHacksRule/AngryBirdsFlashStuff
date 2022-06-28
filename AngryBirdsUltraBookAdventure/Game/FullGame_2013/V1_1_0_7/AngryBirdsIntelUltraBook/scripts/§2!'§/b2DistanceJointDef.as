package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var length:Number;
      
      public var §'S§:Number;
      
      public var §&!u§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§'G§ = new b2Vec2();
         this.§true§ = new b2Vec2();
         super();
         type = b2Joint.§8-§;
         this.length = 1;
         this.§'S§ = 0;
         this.§&!u§ = 0;
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §19§ = param1;
         §"@§ = param2;
         this.§'G§.SetV(§19§.GetLocalPoint(param3));
         this.§true§.SetV(§"@§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§'S§ = 0;
         this.§&!u§ = 0;
      }
   }
}
