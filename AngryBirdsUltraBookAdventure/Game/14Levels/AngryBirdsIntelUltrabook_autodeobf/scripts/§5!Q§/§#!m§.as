package §5!Q§
{
   public class §#!m§
   {
       
      
      public var step:int;
      
      public function §#!m§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §#!m§
      {
         return new §#!m§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
