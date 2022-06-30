package §+&§
{
   import § !_§.b2Math;
   
   public class b2Color
   {
       
      
      private var §;^§:uint = 0;
      
      private var §&y§:uint = 0;
      
      private var §2!#§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§;^§ = uint(255 * b2Math.§-F§(param1,0,1));
         this.§&y§ = uint(255 * b2Math.§-F§(param2,0,1));
         this.§2!#§ = uint(255 * b2Math.§-F§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§;^§ = uint(255 * b2Math.§-F§(param1,0,1));
         this.§&y§ = uint(255 * b2Math.§-F§(param2,0,1));
         this.§2!#§ = uint(255 * b2Math.§-F§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§;^§ = uint(255 * b2Math.§-F§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§&y§ = uint(255 * b2Math.§-F§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§2!#§ = uint(255 * b2Math.§-F§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§;^§ << 16 | this.§&y§ << 8 | this.§2!#§;
      }
   }
}
