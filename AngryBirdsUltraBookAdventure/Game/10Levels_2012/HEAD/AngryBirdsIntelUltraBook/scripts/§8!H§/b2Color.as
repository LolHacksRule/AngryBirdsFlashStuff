package §8!H§
{
   import §?!&§.b2Math;
   
   public class b2Color
   {
       
      
      private var §,R§:uint = 0;
      
      private var §@!V§:uint = 0;
      
      private var §#m§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
         this.§@!V§ = uint(255 * b2Math.§"J§(param2,0,1));
         this.§#m§ = uint(255 * b2Math.§"J§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
         this.§@!V§ = uint(255 * b2Math.§"J§(param2,0,1));
         this.§#m§ = uint(255 * b2Math.§"J§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§@!V§ = uint(255 * b2Math.§"J§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§#m§ = uint(255 * b2Math.§"J§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§,R§ << 16 | this.§@!V§ << 8 | this.§#m§;
      }
   }
}
