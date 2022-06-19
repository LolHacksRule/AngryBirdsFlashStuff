package §_-E§
{
   import §_-Vn§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-cG§:b2Vec2;
      
      public var §_-SB§:Number;
      
      public var §_-6K§:b2Vec2;
      
      public var §_-Bl§:Number;
      
      public function b2Jacobian()
      {
         this.§_-cG§ = new b2Vec2();
         this.§_-6K§ = new b2Vec2();
         super();
      }
      
      public function §return§() : void
      {
         this.§_-cG§.§return§();
         this.§_-SB§ = 0;
         this.§_-6K§.§return§();
         this.§_-Bl§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-cG§.SetV(param1);
         this.§_-SB§ = param2;
         this.§_-6K§.SetV(param3);
         this.§_-Bl§ = param4;
      }
      
      public function §_-xR§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-cG§.x * param1.x + this.§_-cG§.y * param1.y + this.§_-SB§ * param2 + (this.§_-6K§.x * param3.x + this.§_-6K§.y * param3.y) + this.§_-Bl§ * param4;
      }
   }
}
