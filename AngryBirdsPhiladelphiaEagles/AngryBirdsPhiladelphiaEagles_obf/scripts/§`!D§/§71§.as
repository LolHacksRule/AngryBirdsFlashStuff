package §`!D§
{
   public class §71§
   {
      
      private static const §-0§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-0§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §28§:Number;
      
      public var angle:Number;
      
      public function §71§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
         }
         this.step = param1;
         do
         {
            this.x = param2;
         }
         while(_loc6_);
         
         this.y = param3;
         do
         {
            this.§28§ = param4;
         }
         while(_loc6_);
         
         this.angle = param5;
      }
      
      public static function initialize(param1:String) : §71§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§-0§);
         if(!_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_)
               {
                  return new §71§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr39:
               }
            }
            return null;
         }
         §§goto(addr39);
      }
      
      public function toString() : String
      {
         return this.step + §-0§ + this.x + §-0§ + this.y + §-0§ + this.§28§ + §-0§ + this.angle;
      }
   }
}
