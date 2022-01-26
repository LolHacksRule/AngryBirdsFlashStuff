package §_-bF§
{
   public class §_-nG§
   {
       
      
      public var step:int;
      
      public function §_-nG§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §_-sY§(param1:String) : §_-nG§
      {
         return new §_-nG§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
