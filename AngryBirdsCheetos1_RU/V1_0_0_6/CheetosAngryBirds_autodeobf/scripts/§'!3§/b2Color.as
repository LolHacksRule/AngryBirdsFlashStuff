package §'!3§
{
   import §3q§.b2Math;
   
   public class b2Color
   {
       
      
      private var §"f§:uint = 0;
      
      private var §"F§:uint = 0;
      
      private var §-A§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"f§ = uint(255 * b2Math.§;f§(param1,0,1));
         this.§"F§ = uint(255 * b2Math.§;f§(param2,0,1));
         this.§-A§ = uint(255 * b2Math.§;f§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§"f§ = uint(255 * b2Math.§;f§(param1,0,1));
         this.§"F§ = uint(255 * b2Math.§;f§(param2,0,1));
         this.§-A§ = uint(255 * b2Math.§;f§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§"f§ = uint(255 * b2Math.§;f§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§"F§ = uint(255 * b2Math.§;f§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§-A§ = uint(255 * b2Math.§;f§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§"f§ << 16 | this.§"F§ << 8 | this.§-A§;
      }
   }
}
