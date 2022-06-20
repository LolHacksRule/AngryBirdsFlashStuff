package §0Q§
{
   public class §=d§
   {
       
      
      public var step:int;
      
      public function §=d§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §=d§
      {
         return new §=d§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
