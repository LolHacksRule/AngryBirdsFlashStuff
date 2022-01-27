package §0^§
{
   import §0!=§.b2Math;
   
   public class b2Color
   {
       
      
      private var §0Z§:uint = 0;
      
      private var §0!b§:uint = 0;
      
      private var §@!A§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§0Z§ = uint(255 * b2Math.§%%§(param1,0,1));
         this.§0!b§ = uint(255 * b2Math.§%%§(param2,0,1));
         this.§@!A§ = uint(255 * b2Math.§%%§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§0Z§ = uint(255 * b2Math.§%%§(param1,0,1));
         this.§0!b§ = uint(255 * b2Math.§%%§(param2,0,1));
         this.§@!A§ = uint(255 * b2Math.§%%§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§0Z§ = uint(255 * b2Math.§%%§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§0!b§ = uint(255 * b2Math.§%%§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§@!A§ = uint(255 * b2Math.§%%§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§0Z§ << 16 | this.§0!b§ << 8 | this.§@!A§;
      }
   }
}
