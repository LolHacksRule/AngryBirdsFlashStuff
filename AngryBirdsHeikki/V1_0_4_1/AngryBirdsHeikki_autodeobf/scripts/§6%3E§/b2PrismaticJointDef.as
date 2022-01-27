package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var § i§:b2Vec2;
      
      public var §<=§:b2Vec2;
      
      public var §=h§:b2Vec2;
      
      public var §&!U§:Number;
      
      public var §^a§:Boolean;
      
      public var §1^§:Number;
      
      public var §??§:Number;
      
      public var §;r§:Boolean;
      
      public var §#`§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§ i§ = new b2Vec2();
         this.§<=§ = new b2Vec2();
         this.§=h§ = new b2Vec2();
         super();
         type = b2Joint.§!9§;
         this.§=h§.Set(1,0);
         this.§&!U§ = 0;
         this.§^a§ = false;
         this.§1^§ = 0;
         this.§??§ = 0;
         this.§;r§ = false;
         this.§#`§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §;!%§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;0§ = param1;
         §+4§ = param2;
         this.§ i§ = §;0§.GetLocalPoint(param3);
         this.§<=§ = §+4§.GetLocalPoint(param3);
         this.§=h§ = §;0§.GetLocalVector(param4);
         this.§&!U§ = §+4§.GetAngle() - §;0§.GetAngle();
      }
   }
}
