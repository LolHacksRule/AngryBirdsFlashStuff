package §@!a§
{
   import §7F§.b2Math;
   
   public class b2Color
   {
       
      
      private var §!"F§:uint = 0;
      
      private var §'!m§:uint = 0;
      
      private var §=V§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§!"F§ = uint(255 * b2Math.§&+§(param1,0,1));
         this.§'!m§ = uint(255 * b2Math.§&+§(param2,0,1));
         this.§=V§ = uint(255 * b2Math.§&+§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§!"F§ = uint(255 * b2Math.§&+§(param1,0,1));
         this.§'!m§ = uint(255 * b2Math.§&+§(param2,0,1));
         this.§=V§ = uint(255 * b2Math.§&+§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§!"F§ = uint(255 * b2Math.§&+§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'!m§ = uint(255 * b2Math.§&+§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§=V§ = uint(255 * b2Math.§&+§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§!"F§ << 16 | this.§'!m§ << 8 | this.§=V§;
      }
   }
}
