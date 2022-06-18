package §4y§
{
   public class §02§
   {
       
      
      public var step:int;
      
      public function §02§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §!f§(param1:String) : §02§
      {
         return new §02§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
