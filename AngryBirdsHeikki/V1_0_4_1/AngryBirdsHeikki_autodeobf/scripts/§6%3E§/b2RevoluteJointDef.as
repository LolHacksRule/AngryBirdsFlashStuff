package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var § i§:b2Vec2;
      
      public var §<=§:b2Vec2;
      
      public var §&!U§:Number;
      
      public var §^a§:Boolean;
      
      public var §-h§:Number;
      
      public var §"!Q§:Number;
      
      public var §;r§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §]R§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§ i§ = new b2Vec2();
         this.§<=§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§ i§.Set(0,0);
         this.§<=§.Set(0,0);
         this.§&!U§ = 0;
         this.§-h§ = 0;
         this.§"!Q§ = 0;
         this.§]R§ = 0;
         this.motorSpeed = 0;
         this.§^a§ = false;
         this.§;r§ = false;
      }
      
      public function §;!%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;0§ = param1;
         §+4§ = param2;
         this.§ i§ = §;0§.GetLocalPoint(param3);
         this.§<=§ = §+4§.GetLocalPoint(param3);
         this.§&!U§ = §+4§.GetAngle() - §;0§.GetAngle();
      }
   }
}
