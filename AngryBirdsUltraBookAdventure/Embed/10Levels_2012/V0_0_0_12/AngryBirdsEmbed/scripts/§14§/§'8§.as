package §14§
{
   public class §'8§
   {
      
      private static const §0!8§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!8§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §4!$§:Number;
      
      public var angle:Number;
      
      public function §'8§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         super();
         this.step = param1;
         this.x = param2;
         this.y = param3;
         if(!_loc6_)
         {
            this.§4!$§ = param4;
         }
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §'8§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§0!8§);
         if(!_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_ || param1)
               {
                  return new §'8§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §0!8§ + this.x + §0!8§ + this.y + §0!8§ + this.§4!$§ + §0!8§ + this.angle;
      }
   }
}
