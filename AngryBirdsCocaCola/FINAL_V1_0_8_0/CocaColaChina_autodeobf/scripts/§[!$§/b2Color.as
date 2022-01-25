package §[!$§
{
   import §6V§.b2Math;
   
   public class b2Color
   {
       
      
      private var §5R§:uint = 0;
      
      private var §[Q§:uint = 0;
      
      private var §7!a§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§5R§ = uint(255 * b2Math.§^7§(param1,0,1));
         this.§[Q§ = uint(255 * b2Math.§^7§(param2,0,1));
         this.§7!a§ = uint(255 * b2Math.§^7§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§5R§ = uint(255 * b2Math.§^7§(param1,0,1));
         this.§[Q§ = uint(255 * b2Math.§^7§(param2,0,1));
         this.§7!a§ = uint(255 * b2Math.§^7§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§5R§ = uint(255 * b2Math.§^7§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§[Q§ = uint(255 * b2Math.§^7§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§7!a§ = uint(255 * b2Math.§^7§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§5R§ << 16 | this.§[Q§ << 8 | this.§7!a§;
      }
   }
}
