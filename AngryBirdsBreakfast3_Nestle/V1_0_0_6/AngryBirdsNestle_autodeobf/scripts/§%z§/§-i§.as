package §%z§
{
   import §3!4§.b2Shape;
   
   public class §-i§
   {
       
      
      protected var §9z§:Number;
      
      protected var §8#§:Number;
      
      public function §-i§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §-i§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§9z§ = param1;
         this.§8#§ = param2;
      }
      
      public function §0!U§() : Number
      {
         return this.§9z§;
      }
      
      public function §!!u§() : Number
      {
         return this.§8#§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
