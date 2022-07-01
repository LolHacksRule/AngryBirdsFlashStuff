package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var §@!&§:b2Vec2;
      
      public var §?r§:Boolean;
      
      public var §6"5§:Number;
      
      public var §=" §:Number;
      
      public var §<D§:Boolean;
      
      public var §7"!§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         this.§@!&§ = new b2Vec2();
         super();
         type = b2Joint.§>b§;
         this.§@!&§.Set(1,0);
         this.§?r§ = false;
         this.§6"5§ = 0;
         this.§=" § = 0;
         this.§<D§ = false;
         this.§7"!§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§'&§ = §'!R§.GetLocalPoint(param3);
         this.§%"0§ = §@V§.GetLocalPoint(param3);
         this.§@!&§ = §'!R§.GetLocalVector(param4);
      }
   }
}
