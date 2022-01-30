package §;n§
{
   public class §^h§
   {
      
      private static const §^!f§:String = ":";
       
      
      public var step:int;
      
      public var §@!a§:Number;
      
      public var §7<§:Number;
      
      public function §^h§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§@!a§ = param2;
         this.§7<§ = param3;
      }
      
      public static function initialize(param1:String) : §^h§
      {
         var _loc2_:Array = param1.split(§^!f§);
         if(_loc2_.length == 3)
         {
            return new §^h§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §^!f§ + this.§@!a§ + §^!f§ + this.§7<§;
      }
   }
}
