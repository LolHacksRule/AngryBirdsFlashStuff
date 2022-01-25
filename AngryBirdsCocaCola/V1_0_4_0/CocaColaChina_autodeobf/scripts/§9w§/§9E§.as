package §9w§
{
   public class §9E§
   {
       
      
      public var step:int;
      
      public function §9E§(param1:int)
      {
         super();
         this.step = param1;
      }
      
      public static function §1!b§(param1:String) : §9E§
      {
         return new §9E§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
