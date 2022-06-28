package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var length:Number;
      
      public var §4p§:Number;
      
      public var §2=§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         super();
         type = b2Joint.§&!D§;
         this.length = 1;
         this.§4p§ = 0;
         this.§2=§ = 0;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
         this.§=!I§.SetV(§^2§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§4p§ = 0;
         this.§2=§ = 0;
      }
   }
}
