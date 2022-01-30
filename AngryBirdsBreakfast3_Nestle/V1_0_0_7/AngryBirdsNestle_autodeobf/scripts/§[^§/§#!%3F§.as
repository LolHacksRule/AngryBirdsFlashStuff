package §[^§
{
   import §8!K§.b2Shape;
   
   public class §#!?§
   {
       
      
      protected var §`!p§:Number;
      
      protected var §<c§:Number;
      
      public function §#!?§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == §#!?§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§`!p§ = param1;
         this.§<c§ = param2;
      }
      
      public function §'%§() : Number
      {
         return this.§`!p§;
      }
      
      public function §!8§() : Number
      {
         return this.§<c§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
