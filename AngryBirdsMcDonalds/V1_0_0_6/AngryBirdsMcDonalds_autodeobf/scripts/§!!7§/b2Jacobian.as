package §!!7§
{
   import §@![§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §]0§:b2Vec2;
      
      public var §<2§:Number;
      
      public var §`j§:b2Vec2;
      
      public var §<,§:Number;
      
      public function b2Jacobian()
      {
         this.§]0§ = new b2Vec2();
         this.§`j§ = new b2Vec2();
         super();
      }
      
      public function §%!&§() : void
      {
         this.§]0§.§%!&§();
         this.§<2§ = 0;
         this.§`j§.§%!&§();
         this.§<,§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§]0§.SetV(param1);
         this.§<2§ = param2;
         this.§`j§.SetV(param3);
         this.§<,§ = param4;
      }
      
      public function §0!1§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§]0§.x * param1.x + this.§]0§.y * param1.y + this.§<2§ * param2 + (this.§`j§.x * param3.x + this.§`j§.y * param3.y) + this.§<,§ * param4;
      }
   }
}
