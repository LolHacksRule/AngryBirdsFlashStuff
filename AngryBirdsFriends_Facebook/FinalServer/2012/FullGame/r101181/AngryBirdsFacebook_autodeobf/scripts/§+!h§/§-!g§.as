package §+!h§
{
   public class §-!g§
   {
       
      
      public var step:int;
      
      public function §-!g§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            do
            {
               this.step = param1;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public static function initialize(param1:String) : §-!g§
      {
         return new §-!g§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
