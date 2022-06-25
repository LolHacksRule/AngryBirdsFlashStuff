package §9!r§
{
   import §+&§.§3D§;
   import §]![§.§1! §;
   
   public class §<!B§ extends §1! §
   {
      
      public static const §`'§:int = 5;
      
      private static var §`Y§:§1! §;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`'§ = 5;
            do
            {
               §`Y§ = new §<!B§(0,0,§3D§.§1g§,§3D§.§]0§,§3D§.§%+§,§3D§.§'!K§,§`'§);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §<!B§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1! §
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§1! § = null;
         §§push(param1);
         if(!(_loc7_ && param3))
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param2)
            {
               §§push(§`'§);
               if(_loc6_)
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
                        _loc4_ = §`Y§;
                        return new §1! §(param2,param3,_loc4_.§]!E§,_loc4_.push,_loc4_.§`!>§,_loc4_.damage,param1);
                     default:
                        return §1! §.createExplosion(param1,param2,param3);
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
