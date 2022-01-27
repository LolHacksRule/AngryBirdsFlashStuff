package §`4§
{
   public class §2"%§
   {
      
      private static const §&"b§:String = ":";
       
      
      public var step:int;
      
      public var §?n§:Number;
      
      public var §[O§:Number;
      
      public function §2"%§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§?n§ = param2;
         this.§[O§ = param3;
      }
      
      public static function initialize(param1:String) : §2"%§
      {
         var _loc2_:Array = param1.split(§&"b§);
         if(_loc2_.length == 3)
         {
            return new §2"%§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §&"b§ + this.§?n§ + §&"b§ + this.§[O§;
      }
   }
}
