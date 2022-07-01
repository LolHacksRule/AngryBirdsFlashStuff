package §^+§
{
   import §+L§.b2Math;
   
   public class b2Color
   {
       
      
      private var § use§:uint = 0;
      
      private var §]b§:uint = 0;
      
      private var §9!U§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§ use§ = uint(255 * b2Math.§`V§(param1,0,1));
         this.§]b§ = uint(255 * b2Math.§`V§(param2,0,1));
         this.§9!U§ = uint(255 * b2Math.§`V§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§ use§ = uint(255 * b2Math.§`V§(param1,0,1));
         this.§]b§ = uint(255 * b2Math.§`V§(param2,0,1));
         this.§9!U§ = uint(255 * b2Math.§`V§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§ use§ = uint(255 * b2Math.§`V§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§]b§ = uint(255 * b2Math.§`V§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§9!U§ = uint(255 * b2Math.§`V§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§ use§ << 16 | this.§]b§ << 8 | this.§9!U§;
      }
   }
}
