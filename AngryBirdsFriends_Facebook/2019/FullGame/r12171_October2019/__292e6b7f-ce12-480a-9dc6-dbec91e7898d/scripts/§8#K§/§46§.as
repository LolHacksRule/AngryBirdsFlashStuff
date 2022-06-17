package §8#K§
{
   import §1#I§.b2Shape;
   
   public class §46§
   {
       
      
      protected var §>"h§:Number;
      
      protected var §"#G§:Number;
      
      protected var mId:String;
      
      public function §46§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §46§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§>"h§ = param1;
         this.§"#G§ = param2;
         this.mId = param3;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function getWidth() : Number
      {
         return this.§>"h§;
      }
      
      public function getHeight() : Number
      {
         return this.§"#G§;
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
