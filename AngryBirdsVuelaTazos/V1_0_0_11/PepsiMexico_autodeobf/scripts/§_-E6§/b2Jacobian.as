package §_-E6§
{
   import §_-dx§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-05§:b2Vec2;
      
      public var §_-9C§:Number;
      
      public var §_-4t§:b2Vec2;
      
      public var §_-C4§:Number;
      
      public function b2Jacobian()
      {
         this.§_-05§ = new b2Vec2();
         this.§_-4t§ = new b2Vec2();
         super();
      }
      
      public function §_-pZ§() : void
      {
         this.§_-05§.§_-pZ§();
         this.§_-9C§ = 0;
         this.§_-4t§.§_-pZ§();
         this.§_-C4§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-05§.SetV(param1);
         this.§_-9C§ = param2;
         this.§_-4t§.SetV(param3);
         this.§_-C4§ = param4;
      }
      
      public function §if §(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-05§.x * param1.x + this.§_-05§.y * param1.y + this.§_-9C§ * param2 + (this.§_-4t§.x * param3.x + this.§_-4t§.y * param3.y) + this.§_-C4§ * param4;
      }
   }
}
