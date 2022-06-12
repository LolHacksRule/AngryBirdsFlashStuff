package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §98§:b2Vec2;
      
      public var §?m§:b2Vec2;
      
      public var §'!q§:b2Vec2;
      
      public var §""4§:Number;
      
      public var §;5§:Boolean;
      
      public var § +§:Number;
      
      public var §@0§:Number;
      
      public var §>!g§:Boolean;
      
      public var §[!<§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§98§ = new b2Vec2();
         this.§?m§ = new b2Vec2();
         this.§'!q§ = new b2Vec2();
         super();
         type = b2Joint.§#a§;
         this.§'!q§.Set(1,0);
         this.§""4§ = 0;
         this.§;5§ = false;
         this.§ +§ = 0;
         this.§@0§ = 0;
         this.§>!g§ = false;
         this.§[!<§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0",§ = param1;
         §^W§ = param2;
         this.§98§ = §0",§.GetLocalPoint(param3);
         this.§?m§ = §^W§.GetLocalPoint(param3);
         this.§'!q§ = §0",§.GetLocalVector(param4);
         this.§""4§ = §^W§.GetAngle() - §0",§.GetAngle();
      }
   }
}
