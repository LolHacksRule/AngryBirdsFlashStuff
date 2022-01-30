package §[M§
{
   import §1!z§.b2Math;
   
   public class b2Color
   {
       
      
      private var §?#§:uint = 0;
      
      private var §0!s§:uint = 0;
      
      private var §;%§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?#§ = uint(255 * b2Math.§`"?§(param1,0,1));
         this.§0!s§ = uint(255 * b2Math.§`"?§(param2,0,1));
         this.§;%§ = uint(255 * b2Math.§`"?§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?#§ = uint(255 * b2Math.§`"?§(param1,0,1));
         this.§0!s§ = uint(255 * b2Math.§`"?§(param2,0,1));
         this.§;%§ = uint(255 * b2Math.§`"?§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§?#§ = uint(255 * b2Math.§`"?§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§0!s§ = uint(255 * b2Math.§`"?§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§;%§ = uint(255 * b2Math.§`"?§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§?#§ << 16 | this.§0!s§ << 8 | this.§;%§;
      }
   }
}
