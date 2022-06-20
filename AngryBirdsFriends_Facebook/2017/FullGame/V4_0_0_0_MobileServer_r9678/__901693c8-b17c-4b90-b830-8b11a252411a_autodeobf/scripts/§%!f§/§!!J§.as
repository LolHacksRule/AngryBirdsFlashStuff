package §%!f§
{
   public class §!!J§
   {
      
      private static const §5!+§:String = ":";
       
      
      public var step:int;
      
      public var §1!J§:Number;
      
      public var §^",§:Number;
      
      public function §!!J§(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.§1!J§ = param2;
         this.§^",§ = param3;
      }
      
      public static function initialize(param1:String) : §!!J§
      {
         var _loc2_:Array = param1.split(§5!+§);
         if(_loc2_.length == 3)
         {
            return new §!!J§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §5!+§ + this.§1!J§ + §5!+§ + this.§^",§;
      }
   }
}
