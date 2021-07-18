package §_-sK§
{
   public class §_-Nr§
   {
       
      
      public var step:int;
      
      public function §_-Nr§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               addr20:
               this.step = param1;
            }
            return;
         }
         §§goto(addr20);
      }
      
      public static function §_-oA§(param1:String) : §_-Nr§
      {
         return new §_-Nr§(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
