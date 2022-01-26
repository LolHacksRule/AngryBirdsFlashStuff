package §_-iO§
{
   import §_-dx§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-dX§:uint = 0;
      
      private var §_-bu§:uint = 0;
      
      private var §_-v§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-dX§ = uint(255 * b2Math.§_-k3§(param1,0,1));
         this.§_-bu§ = uint(255 * b2Math.§_-k3§(param2,0,1));
         this.§_-v§ = uint(255 * b2Math.§_-k3§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-dX§ = uint(255 * b2Math.§_-k3§(param1,0,1));
         this.§_-bu§ = uint(255 * b2Math.§_-k3§(param2,0,1));
         this.§_-v§ = uint(255 * b2Math.§_-k3§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-dX§ = uint(255 * b2Math.§_-k3§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-bu§ = uint(255 * b2Math.§_-k3§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-v§ = uint(255 * b2Math.§_-k3§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-dX§ << 16 | this.§_-bu§ << 8 | this.§_-v§;
      }
   }
}
