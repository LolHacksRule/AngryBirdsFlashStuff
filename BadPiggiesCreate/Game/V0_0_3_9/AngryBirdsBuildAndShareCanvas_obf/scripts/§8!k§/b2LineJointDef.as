package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §"!O§:b2Vec2;
      
      public var § W§:b2Vec2;
      
      public var §2X§:b2Vec2;
      
      public var §=!4§:Boolean;
      
      public var §8!f§:Number;
      
      public var §""6§:Number;
      
      public var §[!b§:Boolean;
      
      public var §'!I§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§"!O§ = new b2Vec2();
         this.§ W§ = new b2Vec2();
         this.§2X§ = new b2Vec2();
         super();
         type = b2Joint.§1"6§;
         this.§2X§.Set(1,0);
         this.§=!4§ = false;
         this.§8!f§ = 0;
         this.§""6§ = 0;
         this.§[!b§ = false;
         this.§'!I§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §+"'§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<!S§ = param1;
         §=Y§ = param2;
         this.§"!O§ = §<!S§.GetLocalPoint(param3);
         this.§ W§ = §=Y§.GetLocalPoint(param3);
         this.§2X§ = §<!S§.GetLocalVector(param4);
      }
   }
}
