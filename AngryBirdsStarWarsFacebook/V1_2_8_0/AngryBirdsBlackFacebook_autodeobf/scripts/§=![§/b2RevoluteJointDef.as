package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §?"y§:b2Vec2;
      
      public var §0d§:b2Vec2;
      
      public var §'T§:Number;
      
      public var §@!I§:Boolean;
      
      public var §-!%§:Number;
      
      public var §+k§:Number;
      
      public var §"!A§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §9#6§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§?"y§ = new b2Vec2();
         this.§0d§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§?"y§.Set(0,0);
         this.§0d§.Set(0,0);
         this.§'T§ = 0;
         this.§-!%§ = 0;
         this.§+k§ = 0;
         this.§9#6§ = 0;
         this.motorSpeed = 0;
         this.§@!I§ = false;
         this.§"!A§ = false;
      }
      
      public function §>D§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §5"I§ = param1;
         §[!K§ = param2;
         this.§?"y§ = §5"I§.GetLocalPoint(param3);
         this.§0d§ = §[!K§.GetLocalPoint(param3);
         this.§'T§ = §[!K§.GetAngle() - §5"I§.GetAngle();
      }
   }
}
