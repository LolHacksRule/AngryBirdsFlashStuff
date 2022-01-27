package §"!&§
{
   import §,Z§.b2Shape;
   
   public class set
   {
       
      
      protected var §<!f§:Number;
      
      protected var §8>§:Number;
      
      public function set(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == set)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§<!f§ = param1;
         this.§8>§ = param2;
      }
      
      public function getWidth() : Number
      {
         return this.§<!f§;
      }
      
      public function getHeight() : Number
      {
         return this.§8>§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
