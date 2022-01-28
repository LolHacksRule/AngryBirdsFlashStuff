package §_-zP§
{
   import §_-bA§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-Q5§:b2Vec2;
      
      public var §_-x0§:Number;
      
      public var §_-qN§:b2Vec2;
      
      public var §_-QK§:Number;
      
      public function b2Jacobian()
      {
         this.§_-Q5§ = new b2Vec2();
         this.§_-qN§ = new b2Vec2();
         super();
      }
      
      public function §_-qi§() : void
      {
         this.§_-Q5§.§_-qi§();
         this.§_-x0§ = 0;
         this.§_-qN§.§_-qi§();
         this.§_-QK§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-Q5§.SetV(param1);
         this.§_-x0§ = param2;
         this.§_-qN§.SetV(param3);
         this.§_-QK§ = param4;
      }
      
      public function §_-XU§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-Q5§.x * param1.x + this.§_-Q5§.y * param1.y + this.§_-x0§ * param2 + (this.§_-qN§.x * param3.x + this.§_-qN§.y * param3.y) + this.§_-QK§ * param4;
      }
   }
}
