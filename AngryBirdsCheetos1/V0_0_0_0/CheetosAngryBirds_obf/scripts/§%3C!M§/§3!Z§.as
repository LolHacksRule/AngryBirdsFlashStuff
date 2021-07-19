package §<!M§
{
   import §"! §.§4p§;
   
   public class §3!Z§
   {
      
      public static const §<+§:uint = 16777215;
      
      public static const §[a§:uint = 12632256;
      
      public static const §0!U§:uint = 8421504;
      
      public static const §%[§:uint = 0;
      
      public static const §2b§:uint = 16711680;
      
      public static const §1!@§:uint = 8388608;
      
      public static const §>t§:uint = 16776960;
      
      public static const §+_§:uint = 8421376;
      
      public static const §]_§:uint = 65280;
      
      public static const §`"§:uint = 32768;
      
      public static const §"p§:uint = 65535;
      
      public static const §?h§:uint = 32896;
      
      public static const §^%§:uint = 255;
      
      public static const § !S§:uint = 128;
      
      public static const §1!N§:uint = 16711935;
      
      public static const §#z§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<+§ = 16777215;
            while(true)
            {
               §[a§ = 12632256;
               addr173:
               while(true)
               {
                  §0!U§ = 8421504;
                  addr168:
                  while(true)
                  {
                     §%[§ = 0;
                     addr153:
                     while(true)
                     {
                        §2b§ = 16711680;
                     }
                  }
               }
            }
            addr177:
         }
         loop4:
         while(true)
         {
            §1!@§ = 8388608;
            addr143:
            while(true)
            {
               §>t§ = 16776960;
               addr136:
               while(_loc2_)
               {
                  §+_§ = 8421376;
                  while(true)
                  {
                     §]_§ = 65280;
                     addr112:
                     while(_loc2_ || _loc1_)
                     {
                        continue loop4;
                     }
                  }
               }
               §§goto(addr168);
            }
         }
      }
      
      public function §3!Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         throw new §4p§();
      }
      
      public static function §,!B§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §0#§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §!!P§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §"!@§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §6s§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(16);
            if(!_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param1))
               {
                  addr40:
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc5_)
                     {
                     }
                     addr62:
                     return §§pop() | §§pop();
                     addr61:
                  }
                  §§push(§§pop() | §§pop());
                  if(_loc4_)
                  {
                     addr60:
                     §§goto(addr61);
                     §§push(param3);
                  }
                  §§goto(addr62);
               }
               §§goto(addr60);
            }
            §§goto(addr62);
         }
         §§goto(addr40);
      }
      
      public static function §#1§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(24);
            if(!(_loc5_ && param3))
            {
               §§push(§§pop() << §§pop());
               if(_loc6_ || param3)
               {
                  §§push(param2);
                  if(!(_loc5_ && param3))
                  {
                     addr59:
                     §§push(16);
                     if(!_loc5_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(!(_loc5_ && param3))
                           {
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr77:
                                 §§push(§§pop() << 8);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() | §§pop());
                                    if(_loc6_ || param3)
                                    {
                                       addr99:
                                       §§push(§§pop() | param4);
                                    }
                                 }
                              }
                              §§goto(addr99);
                           }
                           return §§pop();
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr99);
            }
            §§goto(addr59);
         }
         §§goto(addr99);
      }
   }
}
