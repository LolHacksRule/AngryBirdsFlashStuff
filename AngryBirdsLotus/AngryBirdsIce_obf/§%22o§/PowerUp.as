package §"o§
{
   public class PowerUp
   {
       
      
      public var step:int;
      
      public function PowerUp(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               this.step = param1;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public static function initialize(param1:String) : PowerUp
      {
         return new PowerUp(parseInt(param1));
      }
      
      public function toString() : String
      {
         return this.step.toString();
      }
   }
}
