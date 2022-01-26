package §_-d6§
{
   import §_-F2§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-67§:uint = 0;
      
      private var §_-T5§:uint = 0;
      
      private var §_-EH§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-67§ = uint(255 * b2Math.§_-3V§(param1,0,1));
         this.§_-T5§ = uint(255 * b2Math.§_-3V§(param2,0,1));
         this.§_-EH§ = uint(255 * b2Math.§_-3V§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§_-67§ = uint(255 * b2Math.§_-3V§(param1,0,1));
         this.§_-T5§ = uint(255 * b2Math.§_-3V§(param2,0,1));
         this.§_-EH§ = uint(255 * b2Math.§_-3V§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§_-67§ = uint(255 * b2Math.§_-3V§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§_-T5§ = uint(255 * b2Math.§_-3V§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§_-EH§ = uint(255 * b2Math.§_-3V§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§_-67§ << 16 | this.§_-T5§ << 8 | this.§_-EH§;
      }
   }
}
