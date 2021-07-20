package §@!3§
{
   import §&H§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+L§:uint = 0;
      
      private var §#!x§:uint = 0;
      
      private var §>w§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
         this.§#!x§ = uint(255 * b2Math.§?!?§(param2,0,1));
         this.§>w§ = uint(255 * b2Math.§?!?§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
         this.§#!x§ = uint(255 * b2Math.§?!?§(param2,0,1));
         this.§>w§ = uint(255 * b2Math.§?!?§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§#!x§ = uint(255 * b2Math.§?!?§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§>w§ = uint(255 * b2Math.§?!?§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§+L§ << 16 | this.§#!x§ << 8 | this.§>w§;
      }
   }
}
