package §;!R§
{
   public class PowerUp
   {
       
      
      public var step:int;
      
      public function PowerUp(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               this.step = param1;
            }
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
