package §@!'§
{
   import §9t§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+!M§:uint = 0;
      
      private var §,"B§:uint = 0;
      
      private var §""?§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
         this.§,"B§ = uint(255 * b2Math.§`J§(param2,0,1));
         this.§""?§ = uint(255 * b2Math.§`J§(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
         this.§,"B§ = uint(255 * b2Math.§`J§(param2,0,1));
         this.§""?§ = uint(255 * b2Math.§`J§(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this.§,"B§ = uint(255 * b2Math.§`J§(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this.§""?§ = uint(255 * b2Math.§`J§(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this.§+!M§ << 16 | this.§,"B§ << 8 | this.§""?§;
      }
   }
}
