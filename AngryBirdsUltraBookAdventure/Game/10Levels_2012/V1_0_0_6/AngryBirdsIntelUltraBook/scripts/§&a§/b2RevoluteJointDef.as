package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §<?§:Number;
      
      public var §-Q§:Boolean;
      
      public var §#!I§:Number;
      
      public var §06§:Number;
      
      public var §2!s§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §2I§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§4!%§ = new b2Vec2();
         this.§=!I§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§4!%§.Set(0,0);
         this.§=!I§.Set(0,0);
         this.§<?§ = 0;
         this.§#!I§ = 0;
         this.§06§ = 0;
         this.§2I§ = 0;
         this.motorSpeed = 0;
         this.§-Q§ = false;
         this.§2!s§ = false;
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §0w§ = param1;
         §^2§ = param2;
         this.§4!%§ = §0w§.GetLocalPoint(param3);
         this.§=!I§ = §^2§.GetLocalPoint(param3);
         this.§<?§ = §^2§.GetAngle() - §0w§.GetAngle();
      }
   }
}
