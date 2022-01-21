package §9i§
{
   import §!R§.b2Math;
   
   public class b2Color
   {
       
      
      private var §;c§:uint = 0;
      
      private var §'!E§:uint = 0;
      
      private var §2b§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§;c§ = uint(255 * b2Math.§%!i§(param1,0,1));
         this.§'!E§ = uint(255 * b2Math.§%!i§(param2,0,1));
         this.§2b§ = uint(255 * b2Math.§%!i§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§;c§ = uint(255 * b2Math.§%!i§(param1,0,1));
         this.§'!E§ = uint(255 * b2Math.§%!i§(param2,0,1));
         this.§2b§ = uint(255 * b2Math.§%!i§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§;c§ = uint(255 * b2Math.§%!i§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'!E§ = uint(255 * b2Math.§%!i§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§2b§ = uint(255 * b2Math.§%!i§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§;c§ << 16 | this.§'!E§ << 8 | this.§2b§;
      }
   }
}
