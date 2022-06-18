package §8!%§
{
   import §&!+§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+y§:uint = 0;
      
      private var §>H§:uint = 0;
      
      private var §&!8§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§+y§ = uint(255 * b2Math.§5!%§(param1,0,1));
         this.§>H§ = uint(255 * b2Math.§5!%§(param2,0,1));
         this.§&!8§ = uint(255 * b2Math.§5!%§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§+y§ = uint(255 * b2Math.§5!%§(param1,0,1));
         this.§>H§ = uint(255 * b2Math.§5!%§(param2,0,1));
         this.§&!8§ = uint(255 * b2Math.§5!%§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§+y§ = uint(255 * b2Math.§5!%§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§>H§ = uint(255 * b2Math.§5!%§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§&!8§ = uint(255 * b2Math.§5!%§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§+y§ << 16 | this.§>H§ << 8 | this.§&!8§;
      }
   }
}
