package §5"i§
{
   import §[R§.b2Math;
   
   public class b2Color
   {
       
      
      private var § 7§:uint = 0;
      
      private var §35§:uint = 0;
      
      private var §=!A§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
         this.§35§ = uint(255 * b2Math.§<"X§(param2,0,1));
         this.§=!A§ = uint(255 * b2Math.§<"X§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
         this.§35§ = uint(255 * b2Math.§<"X§(param2,0,1));
         this.§=!A§ = uint(255 * b2Math.§<"X§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§35§ = uint(255 * b2Math.§<"X§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§=!A§ = uint(255 * b2Math.§<"X§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§ 7§ << 16 | this.§35§ << 8 | this.§=!A§;
      }
   }
}
