package §;!R§
{
   public class §5+§
   {
      
      private static const §9![§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §9![§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §,!c§:Number;
      
      public var angle:Number;
      
      public function §5+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super();
            if(_loc6_)
            {
               this.step = param1;
               this.x = param2;
               if(_loc6_ || param2)
               {
                  this.y = param3;
                  if(_loc6_ || param3)
                  {
                     addr70:
                     this.§,!c§ = param4;
                     this.angle = param5;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public static function initialize(param1:String) : §5+§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§9![§);
         if(!_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_)
               {
                  return new §5+§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §9![§ + this.x + §9![§ + this.y + §9![§ + this.§,!c§ + §9![§ + this.angle;
      }
   }
}
