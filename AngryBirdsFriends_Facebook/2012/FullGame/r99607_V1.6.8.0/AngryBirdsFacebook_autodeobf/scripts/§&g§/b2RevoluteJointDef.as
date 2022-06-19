package §&g§
{
   import § !k§.b2Body;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'!v§:b2Vec2;
      
      public var §?!m§:b2Vec2;
      
      public var §&!D§:Number;
      
      public var §?!v§:Boolean;
      
      public var §@!N§:Number;
      
      public var §@_§:Number;
      
      public var §^"=§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §%!Z§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'!v§ = new b2Vec2();
         this.§?!m§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'!v§.Set(0,0);
         this.§?!m§.Set(0,0);
         this.§&!D§ = 0;
         this.§@!N§ = 0;
         this.§@_§ = 0;
         this.§%!Z§ = 0;
         this.motorSpeed = 0;
         this.§?!v§ = false;
         this.§^"=§ = false;
      }
      
      public function §&!j§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §3"$§ = param1;
         §?!A§ = param2;
         this.§'!v§ = §3"$§.GetLocalPoint(param3);
         this.§?!m§ = §?!A§.GetLocalPoint(param3);
         this.§&!D§ = §?!A§.GetAngle() - §3"$§.GetAngle();
      }
   }
}
