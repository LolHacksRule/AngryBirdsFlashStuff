package §+!h§
{
   public class §-!g§
   {
       
      
      public var step:int;
      
      public function §-!g§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §-!g§
      {
         return new §-!g§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
