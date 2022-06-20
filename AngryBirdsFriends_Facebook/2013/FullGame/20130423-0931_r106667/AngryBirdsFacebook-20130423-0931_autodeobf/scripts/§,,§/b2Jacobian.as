package §,,§
{
   import §6!^§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §`5§:b2Vec2;
      
      public var §,"N§:Number;
      
      public var §7"M§:b2Vec2;
      
      public var §;!M§:Number;
      
      public function b2Jacobian()
      {
         this.§`5§ = new b2Vec2();
         this.§7"M§ = new b2Vec2();
         super();
      }
      
      public function §%y§() : void
      {
         this.§`5§.§%y§();
         this.§,"N§ = 0;
         this.§7"M§.§%y§();
         this.§;!M§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§`5§.SetV(param1);
         this.§,"N§ = param2;
         this.§7"M§.SetV(param3);
         this.§;!M§ = param4;
      }
      
      public function §5!m§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§`5§.x * param1.x + this.§`5§.y * param1.y + this.§,"N§ * param2 + (this.§7"M§.x * param3.x + this.§7"M§.y * param3.y) + this.§;!M§ * param4;
      }
   }
}
