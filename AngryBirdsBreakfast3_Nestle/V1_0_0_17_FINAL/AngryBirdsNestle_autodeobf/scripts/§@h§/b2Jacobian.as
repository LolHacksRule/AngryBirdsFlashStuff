package §@h§
{
   import §@!E§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3!u§:b2Vec2;
      
      public var §&'§:Number;
      
      public var §]@§:b2Vec2;
      
      public var §5!C§:Number;
      
      public function b2Jacobian()
      {
         this.§3!u§ = new b2Vec2();
         this.§]@§ = new b2Vec2();
         super();
      }
      
      public function §>![§() : void
      {
         this.§3!u§.§>![§();
         this.§&'§ = 0;
         this.§]@§.§>![§();
         this.§5!C§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§3!u§.SetV(param1);
         this.§&'§ = param2;
         this.§]@§.SetV(param3);
         this.§5!C§ = param4;
      }
      
      public function §%"2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§3!u§.x * param1.x + this.§3!u§.y * param1.y + this.§&'§ * param2 + (this.§]@§.x * param3.x + this.§]@§.y * param3.y) + this.§5!C§ * param4;
      }
   }
}
