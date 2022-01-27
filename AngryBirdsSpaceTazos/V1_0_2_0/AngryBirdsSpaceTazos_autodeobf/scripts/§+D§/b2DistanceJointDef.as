package §+D§
{
   import §#!X§.b2Body;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §&9§:b2Vec2;
      
      public var §^"<§:b2Vec2;
      
      public var length:Number;
      
      public var §,!h§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§&9§ = new b2Vec2();
         this.§^"<§ = new b2Vec2();
         super();
         type = b2Joint.§2'§;
         this.length = 1;
         this.§,!h§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §5!k§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §43§ = param1;
         §4!l§ = param2;
         this.§&9§.SetV(§43§.GetLocalPoint(param3));
         this.§^"<§.SetV(§4!l§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§,!h§ = 0;
         this.dampingRatio = 0;
      }
   }
}
