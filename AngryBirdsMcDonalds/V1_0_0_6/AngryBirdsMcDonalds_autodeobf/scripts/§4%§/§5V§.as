package §4%§
{
   public class §5V§
   {
       
      
      public var step:int;
      
      public function §5V§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §5V§
      {
         return new §5V§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
