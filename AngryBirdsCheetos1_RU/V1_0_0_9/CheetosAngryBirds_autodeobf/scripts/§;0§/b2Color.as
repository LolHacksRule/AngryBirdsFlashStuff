package §;0§
{
   import §;U§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+!M§:uint = 0;
      
      private var §2!1§:uint = 0;
      
      private var §3!@§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§+!M§ = uint(255 * b2Math.§1!<§(param1,0,1));
         this.§2!1§ = uint(255 * b2Math.§1!<§(param2,0,1));
         this.§3!@§ = uint(255 * b2Math.§1!<§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§+!M§ = uint(255 * b2Math.§1!<§(param1,0,1));
         this.§2!1§ = uint(255 * b2Math.§1!<§(param2,0,1));
         this.§3!@§ = uint(255 * b2Math.§1!<§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§+!M§ = uint(255 * b2Math.§1!<§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§2!1§ = uint(255 * b2Math.§1!<§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§3!@§ = uint(255 * b2Math.§1!<§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§+!M§ << 16 | this.§2!1§ << 8 | this.§3!@§;
      }
   }
}
