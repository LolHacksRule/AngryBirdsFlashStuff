package §7C§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §,!K§:b2Vec2;
      
      public var §[!5§:b2Vec2;
      
      public var §@!4§:b2Vec2;
      
      public var §^!Y§:Number;
      
      public var §2!'§:Boolean;
      
      public var §!!G§:Number;
      
      public var §4!_§:Number;
      
      public var §&!>§:Boolean;
      
      public var §8! §:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§,!K§ = new b2Vec2();
         this.§[!5§ = new b2Vec2();
         this.§@!4§ = new b2Vec2();
         super();
         type = b2Joint.§&!I§;
         this.§@!4§.Set(1,0);
         this.§^!Y§ = 0;
         this.§2!'§ = false;
         this.§!!G§ = 0;
         this.§4!_§ = 0;
         this.§&!>§ = false;
         this.§8! § = 0;
         this.motorSpeed = 0;
      }
      
      public function §1U§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;!L§ = param1;
         §0!U§ = param2;
         this.§,!K§ = §;!L§.GetLocalPoint(param3);
         this.§[!5§ = §0!U§.GetLocalPoint(param3);
         this.§@!4§ = §;!L§.GetLocalVector(param4);
         this.§^!Y§ = §0!U§.GetAngle() - §;!L§.GetAngle();
      }
   }
}
