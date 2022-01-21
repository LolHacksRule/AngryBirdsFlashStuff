package §3o§
{
   import §0,§.b2Math;
   
   public class b2Color
   {
       
      
      private var §%<§:uint = 0;
      
      private var §<!G§:uint = 0;
      
      private var §>!H§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§%<§ = uint(255 * b2Math.§@!-§(param1,0,1));
         this.§<!G§ = uint(255 * b2Math.§@!-§(param2,0,1));
         this.§>!H§ = uint(255 * b2Math.§@!-§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§%<§ = uint(255 * b2Math.§@!-§(param1,0,1));
         this.§<!G§ = uint(255 * b2Math.§@!-§(param2,0,1));
         this.§>!H§ = uint(255 * b2Math.§@!-§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§%<§ = uint(255 * b2Math.§@!-§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§<!G§ = uint(255 * b2Math.§@!-§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§>!H§ = uint(255 * b2Math.§@!-§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§%<§ << 16 | this.§<!G§ << 8 | this.§>!H§;
      }
   }
}
