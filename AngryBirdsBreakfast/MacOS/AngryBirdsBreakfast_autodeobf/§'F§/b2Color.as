package §'F§
{
   import §6Z§.b2Math;
   
   public class b2Color
   {
       
      
      private var §%!G§:uint = 0;
      
      private var § !g§:uint = 0;
      
      private var § !C§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
         this.§ !g§ = uint(255 * b2Math.§&a§(param2,0,1));
         this.§ !C§ = uint(255 * b2Math.§&a§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
         this.§ !g§ = uint(255 * b2Math.§&a§(param2,0,1));
         this.§ !C§ = uint(255 * b2Math.§&a§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§ !g§ = uint(255 * b2Math.§&a§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§ !C§ = uint(255 * b2Math.§&a§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§%!G§ << 16 | this.§ !g§ << 8 | this.§ !C§;
      }
   }
}
