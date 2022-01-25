package §"!R§
{
   import §implements§.b2Math;
   
   public class b2Color
   {
       
      
      private var §0r§:uint = 0;
      
      private var § !8§:uint = 0;
      
      private var §0]§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§0r§ = uint(255 * b2Math.§+I§(param1,0,1));
         this.§ !8§ = uint(255 * b2Math.§+I§(param2,0,1));
         this.§0]§ = uint(255 * b2Math.§+I§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§0r§ = uint(255 * b2Math.§+I§(param1,0,1));
         this.§ !8§ = uint(255 * b2Math.§+I§(param2,0,1));
         this.§0]§ = uint(255 * b2Math.§+I§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§0r§ = uint(255 * b2Math.§+I§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§ !8§ = uint(255 * b2Math.§+I§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§0]§ = uint(255 * b2Math.§+I§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§0r§ << 16 | this.§ !8§ << 8 | this.§0]§;
      }
   }
}
