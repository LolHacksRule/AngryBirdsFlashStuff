package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var § !S§:b2Vec2;
      
      public var §&!A§:Boolean;
      
      public var §;!R§:Number;
      
      public var § use§:Number;
      
      public var § !q§:Boolean;
      
      public var §;!Q§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§'G§ = new b2Vec2();
         this.§true§ = new b2Vec2();
         this.§ !S§ = new b2Vec2();
         super();
         type = b2Joint.§-f§;
         this.§ !S§.Set(1,0);
         this.§&!A§ = false;
         this.§;!R§ = 0;
         this.§ use§ = 0;
         this.§ !q§ = false;
         this.§;!Q§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §19§ = param1;
         §"@§ = param2;
         this.§'G§ = §19§.GetLocalPoint(param3);
         this.§true§ = §"@§.GetLocalPoint(param3);
         this.§ !S§ = §19§.GetLocalVector(param4);
      }
   }
}
