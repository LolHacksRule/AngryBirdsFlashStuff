package § !w§
{
   public class §&-§
   {
      
      private static const §%!B§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §%!B§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §3"'§:Number;
      
      public var angle:Number;
      
      public function §&-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               loop1:
               while(true)
               {
                  this.x = param2;
                  loop2:
                  while(true)
                  {
                     this.y = param3;
                     while(true)
                     {
                        this.§3"'§ = param4;
                        loop4:
                        while(!(_loc7_ && param2))
                        {
                           if(!_loc7_)
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    this.angle = param5;
                                    if(!(_loc7_ && param2))
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function initialize(param1:String) : §&-§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§%!B§);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_)
               {
                  return new §&-§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr44:
               }
            }
            return null;
         }
         §§goto(addr44);
      }
      
      public function toString() : String
      {
         return this.step + §%!B§ + this.x + §%!B§ + this.y + §%!B§ + this.§3"'§ + §%!B§ + this.angle;
      }
   }
}
