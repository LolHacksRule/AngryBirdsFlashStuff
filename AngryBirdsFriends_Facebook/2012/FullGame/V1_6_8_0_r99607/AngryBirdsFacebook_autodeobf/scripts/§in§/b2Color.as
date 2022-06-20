package §in§
{
   import §!"8§.b2Math;
   
   public class b2Color
   {
       
      
      private var § !Z§:uint = 0;
      
      private var §!e§:uint = 0;
      
      private var §-D§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§ !Z§ = uint(255 * b2Math.§`!L§(param1,0,1));
         this.§!e§ = uint(255 * b2Math.§`!L§(param2,0,1));
         this.§-D§ = uint(255 * b2Math.§`!L§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§ !Z§ = uint(255 * b2Math.§`!L§(param1,0,1));
         this.§!e§ = uint(255 * b2Math.§`!L§(param2,0,1));
         this.§-D§ = uint(255 * b2Math.§`!L§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§ !Z§ = uint(255 * b2Math.§`!L§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§!e§ = uint(255 * b2Math.§`!L§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§-D§ = uint(255 * b2Math.§`!L§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§ !Z§ << 16 | this.§!e§ << 8 | this.§-D§;
      }
   }
}
