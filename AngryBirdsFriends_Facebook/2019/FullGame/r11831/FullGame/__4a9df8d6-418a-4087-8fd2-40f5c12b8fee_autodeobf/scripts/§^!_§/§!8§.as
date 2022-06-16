package §^!_§
{
   public class §!8§
   {
      
      private static const §>#L§:String = ":";
       
      
      public var step:int;
      
      public var §#";§:Number;
      
      public var §,#C§:Number;
      
      public function §!8§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§#";§ = param2;
         this.§,#C§ = param3;
      }
      
      public static function initialize(param1:String) : §!8§
      {
         var _loc2_:Array = param1.split(§>#L§);
         if(_loc2_.length == 3)
         {
            return new §!8§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §>#L§ + this.§#";§ + §>#L§ + this.§,#C§;
      }
   }
}
