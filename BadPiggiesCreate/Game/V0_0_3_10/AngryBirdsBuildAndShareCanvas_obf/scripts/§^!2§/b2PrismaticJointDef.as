package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §9"%§:b2Vec2;
      
      public var §^j§:b2Vec2;
      
      public var § "8§:b2Vec2;
      
      public var §6!I§:Number;
      
      public var §2!Z§:Boolean;
      
      public var §]T§:Number;
      
      public var §^!,§:Number;
      
      public var §"z§:Boolean;
      
      public var §>!N§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§9"%§ = new b2Vec2();
         this.§^j§ = new b2Vec2();
         this.§ "8§ = new b2Vec2();
         super();
         type = b2Joint.§-"2§;
         this.§ "8§.Set(1,0);
         this.§6!I§ = 0;
         this.§2!Z§ = false;
         this.§]T§ = 0;
         this.§^!,§ = 0;
         this.§"z§ = false;
         this.§>!N§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6"8§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §`!z§ = param1;
         §#!3§ = param2;
         this.§9"%§ = §`!z§.GetLocalPoint(param3);
         this.§^j§ = §#!3§.GetLocalPoint(param3);
         this.§ "8§ = §`!z§.GetLocalVector(param4);
         this.§6!I§ = §#!3§.GetAngle() - §`!z§.GetAngle();
      }
   }
}
