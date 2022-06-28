package §_-5§
{
   import §_-Yp§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-p4§:uint = 0;
      
      private var §_-2M§:uint = 0;
      
      private var §_-bk§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
         this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param2,0,1));
         this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
         this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param2,0,1));
         this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-p4§ << 16 | this.§_-2M§ << 8 | this.§_-bk§;
      }
   }
}
