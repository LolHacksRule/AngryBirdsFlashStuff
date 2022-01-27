package §9!s§
{
   import §^>§.b2Math;
   
   public class b2Color
   {
       
      
      private var §&L§:uint = 0;
      
      private var §`s§:uint = 0;
      
      private var §-![§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§&L§ = uint(255 * b2Math.§2"R§(param1,0,1));
         this.§`s§ = uint(255 * b2Math.§2"R§(param2,0,1));
         this.§-![§ = uint(255 * b2Math.§2"R§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§&L§ = uint(255 * b2Math.§2"R§(param1,0,1));
         this.§`s§ = uint(255 * b2Math.§2"R§(param2,0,1));
         this.§-![§ = uint(255 * b2Math.§2"R§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§&L§ = uint(255 * b2Math.§2"R§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§`s§ = uint(255 * b2Math.§2"R§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§-![§ = uint(255 * b2Math.§2"R§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§&L§ << 16 | this.§`s§ << 8 | this.§-![§;
      }
   }
}
