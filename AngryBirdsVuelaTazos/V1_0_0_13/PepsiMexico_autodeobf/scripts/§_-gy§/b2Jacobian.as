package §_-gy§
{
   import §var§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-7e§:b2Vec2;
      
      public var §_-qq§:Number;
      
      public var §_-9N§:b2Vec2;
      
      public var §_-jl§:Number;
      
      public function b2Jacobian()
      {
         this.§_-7e§ = new b2Vec2();
         this.§_-9N§ = new b2Vec2();
         super();
      }
      
      public function §_-pR§() : void
      {
         this.§_-7e§.§_-pR§();
         this.§_-qq§ = 0;
         this.§_-9N§.§_-pR§();
         this.§_-jl§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-7e§.SetV(param1);
         this.§_-qq§ = param2;
         this.§_-9N§.SetV(param3);
         this.§_-jl§ = param4;
      }
      
      public function §_-he§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-7e§.x * param1.x + this.§_-7e§.y * param1.y + this.§_-qq§ * param2 + (this.§_-9N§.x * param3.x + this.§_-9N§.y * param3.y) + this.§_-jl§ * param4;
      }
   }
}
