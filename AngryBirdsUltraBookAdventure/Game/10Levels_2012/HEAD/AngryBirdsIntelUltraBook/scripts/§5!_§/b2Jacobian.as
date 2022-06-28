package §5!_§
{
   import §?!&§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §;!e§:b2Vec2;
      
      public var §9D§:Number;
      
      public var §8!R§:b2Vec2;
      
      public var §<!2§:Number;
      
      public function b2Jacobian()
      {
         this.§;!e§ = new b2Vec2();
         this.§8!R§ = new b2Vec2();
         super();
      }
      
      public function §@l§() : void
      {
         this.§;!e§.§@l§();
         this.§9D§ = 0;
         this.§8!R§.§@l§();
         this.§<!2§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§;!e§.SetV(param1);
         this.§9D§ = param2;
         this.§8!R§.SetV(param3);
         this.§<!2§ = param4;
      }
      
      public function §;7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§;!e§.x * param1.x + this.§;!e§.y * param1.y + this.§9D§ * param2 + (this.§8!R§.x * param3.x + this.§8!R§.y * param3.y) + this.§<!2§ * param4;
      }
   }
}
