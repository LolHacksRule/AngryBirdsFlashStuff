package §@l§
{
   public class §'D§
   {
       
      
      public var step:int;
      
      public function §'D§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §'D§
      {
         return new §'D§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
