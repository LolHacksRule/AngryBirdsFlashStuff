package § !%§
{
   import §,!k§.b2Math;
   
   public class b2Color
   {
       
      
      private var §7!5§:uint = 0;
      
      private var §[!V§:uint = 0;
      
      private var §!!v§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§7!5§ = uint(255 * b2Math.§[§(param1,0,1));
         this.§[!V§ = uint(255 * b2Math.§[§(param2,0,1));
         this.§!!v§ = uint(255 * b2Math.§[§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§7!5§ = uint(255 * b2Math.§[§(param1,0,1));
         this.§[!V§ = uint(255 * b2Math.§[§(param2,0,1));
         this.§!!v§ = uint(255 * b2Math.§[§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§7!5§ = uint(255 * b2Math.§[§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§[!V§ = uint(255 * b2Math.§[§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§!!v§ = uint(255 * b2Math.§[§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§7!5§ << 16 | this.§[!V§ << 8 | this.§!!v§;
      }
   }
}
