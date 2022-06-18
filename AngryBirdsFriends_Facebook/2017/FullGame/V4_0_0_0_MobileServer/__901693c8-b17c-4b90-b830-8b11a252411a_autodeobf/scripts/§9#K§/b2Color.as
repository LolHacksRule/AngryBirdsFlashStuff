package §9#K§
{
   import §%!9§.b2Math;
   
   public class b2Color
   {
       
      
      private var §,#D§:uint = 0;
      
      private var §>"L§:uint = 0;
      
      private var § B§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§,#D§ = uint(255 * b2Math.§0"E§(param1,0,1));
         this.§>"L§ = uint(255 * b2Math.§0"E§(param2,0,1));
         this.§ B§ = uint(255 * b2Math.§0"E§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§,#D§ = uint(255 * b2Math.§0"E§(param1,0,1));
         this.§>"L§ = uint(255 * b2Math.§0"E§(param2,0,1));
         this.§ B§ = uint(255 * b2Math.§0"E§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§,#D§ = uint(255 * b2Math.§0"E§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§>"L§ = uint(255 * b2Math.§0"E§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§ B§ = uint(255 * b2Math.§0"E§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§,#D§ << 16 | this.§>"L§ << 8 | this.§ B§;
      }
   }
}
