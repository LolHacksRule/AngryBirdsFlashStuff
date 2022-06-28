package §9a§
{
   public class §1^§
   {
       
      
      public var step:int;
      
      public function §1^§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §1^§
      {
         return new §1^§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
