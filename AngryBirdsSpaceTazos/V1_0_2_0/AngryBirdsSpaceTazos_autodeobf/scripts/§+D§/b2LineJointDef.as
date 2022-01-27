package §+D§
{
   import §#!X§.b2Body;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §&9§:b2Vec2;
      
      public var §^"<§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §>6§:Boolean;
      
      public var §42§:Number;
      
      public var §"!2§:Number;
      
      public var §%]§:Boolean;
      
      public var §!#§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§&9§ = new b2Vec2();
         this.§^"<§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         super();
         type = b2Joint.§!"A§;
         this.§8!Z§.Set(1,0);
         this.§>6§ = false;
         this.§42§ = 0;
         this.§"!2§ = 0;
         this.§%]§ = false;
         this.§!#§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §5!k§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §43§ = param1;
         §4!l§ = param2;
         this.§&9§ = §43§.GetLocalPoint(param3);
         this.§^"<§ = §4!l§.GetLocalPoint(param3);
         this.§8!Z§ = §43§.GetLocalVector(param4);
      }
   }
}
