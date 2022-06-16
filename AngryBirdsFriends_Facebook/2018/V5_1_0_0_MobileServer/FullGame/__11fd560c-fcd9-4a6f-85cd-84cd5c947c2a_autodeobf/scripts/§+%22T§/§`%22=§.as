package §+"T§
{
   public class §`"=§
   {
      
      private static const § "M§:String = ":";
       
      
      public var step:int;
      
      public var §&#d§:Number;
      
      public var §]q§:Number;
      
      public function §`"=§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§&#d§ = param2;
         this.§]q§ = param3;
      }
      
      public static function initialize(param1:String) : §`"=§
      {
         var _loc2_:Array = param1.split(§ "M§);
         if(_loc2_.length == 3)
         {
            return new §`"=§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + § "M§ + this.§&#d§ + § "M§ + this.§]q§;
      }
   }
}
