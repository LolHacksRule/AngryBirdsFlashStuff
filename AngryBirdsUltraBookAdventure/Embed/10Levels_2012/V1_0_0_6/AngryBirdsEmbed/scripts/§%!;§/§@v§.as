package §%!;§
{
   public class §@v§
   {
      
      private static const §!&§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!&§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!§:Number;
      
      public var angle:Number;
      
      public function §@v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         this.step = param1;
         if(_loc6_)
         {
            this.x = param2;
         }
         this.y = param3;
         this.§@!§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §@v§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§!&§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc3_ && param1))
               {
                  return new §@v§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §!&§ + this.x + §!&§ + this.y + §!&§ + this.§@!§ + §!&§ + this.angle;
      }
   }
}
