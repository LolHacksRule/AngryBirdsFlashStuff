package §6$§
{
   import §&!L§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §-R§:b2Vec2;
      
      public var §6n§:Number;
      
      public var §5! §:b2Vec2;
      
      public var §">§:Number;
      
      public function b2Jacobian()
      {
         this.§-R§ = new b2Vec2();
         this.§5! § = new b2Vec2();
         super();
      }
      
      public function §`§() : void
      {
         this.§-R§.§`§();
         this.§6n§ = 0;
         this.§5! §.§`§();
         this.§">§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§-R§.SetV(param1);
         this.§6n§ = param2;
         this.§5! §.SetV(param3);
         this.§">§ = param4;
      }
      
      public function §=X§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§-R§.x * param1.x + this.§-R§.y * param1.y + this.§6n§ * param2 + (this.§5! §.x * param3.x + this.§5! §.y * param3.y) + this.§">§ * param4;
      }
   }
}
