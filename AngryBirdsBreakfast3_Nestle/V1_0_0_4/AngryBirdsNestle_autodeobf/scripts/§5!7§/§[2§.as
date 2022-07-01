package §5!7§
{
   import §>"&§.b2Shape;
   
   public class §[2§
   {
       
      
      protected var §<!"§:Number;
      
      protected var §50§:Number;
      
      public function §[2§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §[2§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§<!"§ = param1;
         this.§50§ = param2;
      }
      
      public function §5!z§() : Number
      {
         return this.§<!"§;
      }
      
      public function §1P§() : Number
      {
         return this.§50§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
