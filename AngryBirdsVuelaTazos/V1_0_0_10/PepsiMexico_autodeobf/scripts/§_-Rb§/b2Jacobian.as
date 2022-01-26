package §_-Rb§
{
   import §_-Zl§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-JX§:b2Vec2;
      
      public var §_-oJ§:Number;
      
      public var §_-lx§:b2Vec2;
      
      public var §_-on§:Number;
      
      public function b2Jacobian()
      {
         this.§_-JX§ = new b2Vec2();
         this.§_-lx§ = new b2Vec2();
         super();
      }
      
      public function §_-Vw§() : void
      {
         this.§_-JX§.§_-Vw§();
         this.§_-oJ§ = 0;
         this.§_-lx§.§_-Vw§();
         this.§_-on§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-JX§.SetV(param1);
         this.§_-oJ§ = param2;
         this.§_-lx§.SetV(param3);
         this.§_-on§ = param4;
      }
      
      public function §_-U§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-JX§.x * param1.x + this.§_-JX§.y * param1.y + this.§_-oJ§ * param2 + (this.§_-lx§.x * param3.x + this.§_-lx§.y * param3.y) + this.§_-on§ * param4;
      }
   }
}
