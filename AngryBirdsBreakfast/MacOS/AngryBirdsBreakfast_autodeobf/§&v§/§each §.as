package §&v§
{
   import §"y§.b2Shape;
   
   public class §each §
   {
       
      
      protected var §<`§:Number;
      
      protected var §#!A§:Number;
      
      public function §each §(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §each §)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§<`§ = param1;
         this.§#!A§ = param2;
      }
      
      public function §"!j§() : Number
      {
         return this.§<`§;
      }
      
      public function §?!L§() : Number
      {
         return this.§#!A§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
