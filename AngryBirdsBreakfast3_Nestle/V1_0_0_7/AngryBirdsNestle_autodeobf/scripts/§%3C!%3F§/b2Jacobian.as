package §<!?§
{
   import §-!2§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §>!i§:b2Vec2;
      
      public var §-"#§:Number;
      
      public var §%!i§:b2Vec2;
      
      public var §,"2§:Number;
      
      public function b2Jacobian()
      {
         this.§>!i§ = new b2Vec2();
         this.§%!i§ = new b2Vec2();
         super();
      }
      
      public function §`5§() : void
      {
         this.§>!i§.§`5§();
         this.§-"#§ = 0;
         this.§%!i§.§`5§();
         this.§,"2§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§>!i§.SetV(param1);
         this.§-"#§ = param2;
         this.§%!i§.SetV(param3);
         this.§,"2§ = param4;
      }
      
      public function §<!b§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§>!i§.x * param1.x + this.§>!i§.y * param1.y + this.§-"#§ * param2 + (this.§%!i§.x * param3.x + this.§%!i§.y * param3.y) + this.§,"2§ * param4;
      }
   }
}
