package §54§
{
   import §;h§.b2Math;
   
   public class b2Color
   {
       
      
      private var §`!B§:uint = 0;
      
      private var §;o§:uint = 0;
      
      private var §?k§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§`!B§ = uint(255 * b2Math.§!!T§(param1,0,1));
         this.§;o§ = uint(255 * b2Math.§!!T§(param2,0,1));
         this.§?k§ = uint(255 * b2Math.§!!T§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§`!B§ = uint(255 * b2Math.§!!T§(param1,0,1));
         this.§;o§ = uint(255 * b2Math.§!!T§(param2,0,1));
         this.§?k§ = uint(255 * b2Math.§!!T§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§`!B§ = uint(255 * b2Math.§!!T§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§;o§ = uint(255 * b2Math.§!!T§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§?k§ = uint(255 * b2Math.§!!T§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§`!B§ << 16 | this.§;o§ << 8 | this.§?k§;
      }
   }
}
