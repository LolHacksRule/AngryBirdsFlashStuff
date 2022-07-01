package §%U§
{
   public class §]!a§
   {
      
      private static const §`!e§:String = ":";
       
      
      public var step:int;
      
      public var §="§:Number;
      
      public var §]!8§:Number;
      
      public function §]!a§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§="§ = param2;
         this.§]!8§ = param3;
      }
      
      public static function initialize(param1:String) : §]!a§
      {
         var _loc2_:Array = param1.split(§`!e§);
         if(_loc2_.length == 3)
         {
            return new §]!a§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §`!e§ + this.§="§ + §`!e§ + this.§]!8§;
      }
   }
}
