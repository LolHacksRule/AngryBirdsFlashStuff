package §%8§
{
   import §=!!§.b2Shape;
   
   public class §[_§
   {
       
      
      protected var §!a§:Number;
      
      protected var §2!y§:Number;
      
      protected var §?0§:String;
      
      public function §[_§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §[_§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§!a§ = param1;
         this.§2!y§ = param2;
         this.§?0§ = param3;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function §=!q§() : Number
      {
         return this.§!a§;
      }
      
      public function §%!r§() : Number
      {
         return this.§2!y§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
