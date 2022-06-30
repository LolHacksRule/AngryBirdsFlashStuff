package §<X§
{
   public class §!4§
   {
       
      
      public var step:int;
      
      public function §!4§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §!4§
      {
         return new §!4§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
