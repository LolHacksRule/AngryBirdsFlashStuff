package §!![§
{
   public class §^7§
   {
       
      
      public var step:int;
      
      public function §^7§(param1:int)
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
         while(!_loc2_);
         
      }
      
      public static function initialize(param1:String) : §^7§
      {
         return new §^7§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
