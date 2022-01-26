package §_-1N§
{
   import §_-Ja§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-kX§:b2Vec2;
      
      public var §_-lS§:Number;
      
      public var §_-Jk§:b2Vec2;
      
      public var §_-IH§:Number;
      
      public function b2Jacobian()
      {
         this.§_-kX§ = new b2Vec2();
         this.§_-Jk§ = new b2Vec2();
         super();
      }
      
      public function §_-0a§() : void
      {
         this.§_-kX§.§_-0a§();
         this.§_-lS§ = 0;
         this.§_-Jk§.§_-0a§();
         this.§_-IH§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-kX§.SetV(param1);
         this.§_-lS§ = param2;
         this.§_-Jk§.SetV(param3);
         this.§_-IH§ = param4;
      }
      
      public function §_-yB§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-kX§.x * param1.x + this.§_-kX§.y * param1.y + this.§_-lS§ * param2 + (this.§_-Jk§.x * param3.x + this.§_-Jk§.y * param3.y) + this.§_-IH§ * param4;
      }
   }
}
