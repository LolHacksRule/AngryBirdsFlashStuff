package §_-Ml§
{
   public class §_-Lg§
   {
       
      
      public var step:int;
      
      public function §_-Lg§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §_-gD§(param1:String) : §_-Lg§
      {
         return new §_-Lg§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
