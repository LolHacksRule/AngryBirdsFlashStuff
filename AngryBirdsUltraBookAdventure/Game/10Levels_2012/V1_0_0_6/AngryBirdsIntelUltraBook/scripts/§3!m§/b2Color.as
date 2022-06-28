package §3!m§
{
   import §;%§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2S§:uint = 0;
      
      private var §+w§:uint = 0;
      
      private var §'!B§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
         this.§+w§ = uint(255 * b2Math.§]!M§(param2,0,1));
         this.§'!B§ = uint(255 * b2Math.§]!M§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
         this.§+w§ = uint(255 * b2Math.§]!M§(param2,0,1));
         this.§'!B§ = uint(255 * b2Math.§]!M§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§+w§ = uint(255 * b2Math.§]!M§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§'!B§ = uint(255 * b2Math.§]!M§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§2S§ << 16 | this.§+w§ << 8 | this.§'!B§;
      }
   }
}
