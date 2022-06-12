package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §9"%§:b2Vec2;
      
      public var §^j§:b2Vec2;
      
      public var §6!I§:Number;
      
      public function b2WeldJointDef()
      {
         this.§9"%§ = new b2Vec2();
         this.§^j§ = new b2Vec2();
         super();
         type = b2Joint.§6",§;
         this.§6!I§ = 0;
      }
      
      public function §6"8§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §`!z§ = param1;
         §#!3§ = param2;
         this.§9"%§.SetV(§`!z§.GetLocalPoint(param3));
         this.§^j§.SetV(§#!3§.GetLocalPoint(param3));
         this.§6!I§ = §#!3§.GetAngle() - §`!z§.GetAngle();
      }
   }
}
