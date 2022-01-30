package §7!F§
{
   import §[K§.b2Math;
   
   public class b2Color
   {
       
      
      private var §'!3§:uint = 0;
      
      private var §]!x§:uint = 0;
      
      private var §=U§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§'!3§ = uint(255 * b2Math.§1!s§(param1,0,1));
         this.§]!x§ = uint(255 * b2Math.§1!s§(param2,0,1));
         this.§=U§ = uint(255 * b2Math.§1!s§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§'!3§ = uint(255 * b2Math.§1!s§(param1,0,1));
         this.§]!x§ = uint(255 * b2Math.§1!s§(param2,0,1));
         this.§=U§ = uint(255 * b2Math.§1!s§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§'!3§ = uint(255 * b2Math.§1!s§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§]!x§ = uint(255 * b2Math.§1!s§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§=U§ = uint(255 * b2Math.§1!s§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§'!3§ << 16 | this.§]!x§ << 8 | this.§=U§;
      }
   }
}
