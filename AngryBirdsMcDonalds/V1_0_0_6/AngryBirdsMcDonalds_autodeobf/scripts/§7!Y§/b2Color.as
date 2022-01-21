package §7!Y§
{
   import §@![§.b2Math;
   
   public class b2Color
   {
       
      
      private var §"P§:uint = 0;
      
      private var §'!U§:uint = 0;
      
      private var §5e§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"P§ = uint(255 * b2Math.§1!P§(param1,0,1));
         this.§'!U§ = uint(255 * b2Math.§1!P§(param2,0,1));
         this.§5e§ = uint(255 * b2Math.§1!P§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§"P§ = uint(255 * b2Math.§1!P§(param1,0,1));
         this.§'!U§ = uint(255 * b2Math.§1!P§(param2,0,1));
         this.§5e§ = uint(255 * b2Math.§1!P§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§"P§ = uint(255 * b2Math.§1!P§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'!U§ = uint(255 * b2Math.§1!P§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§5e§ = uint(255 * b2Math.§1!P§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§"P§ << 16 | this.§'!U§ << 8 | this.§5e§;
      }
   }
}
