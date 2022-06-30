package §6%§
{
   import §`!^§.b2Math;
   
   public class b2Color
   {
       
      
      private var §@!g§:uint = 0;
      
      private var §0^§:uint = 0;
      
      private var §!!0§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§@!g§ = uint(255 * b2Math.§6m§(param1,0,1));
         this.§0^§ = uint(255 * b2Math.§6m§(param2,0,1));
         this.§!!0§ = uint(255 * b2Math.§6m§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§@!g§ = uint(255 * b2Math.§6m§(param1,0,1));
         this.§0^§ = uint(255 * b2Math.§6m§(param2,0,1));
         this.§!!0§ = uint(255 * b2Math.§6m§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§@!g§ = uint(255 * b2Math.§6m§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§0^§ = uint(255 * b2Math.§6m§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§!!0§ = uint(255 * b2Math.§6m§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§@!g§ << 16 | this.§0^§ << 8 | this.§!!0§;
      }
   }
}
