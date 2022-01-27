package §=![§
{
   import §7"A§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §8!G§:b2Vec2;
      
      public var §`!&§:Number;
      
      public var §1"r§:b2Vec2;
      
      public var §%Z§:Number;
      
      public function b2Jacobian()
      {
         this.§8!G§ = new b2Vec2();
         this.§1"r§ = new b2Vec2();
         super();
      }
      
      public function §6![§() : void
      {
         this.§8!G§.§6![§();
         this.§`!&§ = 0;
         this.§1"r§.§6![§();
         this.§%Z§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§8!G§.SetV(param1);
         this.§`!&§ = param2;
         this.§1"r§.SetV(param3);
         this.§%Z§ = param4;
      }
      
      public function §2#!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§8!G§.x * param1.x + this.§8!G§.y * param1.y + this.§`!&§ * param2 + (this.§1"r§.x * param3.x + this.§1"r§.y * param3.y) + this.§%Z§ * param4;
      }
   }
}
