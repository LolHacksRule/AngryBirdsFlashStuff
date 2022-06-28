package §[!N§
{
   import §8>§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §+O§:b2Vec2;
      
      public var §6w§:Number;
      
      public var §[!k§:b2Vec2;
      
      public var §`e§:Number;
      
      public function b2Jacobian()
      {
         this.§+O§ = new b2Vec2();
         this.§[!k§ = new b2Vec2();
         super();
      }
      
      public function §%&§() : void
      {
         this.§+O§.§%&§();
         this.§6w§ = 0;
         this.§[!k§.§%&§();
         this.§`e§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§+O§.SetV(param1);
         this.§6w§ = param2;
         this.§[!k§.SetV(param3);
         this.§`e§ = param4;
      }
      
      public function §,#§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§+O§.x * param1.x + this.§+O§.y * param1.y + this.§6w§ * param2 + (this.§[!k§.x * param3.x + this.§[!k§.y * param3.y) + this.§`e§ * param4;
      }
   }
}
