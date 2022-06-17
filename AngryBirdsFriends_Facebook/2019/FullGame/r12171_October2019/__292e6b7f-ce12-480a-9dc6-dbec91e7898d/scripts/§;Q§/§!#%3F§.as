package §;Q§
{
   public class §!#?§
   {
      
      private static const §;#n§:String = ":";
       
      
      public var step:int;
      
      public var §1!Z§:Number;
      
      public var §>!e§:Number;
      
      public function §!#?§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§1!Z§ = param2;
         this.§>!e§ = param3;
      }
      
      public static function initialize(param1:String) : §!#?§
      {
         var _loc2_:Array = param1.split(§;#n§);
         if(_loc2_.length == 3)
         {
            return new §!#?§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §;#n§ + this.§1!Z§ + §;#n§ + this.§>!e§;
      }
   }
}
