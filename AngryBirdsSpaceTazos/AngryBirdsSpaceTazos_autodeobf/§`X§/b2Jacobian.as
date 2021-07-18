package §`X§
{
   import §9t§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@`§:b2Vec2;
      
      public var §7"A§:Number;
      
      public var §?9§:b2Vec2;
      
      public var §7F§:Number;
      
      public function b2Jacobian()
      {
         this.§@`§ = new b2Vec2();
         this.§?9§ = new b2Vec2();
         super();
      }
      
      public function §@!d§() : void
      {
         this.§@`§.§@!d§();
         this.§7"A§ = 0;
         this.§?9§.§@!d§();
         this.§7F§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§@`§.SetV(param1);
         this.§7"A§ = param2;
         this.§?9§.SetV(param3);
         this.§7F§ = param4;
      }
      
      public function §3!u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§@`§.x * param1.x + this.§@`§.y * param1.y + this.§7"A§ * param2 + (this.§?9§.x * param3.x + this.§?9§.y * param3.y) + this.§7F§ * param4;
      }
   }
}
