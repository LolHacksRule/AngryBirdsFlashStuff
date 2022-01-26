package §_-sU§
{
   import §_-9z§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-d0§:uint = 0;
      
      private var §_-SP§:uint = 0;
      
      private var §_-Bz§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-d0§ = uint(255 * b2Math.§_-5a§(param1,0,1));
         this.§_-SP§ = uint(255 * b2Math.§_-5a§(param2,0,1));
         this.§_-Bz§ = uint(255 * b2Math.§_-5a§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-d0§ = uint(255 * b2Math.§_-5a§(param1,0,1));
         this.§_-SP§ = uint(255 * b2Math.§_-5a§(param2,0,1));
         this.§_-Bz§ = uint(255 * b2Math.§_-5a§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-d0§ = uint(255 * b2Math.§_-5a§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-SP§ = uint(255 * b2Math.§_-5a§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-Bz§ = uint(255 * b2Math.§_-5a§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-d0§ << 16 | this.§_-SP§ << 8 | this.§_-Bz§;
      }
   }
}
