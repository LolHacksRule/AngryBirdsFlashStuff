package §-!j§
{
   import §,!T§.b2Shape;
   
   public class §%!a§
   {
       
      
      protected var §@!l§:Number;
      
      protected var §,7§:Number;
      
      protected var mId:String;
      
      public function §%!a§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §%!a§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§@!l§ = param1;
         this.§,7§ = param2;
         this.mId = param3;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function getWidth() : Number
      {
         return this.§@!l§;
      }
      
      public function getHeight() : Number
      {
         return this.§,7§;
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
