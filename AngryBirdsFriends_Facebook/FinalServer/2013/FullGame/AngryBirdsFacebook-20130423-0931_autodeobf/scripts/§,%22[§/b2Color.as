package §,"[§
{
   import §6!^§.b2Math;
   
   public class b2Color
   {
       
      
      private var §"!§:uint = 0;
      
      private var §7!$§:uint = 0;
      
      private var §9d§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
         this.§7!$§ = uint(255 * b2Math.§1"T§(param2,0,1));
         this.§9d§ = uint(255 * b2Math.§1"T§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
         this.§7!$§ = uint(255 * b2Math.§1"T§(param2,0,1));
         this.§9d§ = uint(255 * b2Math.§1"T§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§7!$§ = uint(255 * b2Math.§1"T§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§9d§ = uint(255 * b2Math.§1"T§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§"!§ << 16 | this.§7!$§ << 8 | this.§9d§;
      }
   }
}
