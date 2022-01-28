package §;!R§
{
   public class PowerUp
   {
       
      
      public var step:int;
      
      public function PowerUp(param1:int)
      {
         super();
         this.step = param1;
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
