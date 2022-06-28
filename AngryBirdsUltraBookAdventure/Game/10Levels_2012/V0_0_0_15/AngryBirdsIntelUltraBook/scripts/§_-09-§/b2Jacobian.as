package §_-09-§
{
   import §_-Yp§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-SD§:b2Vec2;
      
      public var §_-O8§:Number;
      
      public var §_-01W§:b2Vec2;
      
      public var §_-k3§:Number;
      
      public function b2Jacobian()
      {
         this.§_-SD§ = new b2Vec2();
         this.§_-01W§ = new b2Vec2();
         super();
      }
      
      public function §_-el§() : void
      {
         this.§_-SD§.§_-el§();
         this.§_-O8§ = 0;
         this.§_-01W§.§_-el§();
         this.§_-k3§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-SD§.SetV(param1);
         this.§_-O8§ = param2;
         this.§_-01W§.SetV(param3);
         this.§_-k3§ = param4;
      }
      
      public function §_-KX§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-SD§.x * param1.x + this.§_-SD§.y * param1.y + this.§_-O8§ * param2 + (this.§_-01W§.x * param3.x + this.§_-01W§.y * param3.y) + this.§_-k3§ * param4;
      }
   }
}
