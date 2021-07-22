package §"G§
{
   import §7F§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §[^§:b2Vec2;
      
      public var §;!t§:Number;
      
      public var §!0§:b2Vec2;
      
      public var §9<§:Number;
      
      public function b2Jacobian()
      {
         this.§[^§ = new b2Vec2();
         this.§!0§ = new b2Vec2();
         super();
      }
      
      public function §%"0§() : void
      {
         this.§[^§.§%"0§();
         this.§;!t§ = 0;
         this.§!0§.§%"0§();
         this.§9<§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§[^§.SetV(param1);
         this.§;!t§ = param2;
         this.§!0§.SetV(param3);
         this.§9<§ = param4;
      }
      
      public function §5!<§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§[^§.x * param1.x + this.§[^§.y * param1.y + this.§;!t§ * param2 + (this.§!0§.x * param3.x + this.§!0§.y * param3.y) + this.§9<§ * param4;
      }
   }
}
