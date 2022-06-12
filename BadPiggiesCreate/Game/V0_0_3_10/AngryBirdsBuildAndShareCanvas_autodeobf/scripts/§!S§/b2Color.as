package §!S§
{
   import §?!h§.b2Math;
   
   public class b2Color
   {
       
      
      private var §]!h§:uint = 0;
      
      private var §+§:uint = 0;
      
      private var §^"1§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§]!h§ = uint(255 * b2Math.§9!n§(param1,0,1));
         this.§+§ = uint(255 * b2Math.§9!n§(param2,0,1));
         this.§^"1§ = uint(255 * b2Math.§9!n§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§]!h§ = uint(255 * b2Math.§9!n§(param1,0,1));
         this.§+§ = uint(255 * b2Math.§9!n§(param2,0,1));
         this.§^"1§ = uint(255 * b2Math.§9!n§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§]!h§ = uint(255 * b2Math.§9!n§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§+§ = uint(255 * b2Math.§9!n§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§^"1§ = uint(255 * b2Math.§9!n§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§]!h§ << 16 | this.§+§ << 8 | this.§^"1§;
      }
   }
}
