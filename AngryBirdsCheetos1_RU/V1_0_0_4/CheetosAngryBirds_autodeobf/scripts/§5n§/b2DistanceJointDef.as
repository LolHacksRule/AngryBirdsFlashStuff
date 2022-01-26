package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!!B§:b2Vec2;
      
      public var §<!_§:b2Vec2;
      
      public var length:Number;
      
      public var §+!§:Number;
      
      public var §1!J§:Number;
      
      public function b2DistanceJointDef()
      {
         this.§!!B§ = new b2Vec2();
         this.§<!_§ = new b2Vec2();
         super();
         type = b2Joint.§+t§;
         this.length = 1;
         this.§+!§ = 0;
         this.§1!J§ = 0;
      }
      
      public function §2![§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1I§ = param1;
         §!T§ = param2;
         this.§!!B§.SetV(§1I§.GetLocalPoint(param3));
         this.§<!_§.SetV(§!T§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§+!§ = 0;
         this.§1!J§ = 0;
      }
   }
}
