package §1!2§
{
   import §[R§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §43§:b2Vec2;
      
      public var §'[§:Number;
      
      public var §`#C§:b2Vec2;
      
      public var §5V§:Number;
      
      public function b2Jacobian()
      {
         this.§43§ = new b2Vec2();
         this.§`#C§ = new b2Vec2();
         super();
      }
      
      public function §&"Q§() : void
      {
         this.§43§.§&"Q§();
         this.§'[§ = 0;
         this.§`#C§.§&"Q§();
         this.§5V§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§43§.SetV(param1);
         this.§'[§ = param2;
         this.§`#C§.SetV(param3);
         this.§5V§ = param4;
      }
      
      public function §1#7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§43§.x * param1.x + this.§43§.y * param1.y + this.§'[§ * param2 + (this.§`#C§.x * param3.x + this.§`#C§.y * param3.y) + this.§5V§ * param4;
      }
   }
}
