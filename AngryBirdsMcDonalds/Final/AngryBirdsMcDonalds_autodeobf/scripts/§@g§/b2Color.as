package §@g§
{
   import §^!%§.b2Math;
   
   public class b2Color
   {
       
      
      private var §3!W§:uint = 0;
      
      private var §4c§:uint = 0;
      
      private var §7!H§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§3!W§ = uint(255 * b2Math.§]$§(param1,0,1));
         this.§4c§ = uint(255 * b2Math.§]$§(param2,0,1));
         this.§7!H§ = uint(255 * b2Math.§]$§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§3!W§ = uint(255 * b2Math.§]$§(param1,0,1));
         this.§4c§ = uint(255 * b2Math.§]$§(param2,0,1));
         this.§7!H§ = uint(255 * b2Math.§]$§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§3!W§ = uint(255 * b2Math.§]$§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§4c§ = uint(255 * b2Math.§]$§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§7!H§ = uint(255 * b2Math.§]$§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§3!W§ << 16 | this.§4c§ << 8 | this.§7!H§;
      }
   }
}
