package §@h§
{
   import §-!A§.b2Math;
   
   public class b2Color
   {
       
      
      private var §%5§:uint = 0;
      
      private var §>C§:uint = 0;
      
      private var §1<§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§%5§ = uint(255 * b2Math.§;p§(param1,0,1));
         this.§>C§ = uint(255 * b2Math.§;p§(param2,0,1));
         this.§1<§ = uint(255 * b2Math.§;p§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§%5§ = uint(255 * b2Math.§;p§(param1,0,1));
         this.§>C§ = uint(255 * b2Math.§;p§(param2,0,1));
         this.§1<§ = uint(255 * b2Math.§;p§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§%5§ = uint(255 * b2Math.§;p§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§>C§ = uint(255 * b2Math.§;p§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§1<§ = uint(255 * b2Math.§;p§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§%5§ << 16 | this.§>C§ << 8 | this.§1<§;
      }
   }
}
