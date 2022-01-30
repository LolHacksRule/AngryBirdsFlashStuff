package §"s§
{
   import §[K§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §38§:b2Vec2;
      
      public var §-!7§:Number;
      
      public var §`u§:b2Vec2;
      
      public var §#"0§:Number;
      
      public function b2Jacobian()
      {
         this.§38§ = new b2Vec2();
         this.§`u§ = new b2Vec2();
         super();
      }
      
      public function §3S§() : void
      {
         this.§38§.§3S§();
         this.§-!7§ = 0;
         this.§`u§.§3S§();
         this.§#"0§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§38§.SetV(param1);
         this.§-!7§ = param2;
         this.§`u§.SetV(param3);
         this.§#"0§ = param4;
      }
      
      public function §36§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§38§.x * param1.x + this.§38§.y * param1.y + this.§-!7§ * param2 + (this.§`u§.x * param3.x + this.§`u§.y * param3.y) + this.§#"0§ * param4;
      }
   }
}
