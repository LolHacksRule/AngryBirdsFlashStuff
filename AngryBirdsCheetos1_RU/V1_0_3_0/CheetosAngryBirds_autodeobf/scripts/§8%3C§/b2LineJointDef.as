package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §;!,§:b2Vec2;
      
      public var §const§:b2Vec2;
      
      public var §?I§:b2Vec2;
      
      public var §21§:Boolean;
      
      public var §]!<§:Number;
      
      public var §%!2§:Number;
      
      public var § '§:Boolean;
      
      public var §^X§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§;!,§ = new b2Vec2();
         this.§const§ = new b2Vec2();
         this.§?I§ = new b2Vec2();
         super();
         type = b2Joint.§null §;
         this.§?I§.Set(1,0);
         this.§21§ = false;
         this.§]!<§ = 0;
         this.§%!2§ = 0;
         this.§ '§ = false;
         this.§^X§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §9!K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,w§ = param1;
         §2h§ = param2;
         this.§;!,§ = §,w§.GetLocalPoint(param3);
         this.§const§ = §2h§.GetLocalPoint(param3);
         this.§?I§ = §,w§.GetLocalVector(param4);
      }
   }
}
