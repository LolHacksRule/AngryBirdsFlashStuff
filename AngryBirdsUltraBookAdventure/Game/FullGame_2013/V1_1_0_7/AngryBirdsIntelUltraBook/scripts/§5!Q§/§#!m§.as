package §5!Q§
{
   public class §#!m§
   {
       
      
      public var step:int;
      
      public function §#!m§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
         }
         do
         {
            this.step = param1;
         }
         while(!_loc3_);
         
      }
      
      public static function initialize(param1:String) : §#!m§
      {
         return new §#!m§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
