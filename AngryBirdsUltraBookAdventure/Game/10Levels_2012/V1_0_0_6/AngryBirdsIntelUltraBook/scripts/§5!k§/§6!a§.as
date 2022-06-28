package §5!k§
{
   public class §6!a§
   {
       
      
      public var step:int;
      
      public function §6!a§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §6!a§
      {
         return new §6!a§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
