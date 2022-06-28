package §+!,§
{
   import §&L§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2i§:uint = 0;
      
      private var §>l§:uint = 0;
      
      private var §[!C§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
         this.§>l§ = uint(255 * b2Math.§[$§(param2,0,1));
         this.§[!C§ = uint(255 * b2Math.§[$§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
         this.§>l§ = uint(255 * b2Math.§[$§(param2,0,1));
         this.§[!C§ = uint(255 * b2Math.§[$§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§>l§ = uint(255 * b2Math.§[$§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§[!C§ = uint(255 * b2Math.§[$§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§2i§ << 16 | this.§>l§ << 8 | this.§[!C§;
      }
   }
}
