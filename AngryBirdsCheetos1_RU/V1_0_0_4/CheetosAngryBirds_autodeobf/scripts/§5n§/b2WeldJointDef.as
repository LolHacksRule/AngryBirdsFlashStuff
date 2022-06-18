package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!!B§:b2Vec2;
      
      public var §<!_§:b2Vec2;
      
      public var §2v§:Number;
      
      public function b2WeldJointDef()
      {
         this.§!!B§ = new b2Vec2();
         this.§<!_§ = new b2Vec2();
         super();
         type = b2Joint.§@!-§;
         this.§2v§ = 0;
      }
      
      public function §2![§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1I§ = param1;
         §!T§ = param2;
         this.§!!B§.SetV(§1I§.GetLocalPoint(param3));
         this.§<!_§.SetV(§!T§.GetLocalPoint(param3));
         this.§2v§ = §!T§.GetAngle() - §1I§.GetAngle();
      }
   }
}
