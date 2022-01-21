package §;N§
{
   import §!R§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §1Q§:b2Vec2;
      
      public var §!!9§:Number;
      
      public var §#9§:b2Vec2;
      
      public var §7!?§:Number;
      
      public function b2Jacobian()
      {
         this.§1Q§ = new b2Vec2();
         this.§#9§ = new b2Vec2();
         super();
      }
      
      public function §"9§() : void
      {
         this.§1Q§.§"9§();
         this.§!!9§ = 0;
         this.§#9§.§"9§();
         this.§7!?§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§1Q§.SetV(param1);
         this.§!!9§ = param2;
         this.§#9§.SetV(param3);
         this.§7!?§ = param4;
      }
      
      public function §`l§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§1Q§.x * param1.x + this.§1Q§.y * param1.y + this.§!!9§ * param2 + (this.§#9§.x * param3.x + this.§#9§.y * param3.y) + this.§7!?§ * param4;
      }
   }
}
