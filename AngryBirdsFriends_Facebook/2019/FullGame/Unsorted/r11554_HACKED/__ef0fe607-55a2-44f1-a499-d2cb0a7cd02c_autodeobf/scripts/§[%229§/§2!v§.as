package §["9§
{
   public class §2!v§
   {
      
      private static const §4R§:String = ":";
       
      
      public var step:int;
      
      public var §#" §:Number;
      
      public var §%-§:Number;
      
      public function §2!v§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§#" § = param2;
         this.§%-§ = param3;
      }
      
      public static function initialize(param1:String) : §2!v§
      {
         var _loc2_:Array = param1.split(§4R§);
         if(_loc2_.length == 3)
         {
            return new §2!v§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §4R§ + this.§#" § + §4R§ + this.§%-§;
      }
   }
}
