package §+s§
{
   public class §9!U§
   {
       
      
      public var step:int;
      
      public function §9!U§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §9!U§
      {
         return new §9!U§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
