package §3!A§
{
   import § !_§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4a§:b2Vec2;
      
      public var §;#§:Number;
      
      public var §';§:b2Vec2;
      
      public var §9!7§:Number;
      
      public function b2Jacobian()
      {
         this.§4a§ = new b2Vec2();
         this.§';§ = new b2Vec2();
         super();
      }
      
      public function §>!T§() : void
      {
         this.§4a§.§>!T§();
         this.§;#§ = 0;
         this.§';§.§>!T§();
         this.§9!7§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§4a§.SetV(param1);
         this.§;#§ = param2;
         this.§';§.SetV(param3);
         this.§9!7§ = param4;
      }
      
      public function §#>§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§4a§.x * param1.x + this.§4a§.y * param1.y + this.§;#§ * param2 + (this.§';§.x * param3.x + this.§';§.y * param3.y) + this.§9!7§ * param4;
      }
   }
}
