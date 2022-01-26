package §_-uS§
{
   import §_-Zl§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-PL§:uint = 0;
      
      private var §_-m2§:uint = 0;
      
      private var §_-K2§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-PL§ = uint(255 * b2Math.§_-Kz§(param1,0,1));
         this.§_-m2§ = uint(255 * b2Math.§_-Kz§(param2,0,1));
         this.§_-K2§ = uint(255 * b2Math.§_-Kz§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-PL§ = uint(255 * b2Math.§_-Kz§(param1,0,1));
         this.§_-m2§ = uint(255 * b2Math.§_-Kz§(param2,0,1));
         this.§_-K2§ = uint(255 * b2Math.§_-Kz§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-PL§ = uint(255 * b2Math.§_-Kz§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-m2§ = uint(255 * b2Math.§_-Kz§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-K2§ = uint(255 * b2Math.§_-Kz§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-PL§ << 16 | this.§_-m2§ << 8 | this.§_-K2§;
      }
   }
}
