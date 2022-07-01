package §7"'§
{
   import §-!G§.b2Math;
   
   public class b2Color
   {
       
      
      private var §?! §:uint = 0;
      
      private var §,"6§:uint = 0;
      
      private var §3t§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?! § = uint(255 * b2Math.§<C§(param1,0,1));
         this.§,"6§ = uint(255 * b2Math.§<C§(param2,0,1));
         this.§3t§ = uint(255 * b2Math.§<C§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?! § = uint(255 * b2Math.§<C§(param1,0,1));
         this.§,"6§ = uint(255 * b2Math.§<C§(param2,0,1));
         this.§3t§ = uint(255 * b2Math.§<C§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§?! § = uint(255 * b2Math.§<C§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§,"6§ = uint(255 * b2Math.§<C§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§3t§ = uint(255 * b2Math.§<C§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§?! § << 16 | this.§,"6§ << 8 | this.§3t§;
      }
   }
}
