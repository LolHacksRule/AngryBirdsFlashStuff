package §_-ol§
{
   import §_-F2§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-gG§:b2Vec2;
      
      public var §_-ST§:Number;
      
      public var §_-Gh§:b2Vec2;
      
      public var §_-IV§:Number;
      
      public function b2Jacobian()
      {
         this.§_-gG§ = new b2Vec2();
         this.§_-Gh§ = new b2Vec2();
         super();
      }
      
      public function §_-t5§() : void
      {
         this.§_-gG§.§_-t5§();
         this.§_-ST§ = 0;
         this.§_-Gh§.§_-t5§();
         this.§_-IV§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-gG§.SetV(param1);
         this.§_-ST§ = param2;
         this.§_-Gh§.SetV(param3);
         this.§_-IV§ = param4;
      }
      
      public function §_-1n§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-gG§.x * param1.x + this.§_-gG§.y * param1.y + this.§_-ST§ * param2 + (this.§_-Gh§.x * param3.x + this.§_-Gh§.y * param3.y) + this.§_-IV§ * param4;
      }
   }
}
