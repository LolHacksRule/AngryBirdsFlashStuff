package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!!B§:b2Vec2;
      
      public var §<!_§:b2Vec2;
      
      public var §&H§:b2Vec2;
      
      public var §2v§:Number;
      
      public var §64§:Boolean;
      
      public var §12§:Number;
      
      public var §do §:Number;
      
      public var § in§:Boolean;
      
      public var §'R§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§!!B§ = new b2Vec2();
         this.§<!_§ = new b2Vec2();
         this.§&H§ = new b2Vec2();
         super();
         type = b2Joint.§7w§;
         this.§&H§.Set(1,0);
         this.§2v§ = 0;
         this.§64§ = false;
         this.§12§ = 0;
         this.§do § = 0;
         this.§ in§ = false;
         this.§'R§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §2![§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1I§ = param1;
         §!T§ = param2;
         this.§!!B§ = §1I§.GetLocalPoint(param3);
         this.§<!_§ = §!T§.GetLocalPoint(param3);
         this.§&H§ = §1I§.GetLocalVector(param4);
         this.§2v§ = §!T§.GetAngle() - §1I§.GetAngle();
      }
   }
}
