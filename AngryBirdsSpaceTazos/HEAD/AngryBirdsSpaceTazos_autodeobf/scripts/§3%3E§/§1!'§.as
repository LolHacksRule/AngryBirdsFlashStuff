package §3>§
{
   import §4!W§.b2Shape;
   
   public class §1!'§
   {
       
      
      protected var §]!d§:Number;
      
      protected var §!"-§:Number;
      
      public function §1!'§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §1!'§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§]!d§ = param1;
         this.§!"-§ = param2;
      }
      
      public function getWidth() : Number
      {
         return this.§]!d§;
      }
      
      public function getHeight() : Number
      {
         return this.§!"-§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
