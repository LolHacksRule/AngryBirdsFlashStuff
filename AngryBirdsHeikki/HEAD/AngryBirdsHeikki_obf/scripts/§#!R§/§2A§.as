package §#!R§
{
   public class §2A§
   {
       
      
      public var step:int;
      
      public function §2A§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §2A§
      {
         return new §2A§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
