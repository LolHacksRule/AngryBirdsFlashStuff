package §;T§
{
   public class §%!-§
   {
      
      private static const §9P§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9P§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §0!d§:Number;
      
      public var angle:Number;
      
      public function §%!-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.step = param1;
               addr82:
               while(true)
               {
                  this.x = param2;
                  addr31:
                  if(!_loc7_)
                  {
                     return;
                     addr43:
                  }
               }
               addr50:
               if(_loc7_ && param3)
               {
                  continue;
               }
               this.angle = param5;
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr31);
                  }
                  while(true)
                  {
                     this.§0!d§ = param4;
                  }
                  addr62:
               }
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr50);
                  }
                  else
                  {
                     while(true)
                     {
                        this.y = param3;
                        §§goto(addr62);
                     }
                     §§goto(addr43);
                     addr77:
                  }
                  §§goto(addr57);
               }
               addr57:
               §§goto(addr82);
            }
         }
         §§goto(addr77);
      }
      
      public static function initialize(param1:String) : §%!-§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§9P§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc3_ && param1))
               {
                  return new §%!-§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function toString() : String
      {
         return this.step + §9P§ + this.x + §9P§ + this.y + §9P§ + this.§0!d§ + §9P§ + this.angle;
      }
   }
}
