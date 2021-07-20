package §_-lh§
{
   import §_-Ja§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-tQ§:uint = 0;
      
      private var §_-48§:uint = 0;
      
      private var §_-sZ§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
         this.§_-48§ = uint(255 * b2Math.§_-Gj§(param2,0,1));
         this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
         this.§_-48§ = uint(255 * b2Math.§_-Gj§(param2,0,1));
         this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-48§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-tQ§ << 16 | this.§_-48§ << 8 | this.§_-sZ§;
      }
   }
}
