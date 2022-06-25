package §5!k§
{
   public class §6!a§
   {
       
      
      public var step:int;
      
      public function §6!a§(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.step = param1;
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public static function initialize(param1:String) : §6!a§
      {
         return new §6!a§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
