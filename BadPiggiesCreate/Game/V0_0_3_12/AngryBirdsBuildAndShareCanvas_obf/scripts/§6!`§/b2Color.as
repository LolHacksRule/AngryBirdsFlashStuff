package §6!`§
{
   import §3!t§.b2Math;
   
   public class b2Color
   {
       
      
      private var §&8§:uint = 0;
      
      private var §?"7§:uint = 0;
      
      private var §19§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§&8§ = uint(255 * b2Math.§4"?§(param1,0,1));
         this.§?"7§ = uint(255 * b2Math.§4"?§(param2,0,1));
         this.§19§ = uint(255 * b2Math.§4"?§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§&8§ = uint(255 * b2Math.§4"?§(param1,0,1));
         this.§?"7§ = uint(255 * b2Math.§4"?§(param2,0,1));
         this.§19§ = uint(255 * b2Math.§4"?§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§&8§ = uint(255 * b2Math.§4"?§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§?"7§ = uint(255 * b2Math.§4"?§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§19§ = uint(255 * b2Math.§4"?§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§&8§ << 16 | this.§?"7§ << 8 | this.§19§;
      }
   }
}
