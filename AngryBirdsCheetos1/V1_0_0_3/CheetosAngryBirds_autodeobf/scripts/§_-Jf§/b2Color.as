package §_-Jf§
{
   import §_-Vn§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-eM§:uint = 0;
      
      private var §_-X6§:uint = 0;
      
      private var §_-cO§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-eM§ = uint(255 * b2Math.§_-a4§(param1,0,1));
         this.§_-X6§ = uint(255 * b2Math.§_-a4§(param2,0,1));
         this.§_-cO§ = uint(255 * b2Math.§_-a4§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-eM§ = uint(255 * b2Math.§_-a4§(param1,0,1));
         this.§_-X6§ = uint(255 * b2Math.§_-a4§(param2,0,1));
         this.§_-cO§ = uint(255 * b2Math.§_-a4§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-eM§ = uint(255 * b2Math.§_-a4§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-X6§ = uint(255 * b2Math.§_-a4§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-cO§ = uint(255 * b2Math.§_-a4§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-eM§ << 16 | this.§_-X6§ << 8 | this.§_-cO§;
      }
   }
}
