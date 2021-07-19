package §-n§
{
   public class §,0§
   {
      
      private static const §4!@§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4!@§ = ":";
         }
      }
      
      public var step:int;
      
      public var §%H§:Number;
      
      public var §,!2§:Number;
      
      public function §,0§(param1:int, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               while(true)
               {
                  this.§%H§ = param2;
                  loop2:
                  while(!(_loc5_ && param3))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§,!2§ = param3;
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function initialize(param1:String) : §,0§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§4!@§);
         if(_loc3_)
         {
            if(_loc2_.length == 3)
            {
               if(_loc3_ || _loc3_)
               {
                  return new §,0§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
                  addr44:
               }
            }
            return null;
         }
         §§goto(addr44);
      }
      
      public function toString() : String
      {
         return this.step + §4!@§ + this.§%H§ + §4!@§ + this.§,!2§;
      }
   }
}
