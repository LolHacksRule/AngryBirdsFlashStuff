package §0H§
{
   import §0m§.b2Math;
   
   public class b2Color
   {
       
      
      private var §@#1§:uint = 0;
      
      private var §'"Q§:uint = 0;
      
      private var §<u§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§@#1§ = uint(255 * b2Math.§9#V§(param1,0,1));
         this.§'"Q§ = uint(255 * b2Math.§9#V§(param2,0,1));
         this.§<u§ = uint(255 * b2Math.§9#V§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§@#1§ = uint(255 * b2Math.§9#V§(param1,0,1));
         this.§'"Q§ = uint(255 * b2Math.§9#V§(param2,0,1));
         this.§<u§ = uint(255 * b2Math.§9#V§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§@#1§ = uint(255 * b2Math.§9#V§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§'"Q§ = uint(255 * b2Math.§9#V§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§<u§ = uint(255 * b2Math.§9#V§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§@#1§ << 16 | this.§'"Q§ << 8 | this.§<u§;
      }
   }
}
