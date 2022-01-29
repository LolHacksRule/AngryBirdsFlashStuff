package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §#"z§:b2Vec2;
      
      public var §>#C§:b2Vec2;
      
      public var §3"t§:b2Vec2;
      
      public var §=#I§:Number;
      
      public var §?$&§:Boolean;
      
      public var §4"w§:Number;
      
      public var §-#b§:Number;
      
      public var §!#6§:Boolean;
      
      public var §-!Q§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§#"z§ = new b2Vec2();
         this.§>#C§ = new b2Vec2();
         this.§3"t§ = new b2Vec2();
         super();
         type = b2Joint.§1X§;
         this.§3"t§.Set(1,0);
         this.§=#I§ = 0;
         this.§?$&§ = false;
         this.§4"w§ = 0;
         this.§-#b§ = 0;
         this.§!#6§ = false;
         this.§-!Q§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §?#W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'§ = param1;
         §>!2§ = param2;
         this.§#"z§ = §'§.GetLocalPoint(param3);
         this.§>#C§ = §>!2§.GetLocalPoint(param3);
         this.§3"t§ = §'§.GetLocalVector(param4);
         this.§=#I§ = §>!2§.GetAngle() - §'§.GetAngle();
      }
   }
}
