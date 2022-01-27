package §;"=§
{
   import §?f§.b2Shape;
   
   public class §3!R§
   {
       
      
      protected var §^M§:Number;
      
      protected var §2!u§:Number;
      
      public function §3!R§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §3!R§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§^M§ = param1;
         this.§2!u§ = param2;
      }
      
      public function getWidth() : Number
      {
         return this.§^M§;
      }
      
      public function getHeight() : Number
      {
         return this.§2!u§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
