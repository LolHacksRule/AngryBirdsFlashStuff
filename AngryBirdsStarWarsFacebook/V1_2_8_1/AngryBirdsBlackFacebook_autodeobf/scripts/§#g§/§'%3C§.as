package §#g§
{
   import §1!2§.b2Shape;
   
   public class §'<§
   {
       
      
      protected var §0"e§:Number;
      
      protected var §?!O§:Number;
      
      protected var §]!R§:String;
      
      public function §'<§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §'<§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§0"e§ = param1;
         this.§?!O§ = param2;
         this.§]!R§ = param3;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function getWidth() : Number
      {
         return this.§0"e§;
      }
      
      public function getHeight() : Number
      {
         return this.§?!O§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
