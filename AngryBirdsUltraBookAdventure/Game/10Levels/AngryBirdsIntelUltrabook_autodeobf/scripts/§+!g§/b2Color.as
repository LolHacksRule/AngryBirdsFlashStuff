package §+!g§
{
   import §>!8§.b2Math;
   
   public class b2Color
   {
       
      
      private var §-!]§:uint = 0;
      
      private var §'P§:uint = 0;
      
      private var §%! §:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
         this.§'P§ = uint(255 * b2Math.§3X§(param2,0,1));
         this.§%! § = uint(255 * b2Math.§3X§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
         this.§'P§ = uint(255 * b2Math.§3X§(param2,0,1));
         this.§%! § = uint(255 * b2Math.§3X§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'P§ = uint(255 * b2Math.§3X§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§%! § = uint(255 * b2Math.§3X§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§-!]§ << 16 | this.§'P§ << 8 | this.§%! §;
      }
   }
}
