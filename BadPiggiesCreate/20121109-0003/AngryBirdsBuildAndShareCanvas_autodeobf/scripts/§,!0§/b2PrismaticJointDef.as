package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §>!'§:b2Vec2;
      
      public var § "2§:Number;
      
      public var §2<§:Boolean;
      
      public var §?"'§:Number;
      
      public var §-!§:Number;
      
      public var §#a§:Boolean;
      
      public var §<!S§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§3!&§ = new b2Vec2();
         this.§2!P§ = new b2Vec2();
         this.§>!'§ = new b2Vec2();
         super();
         type = b2Joint.§'"4§;
         this.§>!'§.Set(1,0);
         this.§ "2§ = 0;
         this.§2<§ = false;
         this.§?"'§ = 0;
         this.§-!§ = 0;
         this.§#a§ = false;
         this.§<!S§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         § !T§ = param1;
         §import§ = param2;
         this.§3!&§ = § !T§.GetLocalPoint(param3);
         this.§2!P§ = §import§.GetLocalPoint(param3);
         this.§>!'§ = § !T§.GetLocalVector(param4);
         this.§ "2§ = §import§.GetAngle() - § !T§.GetAngle();
      }
   }
}
