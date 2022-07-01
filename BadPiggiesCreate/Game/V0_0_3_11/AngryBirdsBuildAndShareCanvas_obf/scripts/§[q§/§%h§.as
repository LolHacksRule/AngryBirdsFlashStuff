package §[q§
{
   public class §%h§
   {
       
      
      public var step:int;
      
      public function §%h§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function initialize(param1:String) : §%h§
      {
         return new §%h§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
