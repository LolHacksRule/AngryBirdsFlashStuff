package §&g§
{
   import § !k§.b2Body;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'!v§:b2Vec2;
      
      public var §?!m§:b2Vec2;
      
      public var §&!D§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'!v§ = new b2Vec2();
         this.§?!m§ = new b2Vec2();
         super();
         type = b2Joint.§[!!§;
         this.§&!D§ = 0;
      }
      
      public function §&!j§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §3"$§ = param1;
         §?!A§ = param2;
         this.§'!v§.SetV(§3"$§.GetLocalPoint(param3));
         this.§?!m§.SetV(§?!A§.GetLocalPoint(param3));
         this.§&!D§ = §?!A§.GetAngle() - §3"$§.GetAngle();
      }
   }
}
