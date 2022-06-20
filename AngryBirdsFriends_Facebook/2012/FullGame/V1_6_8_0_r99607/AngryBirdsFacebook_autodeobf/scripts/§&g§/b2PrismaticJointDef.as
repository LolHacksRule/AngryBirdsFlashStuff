package §&g§
{
   import § !k§.b2Body;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'!v§:b2Vec2;
      
      public var §?!m§:b2Vec2;
      
      public var §8!W§:b2Vec2;
      
      public var §&!D§:Number;
      
      public var §?!v§:Boolean;
      
      public var §4!R§:Number;
      
      public var §%!&§:Number;
      
      public var §^"=§:Boolean;
      
      public var §;X§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§'!v§ = new b2Vec2();
         this.§?!m§ = new b2Vec2();
         this.§8!W§ = new b2Vec2();
         super();
         type = b2Joint.§%!R§;
         this.§8!W§.Set(1,0);
         this.§&!D§ = 0;
         this.§?!v§ = false;
         this.§4!R§ = 0;
         this.§%!&§ = 0;
         this.§^"=§ = false;
         this.§;X§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §&!j§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §3"$§ = param1;
         §?!A§ = param2;
         this.§'!v§ = §3"$§.GetLocalPoint(param3);
         this.§?!m§ = §?!A§.GetLocalPoint(param3);
         this.§8!W§ = §3"$§.GetLocalVector(param4);
         this.§&!D§ = §?!A§.GetAngle() - §3"$§.GetAngle();
      }
   }
}
