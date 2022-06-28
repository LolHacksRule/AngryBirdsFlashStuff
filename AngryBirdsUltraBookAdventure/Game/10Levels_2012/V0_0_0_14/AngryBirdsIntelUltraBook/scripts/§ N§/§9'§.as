package § N§
{
   public class §9'§
   {
       
      
      public var step:int;
      
      public function §9'§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §9'§
      {
         return new §9'§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
