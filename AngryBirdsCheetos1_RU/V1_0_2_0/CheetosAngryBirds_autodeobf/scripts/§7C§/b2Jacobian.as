package §7C§
{
   import §&!+§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<#§:b2Vec2;
      
      public var § !'§:Number;
      
      public var §7p§:b2Vec2;
      
      public var §`! §:Number;
      
      public function b2Jacobian()
      {
         this.§<#§ = new b2Vec2();
         this.§7p§ = new b2Vec2();
         super();
      }
      
      public function §8Q§() : void
      {
         this.§<#§.§8Q§();
         this.§ !'§ = 0;
         this.§7p§.§8Q§();
         this.§`! § = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§<#§.SetV(param1);
         this.§ !'§ = param2;
         this.§7p§.SetV(param3);
         this.§`! § = param4;
      }
      
      public function §,!Z§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§<#§.x * param1.x + this.§<#§.y * param1.y + this.§ !'§ * param2 + (this.§7p§.x * param3.x + this.§7p§.y * param3.y) + this.§`! § * param4;
      }
   }
}
