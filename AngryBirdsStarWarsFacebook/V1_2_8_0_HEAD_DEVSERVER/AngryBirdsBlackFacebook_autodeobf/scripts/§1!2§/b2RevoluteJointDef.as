package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §!#W§:Number;
      
      public var §#d§:Boolean;
      
      public var § "x§:Number;
      
      public var §<!y§:Number;
      
      public var §!#G§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?"Z§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!"4§ = new b2Vec2();
         this.§#"B§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!"4§.Set(0,0);
         this.§#"B§.Set(0,0);
         this.§!#W§ = 0;
         this.§ "x§ = 0;
         this.§<!y§ = 0;
         this.§?"Z§ = 0;
         this.motorSpeed = 0;
         this.§#d§ = false;
         this.§!#G§ = false;
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §9"P§ = param1;
         §continue§ = param2;
         this.§!"4§ = §9"P§.GetLocalPoint(param3);
         this.§#"B§ = §continue§.GetLocalPoint(param3);
         this.§!#W§ = §continue§.GetAngle() - §9"P§.GetAngle();
      }
   }
}
