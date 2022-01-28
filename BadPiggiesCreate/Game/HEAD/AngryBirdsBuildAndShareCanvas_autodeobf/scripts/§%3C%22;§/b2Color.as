package §<";§
{
   import §<!a§.b2Math;
   
   public class b2Color
   {
       
      
      private var § null§:uint = 0;
      
      private var § &§:uint = 0;
      
      private var §2c§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
         this.§ &§ = uint(255 * b2Math.§5" §(param2,0,1));
         this.§2c§ = uint(255 * b2Math.§5" §(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
         this.§ &§ = uint(255 * b2Math.§5" §(param2,0,1));
         this.§2c§ = uint(255 * b2Math.§5" §(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§ &§ = uint(255 * b2Math.§5" §(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§2c§ = uint(255 * b2Math.§5" §(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§ null§ << 16 | this.§ &§ << 8 | this.§2c§;
      }
   }
}
