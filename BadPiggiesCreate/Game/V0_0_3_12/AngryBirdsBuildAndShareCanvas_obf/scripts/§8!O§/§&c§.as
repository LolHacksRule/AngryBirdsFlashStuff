package §8!O§
{
   public class §&c§
   {
       
      
      public var step:int;
      
      public function §&c§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §&c§
      {
         return new §&c§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
