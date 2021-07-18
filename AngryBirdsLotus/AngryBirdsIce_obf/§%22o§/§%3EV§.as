package §"o§
{
   public class §>V§
   {
      
      private static const §0!A§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0!A§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §^,§:Number;
      
      public var angle:Number;
      
      public function §>V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super();
         }
         this.step = param1;
         do
         {
            this.x = param2;
         }
         while(!(_loc6_ || param1));
         
         this.y = param3;
         this.§^,§ = param4;
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §>V§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§0!A§);
         if(!_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc4_)
               {
                  return new §>V§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §0!A§ + this.x + §0!A§ + this.y + §0!A§ + this.§^,§ + §0!A§ + this.angle;
      }
   }
}
