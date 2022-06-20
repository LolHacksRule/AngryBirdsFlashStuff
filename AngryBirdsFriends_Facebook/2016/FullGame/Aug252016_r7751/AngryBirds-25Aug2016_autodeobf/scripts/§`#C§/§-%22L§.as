package §`#C§
{
   import §?!c§.b2Shape;
   
   public class §-"L§
   {
       
      
      protected var §]<§:Number;
      
      protected var §""b§:Number;
      
      protected var mId:String;
      
      public function §-"L§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §-"L§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§]<§ = param1;
         this.§""b§ = param2;
         this.mId = param3;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function getWidth() : Number
      {
         return this.§]<§;
      }
      
      public function getHeight() : Number
      {
         return this.§""b§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
      
      public function getDimension() : Number
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
