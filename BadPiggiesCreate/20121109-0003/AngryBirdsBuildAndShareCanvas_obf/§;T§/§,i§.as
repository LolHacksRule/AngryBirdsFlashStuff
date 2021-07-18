package §;T§
{
   public class §,i§
   {
       
      
      public var step:int;
      
      public function §,i§(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
         }
         do
         {
            this.step = param1;
         }
         while(!_loc2_);
         
      }
      
      public static function initialize(param1:String) : §,i§
      {
         return new §,i§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
