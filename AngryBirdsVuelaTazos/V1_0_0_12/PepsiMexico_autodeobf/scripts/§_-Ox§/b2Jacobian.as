package §_-Ox§
{
   import §_-9z§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-GQ§:b2Vec2;
      
      public var §_-Nr§:Number;
      
      public var §_-XW§:b2Vec2;
      
      public var §_-vN§:Number;
      
      public function b2Jacobian()
      {
         this.§_-GQ§ = new b2Vec2();
         this.§_-XW§ = new b2Vec2();
         super();
      }
      
      public function §_-TJ§() : void
      {
         this.§_-GQ§.§_-TJ§();
         this.§_-Nr§ = 0;
         this.§_-XW§.§_-TJ§();
         this.§_-vN§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-GQ§.SetV(param1);
         this.§_-Nr§ = param2;
         this.§_-XW§.SetV(param3);
         this.§_-vN§ = param4;
      }
      
      public function §_-Ga§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-GQ§.x * param1.x + this.§_-GQ§.y * param1.y + this.§_-Nr§ * param2 + (this.§_-XW§.x * param3.x + this.§_-XW§.y * param3.y) + this.§_-vN§ * param4;
      }
   }
}
