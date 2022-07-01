package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §#J§:b2Vec2;
      
      public var §7!A§:b2Vec2;
      
      public var §[§:Number;
      
      public function b2WeldJointDef()
      {
         this.§#J§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         super();
         type = b2Joint.§4!D§;
         this.§[§ = 0;
      }
      
      public function §3!,§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §%!T§ = param1;
         §,d§ = param2;
         this.§#J§.SetV(§%!T§.GetLocalPoint(param3));
         this.§7!A§.SetV(§,d§.GetLocalPoint(param3));
         this.§[§ = §,d§.GetAngle() - §%!T§.GetAngle();
      }
   }
}
