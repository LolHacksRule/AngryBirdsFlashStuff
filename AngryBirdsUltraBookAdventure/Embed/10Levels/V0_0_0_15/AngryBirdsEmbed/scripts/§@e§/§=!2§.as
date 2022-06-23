package §@e§
{
   import §8k§.§@B§;
   
   public class §=!2§
   {
      
      public static const §%h§:uint = 16777215;
      
      public static const §`2§:uint = 12632256;
      
      public static const §;=§:uint = 8421504;
      
      public static const §5%§:uint = 0;
      
      public static const §^]§:uint = 16711680;
      
      public static const §;!-§:uint = 8388608;
      
      public static const §%;§:uint = 16776960;
      
      public static const §>R§:uint = 8421376;
      
      public static const §'!G§:uint = 65280;
      
      public static const §%?§:uint = 32768;
      
      public static const §@!1§:uint = 65535;
      
      public static const §@u§:uint = 32896;
      
      public static const §=!§:uint = 255;
      
      public static const §`D§:uint = 128;
      
      public static const §23§:uint = 16711935;
      
      public static const §#a§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%h§ = 16777215;
            if(_loc1_)
            {
               addr28:
               §`2§ = 12632256;
               §;=§ = 8421504;
            }
            §5%§ = 0;
            §^]§ = 16711680;
            §;!-§ = 8388608;
            if(!_loc2_)
            {
               §%;§ = 16776960;
               if(_loc1_)
               {
                  §>R§ = 8421376;
                  §'!G§ = 65280;
                  if(_loc1_)
                  {
                     §%?§ = 32768;
                     if(_loc1_ || _loc2_)
                     {
                        §@!1§ = 65535;
                        if(!(_loc2_ && _loc1_))
                        {
                           §@u§ = 32896;
                           if(_loc1_ || _loc2_)
                           {
                              addr108:
                              §=!§ = 255;
                           }
                           §§goto(addr122);
                        }
                        §`D§ = 128;
                        if(!_loc2_)
                        {
                           addr116:
                           §23§ = 16711935;
                           §#a§ = 8388736;
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr116);
               }
            }
            addr122:
            return;
         }
         §§goto(addr28);
      }
      
      public function §=!2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §@B§();
      }
      
      public static function §,!8§(param1:uint) : int
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
      
      public static function §`_§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!_loc2_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §"!5§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(!_loc3_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §+L§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §&`§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(16);
            if(_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc5_)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc4_)
                     {
                        §§goto(addr52);
                     }
                     addr52:
                     §§push(§§pop() | §§pop());
                     if(!_loc5_)
                     {
                        §§push(param3);
                     }
                     return §§pop();
                     §§push(§§pop() | §§pop());
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §2d§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            §§push(24);
            if(_loc5_ || param1)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc6_ && §=!2§))
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(16);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || §=!2§)
                        {
                           addr84:
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              addr87:
                              §§push(param3);
                              if(_loc5_ || param3)
                              {
                                 addr96:
                                 addr95:
                                 §§push(§§pop() << 8);
                                 if(!_loc5_)
                                 {
                                 }
                                 addr109:
                                 return §§pop() | §§pop();
                                 addr108:
                              }
                              §§push(§§pop() | §§pop());
                              if(!(_loc6_ && param3))
                              {
                                 addr107:
                                 §§goto(addr108);
                                 §§push(param4);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr84);
               }
               §§goto(addr87);
            }
            §§goto(addr95);
         }
         §§goto(addr107);
      }
   }
}
