package §>!R§
{
   import §-%§.b2Math;
   
   public class b2Color
   {
       
      
      private var §^+§:uint = 0;
      
      private var §%!c§:uint = 0;
      
      private var §+"%§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§^+§ = uint(255 * b2Math.§!P§(param1,0,1));
         this.§%!c§ = uint(255 * b2Math.§!P§(param2,0,1));
         this.§+"%§ = uint(255 * b2Math.§!P§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§^+§ = uint(255 * b2Math.§!P§(param1,0,1));
         this.§%!c§ = uint(255 * b2Math.§!P§(param2,0,1));
         this.§+"%§ = uint(255 * b2Math.§!P§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§^+§ = uint(255 * b2Math.§!P§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§%!c§ = uint(255 * b2Math.§!P§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§+"%§ = uint(255 * b2Math.§!P§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§^+§ << 16 | this.§%!c§ << 8 | this.§+"%§;
      }
   }
}
