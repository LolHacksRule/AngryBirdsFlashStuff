package §4x§
{
   import §=i§.b2Math;
   
   public class b2Color
   {
       
      
      private var §?!L§:uint = 0;
      
      private var §1!a§:uint = 0;
      
      private var §8j§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?!L§ = uint(255 * b2Math.§%!c§(param1,0,1));
         this.§1!a§ = uint(255 * b2Math.§%!c§(param2,0,1));
         this.§8j§ = uint(255 * b2Math.§%!c§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?!L§ = uint(255 * b2Math.§%!c§(param1,0,1));
         this.§1!a§ = uint(255 * b2Math.§%!c§(param2,0,1));
         this.§8j§ = uint(255 * b2Math.§%!c§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§?!L§ = uint(255 * b2Math.§%!c§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§1!a§ = uint(255 * b2Math.§%!c§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§8j§ = uint(255 * b2Math.§%!c§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§?!L§ << 16 | this.§1!a§ << 8 | this.§8j§;
      }
   }
}
