package §1!2§
{
   import §+#$§.b2Body;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §!"4§:b2Vec2;
      
      public var §#"B§:b2Vec2;
      
      public var §&#M§:b2Vec2;
      
      public var §!#W§:Number;
      
      public var §#d§:Boolean;
      
      public var §2!@§:Number;
      
      public var §5!F§:Number;
      
      public var §!#G§:Boolean;
      
      public var §0A§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§!"4§ = new b2Vec2();
         this.§#"B§ = new b2Vec2();
         this.§&#M§ = new b2Vec2();
         super();
         type = b2Joint.§`#^§;
         this.§&#M§.Set(1,0);
         this.§!#W§ = 0;
         this.§#d§ = false;
         this.§2!@§ = 0;
         this.§5!F§ = 0;
         this.§!#G§ = false;
         this.§0A§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §8#5§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9"P§ = param1;
         §continue§ = param2;
         this.§!"4§ = §9"P§.GetLocalPoint(param3);
         this.§#"B§ = §continue§.GetLocalPoint(param3);
         this.§&#M§ = §9"P§.GetLocalVector(param4);
         this.§!#W§ = §continue§.GetAngle() - §9"P§.GetAngle();
      }
   }
}
