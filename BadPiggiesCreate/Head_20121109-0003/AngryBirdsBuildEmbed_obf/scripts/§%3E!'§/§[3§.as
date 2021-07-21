package §>!'§
{
   import §<!<§.§;J§;
   
   public class §[3§ extends §'T§
   {
      
      public static const §[+§:int = 5;
      
      private static var §#!K§:§'T§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[+§ = 5;
            if(_loc1_ || _loc2_)
            {
               addr38:
               §#!K§ = new §[3§(0,0,§;J§.§-!<§,§;J§.§=!r§,§;J§.§`5§,§;J§.§ +§,§[+§);
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §[3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'T§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§'T§ = null;
         §§push(param1);
         if(_loc6_)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && param2))
            {
               §§push(§[+§);
               if(!(_loc7_ && §[3§))
               {
                  if(§§pop() === _loc5_)
                  {
                     addr74:
                     §§push(0);
                     if(_loc6_)
                     {
                        addr77:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr83:
                  switch(§§pop())
                  {
                     case 0:
                        _loc4_ = §#!K§;
                        return new §'T§(param2,param3,_loc4_.§>!d§,_loc4_.push,_loc4_.§while§,_loc4_.damage,param1);
                     default:
                        return §'T§.createExplosion(param1,param2,param3);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr74);
         }
         §§goto(addr83);
      }
   }
}
