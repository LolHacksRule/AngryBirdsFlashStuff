package §=!X§
{
   import §"U§.b2Math;
   
   public class b2Color
   {
       
      
      private var §4!+§:uint = 0;
      
      private var §5!o§:uint = 0;
      
      private var §'>§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§4!+§ = uint(255 * b2Math.§=!5§(param1,0,1));
         this.§5!o§ = uint(255 * b2Math.§=!5§(param2,0,1));
         this.§'>§ = uint(255 * b2Math.§=!5§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§4!+§ = uint(255 * b2Math.§=!5§(param1,0,1));
         this.§5!o§ = uint(255 * b2Math.§=!5§(param2,0,1));
         this.§'>§ = uint(255 * b2Math.§=!5§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§4!+§ = uint(255 * b2Math.§=!5§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§5!o§ = uint(255 * b2Math.§=!5§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§'>§ = uint(255 * b2Math.§=!5§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§4!+§ << 16 | this.§5!o§ << 8 | this.§'>§;
      }
   }
}
