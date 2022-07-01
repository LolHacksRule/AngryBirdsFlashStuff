package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §#J§:b2Vec2;
      
      public var §7!A§:b2Vec2;
      
      public var §?!@§:b2Vec2;
      
      public var § b§:Boolean;
      
      public var §<""§:Number;
      
      public var §^!H§:Number;
      
      public var §-!W§:Boolean;
      
      public var §="&§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§#J§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         this.§?!@§ = new b2Vec2();
         super();
         type = b2Joint.§8!;§;
         this.§?!@§.Set(1,0);
         this.§ b§ = false;
         this.§<""§ = 0;
         this.§^!H§ = 0;
         this.§-!W§ = false;
         this.§="&§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §3!,§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §%!T§ = param1;
         §,d§ = param2;
         this.§#J§ = §%!T§.GetLocalPoint(param3);
         this.§7!A§ = §,d§.GetLocalPoint(param3);
         this.§?!@§ = §%!T§.GetLocalVector(param4);
      }
   }
}
