package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §9"%§:b2Vec2;
      
      public var §^j§:b2Vec2;
      
      public var §6!I§:Number;
      
      public var §2!Z§:Boolean;
      
      public var §@!m§:Number;
      
      public var §&I§:Number;
      
      public var §"z§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §^""§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§9"%§ = new b2Vec2();
         this.§^j§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§9"%§.Set(0,0);
         this.§^j§.Set(0,0);
         this.§6!I§ = 0;
         this.§@!m§ = 0;
         this.§&I§ = 0;
         this.§^""§ = 0;
         this.motorSpeed = 0;
         this.§2!Z§ = false;
         this.§"z§ = false;
      }
      
      public function §6"8§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §`!z§ = param1;
         §#!3§ = param2;
         this.§9"%§ = §`!z§.GetLocalPoint(param3);
         this.§^j§ = §#!3§.GetLocalPoint(param3);
         this.§6!I§ = §#!3§.GetAngle() - §`!z§.GetAngle();
      }
   }
}
