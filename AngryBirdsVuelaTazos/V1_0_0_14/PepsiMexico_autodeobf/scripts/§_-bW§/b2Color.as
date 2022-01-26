package §_-bW§
{
   import §_-4n§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-MA§:uint = 0;
      
      private var §_-ou§:uint = 0;
      
      private var §_-rN§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-MA§ = uint(255 * b2Math.§_-1P§(param1,0,1));
         this.§_-ou§ = uint(255 * b2Math.§_-1P§(param2,0,1));
         this.§_-rN§ = uint(255 * b2Math.§_-1P§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-MA§ = uint(255 * b2Math.§_-1P§(param1,0,1));
         this.§_-ou§ = uint(255 * b2Math.§_-1P§(param2,0,1));
         this.§_-rN§ = uint(255 * b2Math.§_-1P§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-MA§ = uint(255 * b2Math.§_-1P§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-ou§ = uint(255 * b2Math.§_-1P§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-rN§ = uint(255 * b2Math.§_-1P§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-MA§ << 16 | this.§_-ou§ << 8 | this.§_-rN§;
      }
   }
}
