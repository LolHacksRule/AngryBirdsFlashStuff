package §2!s§
{
   import §`!C§.b2Shape;
   
   public class §4"1§
   {
       
      
      protected var §5"5§:Number;
      
      protected var §"!i§:Number;
      
      protected var §?!j§:String;
      
      public function §4"1§(param1:Number, param2:Number, param3:String = null)
      {
         super();
         if(Object(this).constructor == §4"1§)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.§5"5§ = param1;
         this.§"!i§ = param2;
         this.§?!j§ = param3;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function §3!s§() : Number
      {
         return this.§5"5§;
      }
      
      public function §]!D§() : Number
      {
         return this.§"!i§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
