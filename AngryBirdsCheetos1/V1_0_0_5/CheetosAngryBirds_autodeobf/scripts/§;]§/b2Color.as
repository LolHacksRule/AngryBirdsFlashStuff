package §;]§
{
   import §=E§.b2Math;
   
   public class b2Color
   {
       
      
      private var §?!G§:uint = 0;
      
      private var §=A§:uint = 0;
      
      private var §"K§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?!G§ = uint(255 * b2Math.§2a§(param1,0,1));
         this.§=A§ = uint(255 * b2Math.§2a§(param2,0,1));
         this.§"K§ = uint(255 * b2Math.§2a§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?!G§ = uint(255 * b2Math.§2a§(param1,0,1));
         this.§=A§ = uint(255 * b2Math.§2a§(param2,0,1));
         this.§"K§ = uint(255 * b2Math.§2a§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§?!G§ = uint(255 * b2Math.§2a§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§=A§ = uint(255 * b2Math.§2a§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§"K§ = uint(255 * b2Math.§2a§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§?!G§ << 16 | this.§=A§ << 8 | this.§"K§;
      }
   }
}
