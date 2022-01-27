package §7F§
{
   public class §7f§
   {
       
      
      public var step:int;
      
      public function §7f§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §7f§
      {
         return new §7f§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
