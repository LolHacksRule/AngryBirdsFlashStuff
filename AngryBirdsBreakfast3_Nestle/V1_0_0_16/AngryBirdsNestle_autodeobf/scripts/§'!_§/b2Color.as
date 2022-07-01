package §'!_§
{
   import §@!E§.b2Math;
   
   public class b2Color
   {
       
      
      private var §'!I§:uint = 0;
      
      private var §9!O§:uint = 0;
      
      private var §!!q§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
         this.§9!O§ = uint(255 * b2Math.§ !X§(param2,0,1));
         this.§!!q§ = uint(255 * b2Math.§ !X§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
         this.§9!O§ = uint(255 * b2Math.§ !X§(param2,0,1));
         this.§!!q§ = uint(255 * b2Math.§ !X§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§9!O§ = uint(255 * b2Math.§ !X§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§!!q§ = uint(255 * b2Math.§ !X§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§'!I§ << 16 | this.§9!O§ << 8 | this.§!!q§;
      }
   }
}
