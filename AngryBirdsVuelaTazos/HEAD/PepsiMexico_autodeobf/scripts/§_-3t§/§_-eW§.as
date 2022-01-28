package §_-3t§
{
   public class §_-eW§
   {
       
      
      public var step:int;
      
      public function §_-eW§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §_-xS§(param1:String) : §_-eW§
      {
         return new §_-eW§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
