package §`e§
{
   public class §^!&§
   {
      
      private static const §0'§:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §3s§:Number;
      
      public var angle:Number;
      
      public function §^!&§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         this.§3s§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §^!&§
      {
         var _loc2_:Array = param1.split(§0'§);
         if(_loc2_.length == 5)
         {
            return new §^!&§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §0'§ + this.x + §0'§ + this.y + §0'§ + this.§3s§ + §0'§ + this.angle;
      }
   }
}
