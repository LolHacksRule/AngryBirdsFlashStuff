package §<s§
{
   public class §9!J§
   {
       
      
      public var step:int;
      
      public function §9!J§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §9!J§
      {
         return new §9!J§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
