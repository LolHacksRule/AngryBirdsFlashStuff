package §1!U§
{
   public class §3P§
   {
       
      
      public var step:int;
      
      public function §3P§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §3P§
      {
         return new §3P§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
