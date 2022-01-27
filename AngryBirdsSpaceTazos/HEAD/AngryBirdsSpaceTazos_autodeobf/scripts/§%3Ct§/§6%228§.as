package §<t§
{
   public class §6"8§
   {
      
      private static const §;!s§:String = ":";
       
      
      public var step:int;
      
      public var §@w§:Number;
      
      public var §`!-§:Number;
      
      public function §6"8§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§@w§ = param2;
         this.§`!-§ = param3;
      }
      
      public static function initialize(param1:String) : §6"8§
      {
         var _loc2_:Array = param1.split(§;!s§);
         if(_loc2_.length == 3)
         {
            return new §6"8§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §;!s§ + this.§@w§ + §;!s§ + this.§`!-§;
      }
   }
}
