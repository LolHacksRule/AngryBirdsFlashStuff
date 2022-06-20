package §5v§
{
   import §6!R§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §do §:b2Vec2;
      
      public var §>$=§:Number;
      
      public var §`#m§:b2Vec2;
      
      public var §!#l§:Number;
      
      public function b2Jacobian()
      {
         this.§do § = new b2Vec2();
         this.§`#m§ = new b2Vec2();
         super();
      }
      
      public function §%"N§() : void
      {
         this.§do §.§%"N§();
         this.§>$=§ = 0;
         this.§`#m§.§%"N§();
         this.§!#l§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§do §.SetV(param1);
         this.§>$=§ = param2;
         this.§`#m§.SetV(param3);
         this.§!#l§ = param4;
      }
      
      public function §1#V§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§do §.x * param1.x + this.§do §.y * param1.y + this.§>$=§ * param2 + (this.§`#m§.x * param3.x + this.§`#m§.y * param3.y) + this.§!#l§ * param4;
      }
   }
}
