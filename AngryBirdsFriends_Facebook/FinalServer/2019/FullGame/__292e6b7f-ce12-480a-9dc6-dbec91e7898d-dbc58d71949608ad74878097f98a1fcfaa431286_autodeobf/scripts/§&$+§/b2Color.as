package §&$+§
{
   import §04§.b2Math;
   
   public class b2Color
   {
       
      
      private var §]#n§:uint = 0;
      
      private var §@!m§:uint = 0;
      
      private var §2!r§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§]#n§ = uint(255 * b2Math.§!!7§(param1,0,1));
         this.§@!m§ = uint(255 * b2Math.§!!7§(param2,0,1));
         this.§2!r§ = uint(255 * b2Math.§!!7§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§]#n§ = uint(255 * b2Math.§!!7§(param1,0,1));
         this.§@!m§ = uint(255 * b2Math.§!!7§(param2,0,1));
         this.§2!r§ = uint(255 * b2Math.§!!7§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§]#n§ = uint(255 * b2Math.§!!7§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§@!m§ = uint(255 * b2Math.§!!7§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§2!r§ = uint(255 * b2Math.§!!7§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§]#n§ << 16 | this.§@!m§ << 8 | this.§2!r§;
      }
   }
}
