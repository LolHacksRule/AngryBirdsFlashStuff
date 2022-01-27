package §=8§
{
   public class §7z§
   {
       
      
      public var step:int;
      
      public function §7z§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §7z§
      {
         return new §7z§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
