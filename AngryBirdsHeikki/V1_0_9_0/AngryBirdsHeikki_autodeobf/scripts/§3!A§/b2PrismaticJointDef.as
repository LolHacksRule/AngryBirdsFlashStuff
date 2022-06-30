package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §?&§:b2Vec2;
      
      public var §4t§:b2Vec2;
      
      public var §7!a§:b2Vec2;
      
      public var §9N§:Number;
      
      public var §1!<§:Boolean;
      
      public var §#!0§:Number;
      
      public var §5f§:Number;
      
      public var §6!O§:Boolean;
      
      public var §!k§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§?&§ = new b2Vec2();
         this.§4t§ = new b2Vec2();
         this.§7!a§ = new b2Vec2();
         super();
         type = b2Joint.§@!M§;
         this.§7!a§.Set(1,0);
         this.§9N§ = 0;
         this.§1!<§ = false;
         this.§#!0§ = 0;
         this.§5f§ = 0;
         this.§6!O§ = false;
         this.§!k§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §8_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §[!N§ = param1;
         §0!'§ = param2;
         this.§?&§ = §[!N§.GetLocalPoint(param3);
         this.§4t§ = §0!'§.GetLocalPoint(param3);
         this.§7!a§ = §[!N§.GetLocalVector(param4);
         this.§9N§ = §0!'§.GetAngle() - §[!N§.GetAngle();
      }
   }
}
