package §?$<§
{
   import §!H§.b2Shape;
   
   public class §4"F§
   {
       
      
      protected var §>H§:Number;
      
      protected var §^l§:Number;
      
      protected var mId:String;
      
      public function §4"F§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §4"F§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§>H§ = param1;
         this.§^l§ = param2;
         this.mId = param3;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function getWidth() : Number
      {
         return this.§>H§;
      }
      
      public function getHeight() : Number
      {
         return this.§^l§;
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
