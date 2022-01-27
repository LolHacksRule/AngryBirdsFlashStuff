package §>!J§
{
   public class §;!X§
   {
      
      private static const §""[§:String = ":";
       
      
      public var step:int;
      
      public var §!"1§:Number;
      
      public var §?!u§:Number;
      
      public function §;!X§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§!"1§ = param2;
         this.§?!u§ = param3;
      }
      
      public static function initialize(param1:String) : §;!X§
      {
         var _loc2_:Array = param1.split(§""[§);
         if(_loc2_.length == 3)
         {
            return new §;!X§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §""[§ + this.§!"1§ + §""[§ + this.§?!u§;
      }
   }
}
