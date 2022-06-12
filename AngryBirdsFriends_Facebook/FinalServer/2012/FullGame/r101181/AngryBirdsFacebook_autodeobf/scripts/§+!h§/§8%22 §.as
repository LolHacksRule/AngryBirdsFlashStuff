package §+!h§
{
   public class §8" §
   {
      
      private static const §[!D§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!D§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!T§:Number;
      
      public var angle:Number;
      
      public function §8" §(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               while(true)
               {
                  this.x = param2;
                  while(!(_loc6_ && this))
                  {
                     this.y = param3;
                     while(_loc7_)
                     {
                        if(_loc7_)
                        {
                           this.§@!T§ = param4;
                           loop4:
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 this.angle = param5;
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function initialize(param1:String) : §8" §
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§[!D§);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_)
               {
                  return new §8" §(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function toString() : String
      {
         return this.step + §[!D§ + this.x + §[!D§ + this.y + §[!D§ + this.§@!T§ + §[!D§ + this.angle;
      }
   }
}
