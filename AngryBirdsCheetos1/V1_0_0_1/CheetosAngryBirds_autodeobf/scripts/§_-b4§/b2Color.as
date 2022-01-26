package §_-b4§
{
   import §_-cP§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-Fn§:uint = 0;
      
      private var §_-QD§:uint = 0;
      
      private var §_-oc§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-Fn§ = uint(255 * b2Math.§_-9P§(param1,0,1));
         this.§_-QD§ = uint(255 * b2Math.§_-9P§(param2,0,1));
         this.§_-oc§ = uint(255 * b2Math.§_-9P§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-Fn§ = uint(255 * b2Math.§_-9P§(param1,0,1));
         this.§_-QD§ = uint(255 * b2Math.§_-9P§(param2,0,1));
         this.§_-oc§ = uint(255 * b2Math.§_-9P§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-Fn§ = uint(255 * b2Math.§_-9P§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-QD§ = uint(255 * b2Math.§_-9P§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-oc§ = uint(255 * b2Math.§_-9P§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-Fn§ << 16 | this.§_-QD§ << 8 | this.§_-oc§;
      }
   }
}
