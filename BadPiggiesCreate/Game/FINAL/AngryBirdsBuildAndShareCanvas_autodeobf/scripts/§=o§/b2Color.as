package §=o§
{
   import §2"=§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2c§:uint = 0;
      
      private var §7!7§:uint = 0;
      
      private var §<U§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
         this.§7!7§ = uint(255 * b2Math.§&>§(param2,0,1));
         this.§<U§ = uint(255 * b2Math.§&>§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
         this.§7!7§ = uint(255 * b2Math.§&>§(param2,0,1));
         this.§<U§ = uint(255 * b2Math.§&>§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§7!7§ = uint(255 * b2Math.§&>§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§<U§ = uint(255 * b2Math.§&>§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§2c§ << 16 | this.§7!7§ << 8 | this.§<U§;
      }
   }
}
