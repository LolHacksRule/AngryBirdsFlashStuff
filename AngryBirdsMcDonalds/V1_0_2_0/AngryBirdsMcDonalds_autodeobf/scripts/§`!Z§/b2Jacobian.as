package §`!Z§
{
   import §"U§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §0z§:b2Vec2;
      
      public var §>!F§:Number;
      
      public var §"V§:b2Vec2;
      
      public var §#V§:Number;
      
      public function b2Jacobian()
      {
         this.§0z§ = new b2Vec2();
         this.§"V§ = new b2Vec2();
         super();
      }
      
      public function §1!=§() : void
      {
         this.§0z§.§1!=§();
         this.§>!F§ = 0;
         this.§"V§.§1!=§();
         this.§#V§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§0z§.SetV(param1);
         this.§>!F§ = param2;
         this.§"V§.SetV(param3);
         this.§#V§ = param4;
      }
      
      public function §?!V§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§0z§.x * param1.x + this.§0z§.y * param1.y + this.§>!F§ * param2 + (this.§"V§.x * param3.x + this.§"V§.y * param3.y) + this.§#V§ * param4;
      }
   }
}
