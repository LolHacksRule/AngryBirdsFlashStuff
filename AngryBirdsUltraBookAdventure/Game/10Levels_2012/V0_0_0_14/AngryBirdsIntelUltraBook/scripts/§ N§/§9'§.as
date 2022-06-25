package § N§
{
   public class §9'§
   {
       
      
      public var step:int;
      
      public function §9'§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.step = param1;
         }
         while(!(_loc3_ || param1));
         
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
