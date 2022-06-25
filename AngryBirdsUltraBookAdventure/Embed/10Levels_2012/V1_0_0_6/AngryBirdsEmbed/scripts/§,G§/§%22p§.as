package §,G§
{
   import §8E§.§6g§;
   
   public class §"p§
   {
      
      public static const §<!§:uint = 16777215;
      
      public static const §4>§:uint = 12632256;
      
      public static const §-T§:uint = 8421504;
      
      public static const §1H§:uint = 0;
      
      public static const §]L§:uint = 16711680;
      
      public static const §7Z§:uint = 8388608;
      
      public static const §1'§:uint = 16776960;
      
      public static const §=h§:uint = 8421376;
      
      public static const §&O§:uint = 65280;
      
      public static const §^%§:uint = 32768;
      
      public static const §9!D§:uint = 65535;
      
      public static const §?E§:uint = 32896;
      
      public static const §1b§:uint = 255;
      
      public static const §@%§:uint = 128;
      
      public static const §%X§:uint = 16711935;
      
      public static const §6!#§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!§ = 16777215;
            if(!_loc2_)
            {
               §4>§ = 12632256;
               §-T§ = 8421504;
               §1H§ = 0;
               §]L§ = 16711680;
               §7Z§ = 8388608;
               if(!(_loc2_ && §"p§))
               {
                  addr55:
                  §1'§ = 16776960;
                  if(_loc1_)
                  {
                     §=h§ = 8421376;
                     if(_loc1_ || §"p§)
                     {
                        §&O§ = 65280;
                        §^%§ = 32768;
                        §9!D§ = 65535;
                     }
                  }
               }
               §?E§ = 32896;
               addr92:
               §1b§ = 255;
               if(!_loc2_)
               {
                  §@%§ = 128;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr107:
                     §%X§ = 16711935;
                     §6!#§ = 8388736;
                  }
                  return;
               }
               §§goto(addr107);
            }
            §§goto(addr55);
         }
         §§goto(addr92);
      }
      
      public function §"p§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         throw new §6g§();
      }
      
      public static function §for §(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(_loc2_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §9V§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || param1)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §5J§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!_loc2_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §@R§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §0!J§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param3)
         {
            §§push(16);
            if(_loc5_ || param3)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param2)
               {
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(§§pop() << 8);
                     if(!_loc5_)
                     {
                     }
                     addr83:
                     return §§pop() | §§pop();
                     addr82:
                  }
                  §§push(§§pop() | §§pop());
                  if(!(_loc4_ && param2))
                  {
                     addr81:
                     §§goto(addr82);
                     §§push(param3);
                  }
                  §§goto(addr83);
               }
               §§goto(addr81);
            }
            §§goto(addr83);
         }
         §§goto(addr81);
      }
      
      public static function §%!+§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(24);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(16);
                     if(!_loc5_)
                     {
                        §§push(§§pop() << §§pop());
                        if(!(_loc5_ && §"p§))
                        {
                           §§push(§§pop() | §§pop());
                           if(!_loc5_)
                           {
                              addr73:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr77:
                                 §§push(§§pop() << 8);
                                 if(_loc6_)
                                 {
                                    §§goto(addr90);
                                 }
                              }
                              §§push(§§pop() | §§pop());
                           }
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr73);
            }
            addr90:
            §§push(§§pop() | §§pop());
            if(!(_loc5_ && §"p§))
            {
               §§push(param4);
            }
            return §§pop();
         }
         §§goto(addr73);
      }
   }
}
