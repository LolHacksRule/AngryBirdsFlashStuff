package §=![§
{
   import §7!I§.b2internal;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §?"y§:b2Vec2;
      
      public var §0d§:b2Vec2;
      
      public var §5!@§:b2Vec2;
      
      public var §'T§:Number;
      
      public var §@!I§:Boolean;
      
      public var §60§:Number;
      
      public var §3"v§:Number;
      
      public var §"!A§:Boolean;
      
      public var §2#%§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§?"y§ = new b2Vec2();
         this.§0d§ = new b2Vec2();
         this.§5!@§ = new b2Vec2();
         super();
         type = b2Joint.§[!C§;
         this.§5!@§.Set(1,0);
         this.§'T§ = 0;
         this.§@!I§ = false;
         this.§60§ = 0;
         this.§3"v§ = 0;
         this.§"!A§ = false;
         this.§2#%§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §>D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §5"I§ = param1;
         §[!K§ = param2;
         this.§?"y§ = §5"I§.GetLocalPoint(param3);
         this.§0d§ = §[!K§.GetLocalPoint(param3);
         this.§5!@§ = §5"I§.GetLocalVector(param4);
         this.§'T§ = §[!K§.GetAngle() - §5"I§.GetAngle();
      }
   }
}
