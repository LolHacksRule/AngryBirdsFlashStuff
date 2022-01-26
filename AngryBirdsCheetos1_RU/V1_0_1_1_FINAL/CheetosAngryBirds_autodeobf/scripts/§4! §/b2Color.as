package §4! §
{
   import §^q§.b2Math;
   
   public class b2Color
   {
       
      
      private var §]!+§:uint = 0;
      
      private var §'U§:uint = 0;
      
      private var §#=§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§]!+§ = uint(255 * b2Math.§in§(param1,0,1));
         this.§'U§ = uint(255 * b2Math.§in§(param2,0,1));
         this.§#=§ = uint(255 * b2Math.§in§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§]!+§ = uint(255 * b2Math.§in§(param1,0,1));
         this.§'U§ = uint(255 * b2Math.§in§(param2,0,1));
         this.§#=§ = uint(255 * b2Math.§in§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§]!+§ = uint(255 * b2Math.§in§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'U§ = uint(255 * b2Math.§in§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§#=§ = uint(255 * b2Math.§in§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§]!+§ << 16 | this.§'U§ << 8 | this.§#=§;
      }
   }
}
