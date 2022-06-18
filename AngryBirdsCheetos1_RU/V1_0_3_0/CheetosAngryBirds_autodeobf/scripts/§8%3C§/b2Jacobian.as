package §8<§
{
   import §[R§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §=h§:b2Vec2;
      
      public var § !a§:Number;
      
      public var §2?§:b2Vec2;
      
      public var §#O§:Number;
      
      public function b2Jacobian()
      {
         this.§=h§ = new b2Vec2();
         this.§2?§ = new b2Vec2();
         super();
      }
      
      public function §0&§() : void
      {
         this.§=h§.§0&§();
         this.§ !a§ = 0;
         this.§2?§.§0&§();
         this.§#O§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§=h§.SetV(param1);
         this.§ !a§ = param2;
         this.§2?§.SetV(param3);
         this.§#O§ = param4;
      }
      
      public function §,!@§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§=h§.x * param1.x + this.§=h§.y * param1.y + this.§ !a§ * param2 + (this.§2?§.x * param3.x + this.§2?§.y * param3.y) + this.§#O§ * param4;
      }
   }
}
