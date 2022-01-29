package §,!s§
{
   import § "%§.b2Math;
   
   public class b2Color
   {
       
      
      private var §9"§:uint = 0;
      
      private var §^"g§:uint = 0;
      
      private var §<N§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§9"§ = uint(255 * b2Math.§0"k§(param1,0,1));
         this.§^"g§ = uint(255 * b2Math.§0"k§(param2,0,1));
         this.§<N§ = uint(255 * b2Math.§0"k§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§9"§ = uint(255 * b2Math.§0"k§(param1,0,1));
         this.§^"g§ = uint(255 * b2Math.§0"k§(param2,0,1));
         this.§<N§ = uint(255 * b2Math.§0"k§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§9"§ = uint(255 * b2Math.§0"k§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§^"g§ = uint(255 * b2Math.§0"k§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§<N§ = uint(255 * b2Math.§0"k§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§9"§ << 16 | this.§^"g§ << 8 | this.§<N§;
      }
   }
}
