package §0!y§
{
   public class §4!7§
   {
       
      
      public var step:int;
      
      public function §4!7§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §4!7§
      {
         return new §4!7§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
