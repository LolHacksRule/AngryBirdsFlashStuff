package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §8!i§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§!"4§ = new b2Vec2();
         this.§#"B§ = new b2Vec2();
         super();
         type = b2Joint.§0+§;
         this.§8!i§ = 0;
         this.maxTorque = 0;
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9"P§ = param1;
         §continue§ = param2;
         this.§!"4§.SetV(§9"P§.GetLocalPoint(param3));
         this.§#"B§.SetV(§continue§.GetLocalPoint(param3));
      }
   }
}
