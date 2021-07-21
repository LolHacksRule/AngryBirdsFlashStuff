package §?s§
{
   import §<!B§.b2Math;
   
   public class b2Color
   {
       
      
      private var §!!O§:uint = 0;
      
      private var §&!o§:uint = 0;
      
      private var §"!s§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
         this.§&!o§ = uint(255 * b2Math.§%!j§(param2,0,1));
         this.§"!s§ = uint(255 * b2Math.§%!j§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
         this.§&!o§ = uint(255 * b2Math.§%!j§(param2,0,1));
         this.§"!s§ = uint(255 * b2Math.§%!j§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§&!o§ = uint(255 * b2Math.§%!j§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§"!s§ = uint(255 * b2Math.§%!j§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§!!O§ << 16 | this.§&!o§ << 8 | this.§"!s§;
      }
   }
}
