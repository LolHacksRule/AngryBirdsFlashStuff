package §_-SM§
{
   import §var§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-Iu§:uint = 0;
      
      private var §_-B9§:uint = 0;
      
      private var final:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-Iu§ = uint(255 * b2Math.§_-vw§(param1,0,1));
         this.§_-B9§ = uint(255 * b2Math.§_-vw§(param2,0,1));
         this.final = uint(255 * b2Math.§_-vw§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-Iu§ = uint(255 * b2Math.§_-vw§(param1,0,1));
         this.§_-B9§ = uint(255 * b2Math.§_-vw§(param2,0,1));
         this.final = uint(255 * b2Math.§_-vw§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-Iu§ = uint(255 * b2Math.§_-vw§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-B9§ = uint(255 * b2Math.§_-vw§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.final = uint(255 * b2Math.§_-vw§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-Iu§ << 16 | this.§_-B9§ << 8 | this.final;
      }
   }
}
