package §2_§
{
   import §?!C§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3!2§:b2Vec2;
      
      public var §<=§:Number;
      
      public var §5"T§:b2Vec2;
      
      public var §3"t§:Number;
      
      public function b2Jacobian()
      {
         this.§3!2§ = new b2Vec2();
         this.§5"T§ = new b2Vec2();
         super();
      }
      
      public function §1c§() : void
      {
         this.§3!2§.§1c§();
         this.§<=§ = 0;
         this.§5"T§.§1c§();
         this.§3"t§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§3!2§.SetV(param1);
         this.§<=§ = param2;
         this.§5"T§.SetV(param3);
         this.§3"t§ = param4;
      }
      
      public function §8!+§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§3!2§.x * param1.x + this.§3!2§.y * param1.y + this.§<=§ * param2 + (this.§5"T§.x * param3.x + this.§5"T§.y * param3.y) + this.§3"t§ * param4;
      }
   }
}
