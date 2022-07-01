package §!!<§
{
   import §?m§.b2Shape;
   
   public class §`!J§
   {
       
      
      protected var §?!<§:Number;
      
      protected var §1+§:Number;
      
      public function §`!J§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §`!J§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§?!<§ = param1;
         this.§1+§ = param2;
      }
      
      public function §`!A§() : Number
      {
         return this.§?!<§;
      }
      
      public function §#!l§() : Number
      {
         return this.§1+§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
