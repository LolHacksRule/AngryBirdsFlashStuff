package §_-z-§
{
   public class §_-8w§
   {
       
      
      public var step:int;
      
      public function §_-8w§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.step = param1;
         }
         while(!_loc3_);
         
      }
      
      public static function initialize(param1:String) : §_-8w§
      {
         return new §_-8w§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
