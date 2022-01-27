package §6!M§
{
   import §"!w§.b2Shape;
   
   public class §7r§
   {
       
      
      protected var §'!K§:Number;
      
      protected var §%O§:Number;
      
      public function §7r§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §7r§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§'!K§ = param1;
         this.§%O§ = param2;
      }
      
      public function getWidth() : Number
      {
         return this.§'!K§;
      }
      
      public function getHeight() : Number
      {
         return this.§%O§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
