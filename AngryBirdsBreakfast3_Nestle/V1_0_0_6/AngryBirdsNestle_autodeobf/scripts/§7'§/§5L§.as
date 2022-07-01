package §7'§
{
   public class §5L§
   {
      
      private static const §1!"§:String = ":";
       
      
      public var step:int;
      
      public var §>!#§:Number;
      
      public var §6D§:Number;
      
      public function §5L§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§>!#§ = param2;
         this.§6D§ = param3;
      }
      
      public static function initialize(param1:String) : §5L§
      {
         var _loc2_:Array = param1.split(§1!"§);
         if(_loc2_.length == 3)
         {
            return new §5L§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §1!"§ + this.§>!#§ + §1!"§ + this.§6D§;
      }
   }
}
