package §>P§
{
   import §[!L§.b2Shape;
   
   public class §?"Q§
   {
       
      
      protected var §^"t§:Number;
      
      protected var §`!y§:Number;
      
      protected var §[7§:String;
      
      public function §?"Q§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §?"Q§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§^"t§ = param1;
         this.§`!y§ = param2;
         this.§[7§ = param3;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function getWidth() : Number
      {
         return this.§^"t§;
      }
      
      public function getHeight() : Number
      {
         return this.§`!y§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
