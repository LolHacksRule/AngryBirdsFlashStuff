package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!!B§:b2Vec2;
      
      public var §<!_§:b2Vec2;
      
      public var §2v§:Number;
      
      public var §64§:Boolean;
      
      public var §!!+§:Number;
      
      public var § !"§:Number;
      
      public var § in§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §0!E§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!!B§ = new b2Vec2();
         this.§<!_§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!!B§.Set(0,0);
         this.§<!_§.Set(0,0);
         this.§2v§ = 0;
         this.§!!+§ = 0;
         this.§ !"§ = 0;
         this.§0!E§ = 0;
         this.motorSpeed = 0;
         this.§64§ = false;
         this.§ in§ = false;
      }
      
      public function §2![§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1I§ = param1;
         §!T§ = param2;
         this.§!!B§ = §1I§.GetLocalPoint(param3);
         this.§<!_§ = §!T§.GetLocalPoint(param3);
         this.§2v§ = §!T§.GetAngle() - §1I§.GetAngle();
      }
   }
}
