package §+!0§
{
   import §-%§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § u§:b2Vec2;
      
      public var §1S§:Number;
      
      public var §',§:b2Vec2;
      
      public var §]7§:Number;
      
      public function b2Jacobian()
      {
         this.§ u§ = new b2Vec2();
         this.§',§ = new b2Vec2();
         super();
      }
      
      public function §'p§() : void
      {
         this.§ u§.§'p§();
         this.§1S§ = 0;
         this.§',§.§'p§();
         this.§]7§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§ u§.SetV(param1);
         this.§1S§ = param2;
         this.§',§.SetV(param3);
         this.§]7§ = param4;
      }
      
      public function §3i§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§ u§.x * param1.x + this.§ u§.y * param1.y + this.§1S§ * param2 + (this.§',§.x * param3.x + this.§',§.y * param3.y) + this.§]7§ * param4;
      }
   }
}
