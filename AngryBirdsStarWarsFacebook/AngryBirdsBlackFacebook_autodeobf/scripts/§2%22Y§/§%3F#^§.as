package §2"Y§
{
   import §4!$§.b2Shape;
   
   public class §?#^§
   {
       
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var §6##§:String;
      
      public function §?#^§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §?#^§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§6"?§ = param1;
         this.§[!4§ = param2;
         this.§6##§ = param3;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function getWidth() : Number
      {
         return this.§6"?§;
      }
      
      public function getHeight() : Number
      {
         return this.§[!4§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
