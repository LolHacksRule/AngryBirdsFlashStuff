package §=;§
{
   import §>!8§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §-P§:b2Vec2;
      
      public var §2>§:Number;
      
      public var §=!-§:b2Vec2;
      
      public var §9@§:Number;
      
      public function b2Jacobian()
      {
         this.§-P§ = new b2Vec2();
         this.§=!-§ = new b2Vec2();
         super();
      }
      
      public function §@!;§() : void
      {
         this.§-P§.§@!;§();
         this.§2>§ = 0;
         this.§=!-§.§@!;§();
         this.§9@§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§-P§.SetV(param1);
         this.§2>§ = param2;
         this.§=!-§.SetV(param3);
         this.§9@§ = param4;
      }
      
      public function §5!i§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§-P§.x * param1.x + this.§-P§.y * param1.y + this.§2>§ * param2 + (this.§=!-§.x * param3.x + this.§=!-§.y * param3.y) + this.§9@§ * param4;
      }
   }
}
