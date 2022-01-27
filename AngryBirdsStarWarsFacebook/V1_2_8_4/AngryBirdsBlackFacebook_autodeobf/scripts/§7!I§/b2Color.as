package §7!I§
{
   import §7"A§.b2Math;
   
   public class b2Color
   {
       
      
      private var §`!E§:uint = 0;
      
      private var §!!!§:uint = 0;
      
      private var §="R§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§`!E§ = uint(255 * b2Math.§0!M§(param1,0,1));
         this.§!!!§ = uint(255 * b2Math.§0!M§(param2,0,1));
         this.§="R§ = uint(255 * b2Math.§0!M§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§`!E§ = uint(255 * b2Math.§0!M§(param1,0,1));
         this.§!!!§ = uint(255 * b2Math.§0!M§(param2,0,1));
         this.§="R§ = uint(255 * b2Math.§0!M§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§`!E§ = uint(255 * b2Math.§0!M§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§!!!§ = uint(255 * b2Math.§0!M§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§="R§ = uint(255 * b2Math.§0!M§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§`!E§ << 16 | this.§!!!§ << 8 | this.§="R§;
      }
   }
}
