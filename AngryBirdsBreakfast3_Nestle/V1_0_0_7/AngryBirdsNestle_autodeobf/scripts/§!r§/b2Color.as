package §!r§
{
   import §-!2§.b2Math;
   
   public class b2Color
   {
       
      
      private var §9!9§:uint = 0;
      
      private var §52§:uint = 0;
      
      private var §]"1§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§9!9§ = uint(255 * b2Math.§+u§(param1,0,1));
         this.§52§ = uint(255 * b2Math.§+u§(param2,0,1));
         this.§]"1§ = uint(255 * b2Math.§+u§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§9!9§ = uint(255 * b2Math.§+u§(param1,0,1));
         this.§52§ = uint(255 * b2Math.§+u§(param2,0,1));
         this.§]"1§ = uint(255 * b2Math.§+u§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§9!9§ = uint(255 * b2Math.§+u§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§52§ = uint(255 * b2Math.§+u§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§]"1§ = uint(255 * b2Math.§+u§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§9!9§ << 16 | this.§52§ << 8 | this.§]"1§;
      }
   }
}
