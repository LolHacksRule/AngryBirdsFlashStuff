package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §"! §:b2Vec2;
      
      public var §<?§:Number;
      
      public var §-Q§:Boolean;
      
      public var §class§:Number;
      
      public var §>^§:Number;
      
      public var §2!s§:Boolean;
      
      public var §4!C§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         this.§"! § = new b2Vec2();
         super();
         type = b2Joint.§>!V§;
         this.§"! §.Set(1,0);
         this.§<?§ = 0;
         this.§-Q§ = false;
         this.§class§ = 0;
         this.§>^§ = 0;
         this.§2!s§ = false;
         this.§4!C§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§4!%§ = §0w§.GetLocalPoint(param3);
         this.§=!I§ = §^2§.GetLocalPoint(param3);
         this.§"! § = §0w§.GetLocalVector(param4);
         this.§<?§ = §^2§.GetAngle() - §0w§.GetAngle();
      }
   }
}
