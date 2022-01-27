package §@!@§
{
   import §&!S§.b2Math;
   
   public class b2Color
   {
       
      
      private var §?",§:uint = 0;
      
      private var §1`§:uint = 0;
      
      private var §+"3§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?",§ = uint(255 * b2Math.§>G§(param1,0,1));
         this.§1`§ = uint(255 * b2Math.§>G§(param2,0,1));
         this.§+"3§ = uint(255 * b2Math.§>G§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?",§ = uint(255 * b2Math.§>G§(param1,0,1));
         this.§1`§ = uint(255 * b2Math.§>G§(param2,0,1));
         this.§+"3§ = uint(255 * b2Math.§>G§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§?",§ = uint(255 * b2Math.§>G§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§1`§ = uint(255 * b2Math.§>G§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§+"3§ = uint(255 * b2Math.§>G§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§?",§ << 16 | this.§1`§ << 8 | this.§+"3§;
      }
   }
}
