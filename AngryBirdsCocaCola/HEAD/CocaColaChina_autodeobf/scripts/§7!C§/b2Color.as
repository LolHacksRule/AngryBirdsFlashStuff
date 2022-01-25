package §7!C§
{
   import §&!L§.b2Math;
   
   public class b2Color
   {
       
      
      private var §3x§:uint = 0;
      
      private var §&!2§:uint = 0;
      
      private var § Y§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§3x§ = uint(255 * b2Math.§2m§(param1,0,1));
         this.§&!2§ = uint(255 * b2Math.§2m§(param2,0,1));
         this.§ Y§ = uint(255 * b2Math.§2m§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§3x§ = uint(255 * b2Math.§2m§(param1,0,1));
         this.§&!2§ = uint(255 * b2Math.§2m§(param2,0,1));
         this.§ Y§ = uint(255 * b2Math.§2m§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§3x§ = uint(255 * b2Math.§2m§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§&!2§ = uint(255 * b2Math.§2m§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§ Y§ = uint(255 * b2Math.§2m§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§3x§ << 16 | this.§&!2§ << 8 | this.§ Y§;
      }
   }
}
