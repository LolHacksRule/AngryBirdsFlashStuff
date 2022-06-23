package §!Z§
{
   public class §^!H§
   {
      
      private static const §9Z§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9Z§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §;,§:Number;
      
      public var angle:Number;
      
      public function §^!H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            this.step = param1;
            if(_loc7_)
            {
               this.x = param2;
               if(!(_loc6_ && param3))
               {
                  this.y = param3;
                  addr59:
                  this.§;,§ = param4;
                  if(_loc7_ || param2)
                  {
                     this.angle = param5;
                  }
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public static function initialize(param1:String) : §^!H§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§9Z§);
         if(_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc4_)
               {
                  §§goto(addr49);
               }
            }
            return null;
         }
         addr49:
         return new §^!H§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
      }
      
      public function toString() : String
      {
         return this.step + §9Z§ + this.x + §9Z§ + this.y + §9Z§ + this.§;,§ + §9Z§ + this.angle;
      }
   }
}
