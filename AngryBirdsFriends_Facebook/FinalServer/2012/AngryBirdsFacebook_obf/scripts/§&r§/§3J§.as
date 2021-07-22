package §&r§
{
   public class §3J§
   {
       
      
      public var step:int;
      
      public function §3J§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §3J§
      {
         return new §3J§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
