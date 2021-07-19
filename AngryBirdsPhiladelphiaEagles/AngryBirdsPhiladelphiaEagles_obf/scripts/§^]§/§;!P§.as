package §^]§
{
   import §,!"§.§@f§;
   
   public class §;!P§ extends §`!K§
   {
       
      
      public function §;!P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §[e§(param1:String) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§7!K§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         try
         {
            _loc2_ = §0@§(param1);
            _loc3_ = param1.split("-");
            if(!(_loc8_ && param1))
            {
               _loc4_ = parseInt(_loc3_[1]) - 1;
               if(_loc7_)
               {
                  §§goto(addr64);
               }
               else
               {
                  addr117:
               }
               §§push(param1);
               §§goto(addr118);
            }
            addr64:
            §§push(§@f§.§0!,§[_loc4_] + " \n");
            if(!(_loc8_ && param1))
            {
               §§push(§§pop() + §@f§.§-k§[_loc4_]);
            }
            §§push(§§pop());
            if(!_loc8_)
            {
               §§push(_loc5_ = §§pop());
               if(_loc8_ && param1)
               {
                  addr118:
                  return §§pop();
               }
            }
            return §§pop();
         }
         catch(e:Error)
         {
         }
         §§goto(addr117);
      }
   }
}
