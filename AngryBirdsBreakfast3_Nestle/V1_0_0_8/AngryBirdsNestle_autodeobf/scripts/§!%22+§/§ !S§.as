package §!"+§
{
   import §[e§.b2Shape;
   
   public class § !S§
   {
       
      
      protected var §""7§:Number;
      
      protected var §%>§:Number;
      
      public function § !S§(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == § !S§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§""7§ = param1;
         this.§%>§ = param2;
      }
      
      public function §8!I§() : Number
      {
         return this.§""7§;
      }
      
      public function §]!$§() : Number
      {
         return this.§%>§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
