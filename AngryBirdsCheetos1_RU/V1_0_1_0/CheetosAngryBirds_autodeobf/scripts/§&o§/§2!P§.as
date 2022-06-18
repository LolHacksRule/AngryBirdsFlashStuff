package §&o§
{
   public class §2!P§
   {
       
      
      public var step:int;
      
      public function §2!P§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §?!V§(param1:String) : §2!P§
      {
         return new §2!P§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
