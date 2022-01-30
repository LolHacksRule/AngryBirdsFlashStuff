package §8!k§
{
   import §-!G§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<!9§:b2Vec2;
      
      public var §,!<§:Number;
      
      public var § l§:b2Vec2;
      
      public var §=! §:Number;
      
      public function b2Jacobian()
      {
         this.§<!9§ = new b2Vec2();
         this.§ l§ = new b2Vec2();
         super();
      }
      
      public function §7!@§() : void
      {
         this.§<!9§.§7!@§();
         this.§,!<§ = 0;
         this.§ l§.§7!@§();
         this.§=! § = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§<!9§.SetV(param1);
         this.§,!<§ = param2;
         this.§ l§.SetV(param3);
         this.§=! § = param4;
      }
      
      public function §#!b§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§<!9§.x * param1.x + this.§<!9§.y * param1.y + this.§,!<§ * param2 + (this.§ l§.x * param3.x + this.§ l§.y * param3.y) + this.§=! § * param4;
      }
   }
}
