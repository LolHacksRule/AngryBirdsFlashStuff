package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §@!T§:b2Vec2;
      
      public var §,!;§:b2Vec2;
      
      public var §!d§:Number;
      
      public function b2WeldJointDef()
      {
         this.§@!T§ = new b2Vec2();
         this.§,!;§ = new b2Vec2();
         super();
         type = b2Joint.§^!"§;
         this.§!d§ = 0;
      }
      
      public function §8!6§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §?$§ = param1;
         §%!§ = param2;
         this.§@!T§.SetV(§?$§.GetLocalPoint(param3));
         this.§,!;§.SetV(§%!§.GetLocalPoint(param3));
         this.§!d§ = §%!§.GetAngle() - §?$§.GetAngle();
      }
   }
}
