package §3!U§
{
   import §%!9§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §>##§:b2Vec2;
      
      public var §7"l§:Number;
      
      public var §&4§:b2Vec2;
      
      public var §%!+§:Number;
      
      public function b2Jacobian()
      {
         this.§>##§ = new b2Vec2();
         this.§&4§ = new b2Vec2();
         super();
      }
      
      public function §2!9§() : void
      {
         this.§>##§.§2!9§();
         this.§7"l§ = 0;
         this.§&4§.§2!9§();
         this.§%!+§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§>##§.SetV(param1);
         this.§7"l§ = param2;
         this.§&4§.SetV(param3);
         this.§%!+§ = param4;
      }
      
      public function §?N§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§>##§.x * param1.x + this.§>##§.y * param1.y + this.§7"l§ * param2 + (this.§&4§.x * param3.x + this.§&4§.y * param3.y) + this.§%!+§ * param4;
      }
   }
}
