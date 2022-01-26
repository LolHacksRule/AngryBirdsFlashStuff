package §3'§
{
   import §,!3§.b2Math;
   
   public class b2Color
   {
       
      
      private var §`l§:uint = 0;
      
      private var §[!Q§:uint = 0;
      
      private var §6!E§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§`l§ = uint(255 * b2Math.§8![§(param1,0,1));
         this.§[!Q§ = uint(255 * b2Math.§8![§(param2,0,1));
         this.§6!E§ = uint(255 * b2Math.§8![§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§`l§ = uint(255 * b2Math.§8![§(param1,0,1));
         this.§[!Q§ = uint(255 * b2Math.§8![§(param2,0,1));
         this.§6!E§ = uint(255 * b2Math.§8![§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§`l§ = uint(255 * b2Math.§8![§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§[!Q§ = uint(255 * b2Math.§8![§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§6!E§ = uint(255 * b2Math.§8![§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§`l§ << 16 | this.§[!Q§ << 8 | this.§6!E§;
      }
   }
}
