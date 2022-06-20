package §+!"§
{
   public class §5#L§
   {
      
      private static const §+!#§:String = ":";
       
      
      public var step:int;
      
      public var §#$B§:Number;
      
      public var §5"?§:Number;
      
      public function §5#L§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§#$B§ = param2;
         this.§5"?§ = param3;
      }
      
      public static function initialize(param1:String) : §5#L§
      {
         var _loc2_:Array = param1.split(§+!#§);
         if(_loc2_.length == 3)
         {
            return new §5#L§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §+!#§ + this.§#$B§ + §+!#§ + this.§5"?§;
      }
   }
}
