package §#"-§
{
   public class §,e§
   {
      
      private static const §7`§:String = ":";
       
      
      public var step:int;
      
      public var §>!4§:Number;
      
      public var §,!x§:Number;
      
      public function §,e§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§>!4§ = param2;
         this.§,!x§ = param3;
      }
      
      public static function initialize(param1:String) : §,e§
      {
         var _loc2_:Array = param1.split(§7`§);
         if(_loc2_.length == 3)
         {
            return new §,e§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §7`§ + this.§>!4§ + §7`§ + this.§,!x§;
      }
   }
}
