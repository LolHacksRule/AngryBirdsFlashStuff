package §_-bt§
{
   import §_-4n§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-DD§:b2Vec2;
      
      public var §_-hY§:Number;
      
      public var §_-H§:b2Vec2;
      
      public var §_-zX§:Number;
      
      public function b2Jacobian()
      {
         this.§_-DD§ = new b2Vec2();
         this.§_-H§ = new b2Vec2();
         super();
      }
      
      public function §_-IE§() : void
      {
         this.§_-DD§.§_-IE§();
         this.§_-hY§ = 0;
         this.§_-H§.§_-IE§();
         this.§_-zX§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-DD§.SetV(param1);
         this.§_-hY§ = param2;
         this.§_-H§.SetV(param3);
         this.§_-zX§ = param4;
      }
      
      public function §_-xE§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-DD§.x * param1.x + this.§_-DD§.y * param1.y + this.§_-hY§ * param2 + (this.§_-H§.x * param3.x + this.§_-H§.y * param3.y) + this.§_-zX§ * param4;
      }
   }
}
