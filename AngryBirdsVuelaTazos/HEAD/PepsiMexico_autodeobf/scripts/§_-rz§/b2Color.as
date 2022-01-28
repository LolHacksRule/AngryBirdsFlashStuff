package §_-rz§
{
   import §_-bA§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-87§:uint = 0;
      
      private var §_-v§:uint = 0;
      
      private var §_-3z§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-87§ = uint(255 * b2Math.§_-rr§(param1,0,1));
         this.§_-v§ = uint(255 * b2Math.§_-rr§(param2,0,1));
         this.§_-3z§ = uint(255 * b2Math.§_-rr§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-87§ = uint(255 * b2Math.§_-rr§(param1,0,1));
         this.§_-v§ = uint(255 * b2Math.§_-rr§(param2,0,1));
         this.§_-3z§ = uint(255 * b2Math.§_-rr§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-87§ = uint(255 * b2Math.§_-rr§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-v§ = uint(255 * b2Math.§_-rr§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-3z§ = uint(255 * b2Math.§_-rr§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-87§ << 16 | this.§_-v§ << 8 | this.§_-3z§;
      }
   }
}
