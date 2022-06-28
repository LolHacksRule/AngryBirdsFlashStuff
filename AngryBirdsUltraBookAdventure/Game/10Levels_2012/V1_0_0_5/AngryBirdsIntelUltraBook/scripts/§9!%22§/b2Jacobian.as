package §9!"§
{
   import §>H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@"§:b2Vec2;
      
      public var §<#§:Number;
      
      public var §7!A§:b2Vec2;
      
      public var §?!8§:Number;
      
      public function b2Jacobian()
      {
         this.§@"§ = new b2Vec2();
         this.§7!A§ = new b2Vec2();
         super();
      }
      
      public function §`!5§() : void
      {
         this.§@"§.§`!5§();
         this.§<#§ = 0;
         this.§7!A§.§`!5§();
         this.§?!8§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§@"§.SetV(param1);
         this.§<#§ = param2;
         this.§7!A§.SetV(param3);
         this.§?!8§ = param4;
      }
      
      public function §8!^§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§@"§.x * param1.x + this.§@"§.y * param1.y + this.§<#§ * param2 + (this.§7!A§.x * param3.x + this.§7!A§.y * param3.y) + this.§?!8§ * param4;
      }
   }
}
