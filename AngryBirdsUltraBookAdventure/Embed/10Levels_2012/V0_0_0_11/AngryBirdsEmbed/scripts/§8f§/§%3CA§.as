package §8f§
{
   import §]c§.§^!"§;
   
   public class §<A§
   {
      
      public static const §<=§:uint = 16777215;
      
      public static const § &§:uint = 12632256;
      
      public static const §09§:uint = 8421504;
      
      public static const §?O§:uint = 0;
      
      public static const §`!"§:uint = 16711680;
      
      public static const §]!!§:uint = 8388608;
      
      public static const §7!B§:uint = 16776960;
      
      public static const §"H§:uint = 8421376;
      
      public static const §62§:uint = 65280;
      
      public static const §0#§:uint = 32768;
      
      public static const §7+§:uint = 65535;
      
      public static const §7!A§:uint = 32896;
      
      public static const §>U§:uint = 255;
      
      public static const §[8§:uint = 128;
      
      public static const §,h§:uint = 16711935;
      
      public static const §'!+§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §<=§ = 16777215;
            if(_loc1_)
            {
               addr28:
               § &§ = 12632256;
               §09§ = 8421504;
            }
            §?O§ = 0;
            §`!"§ = 16711680;
            §]!!§ = 8388608;
            if(!_loc2_)
            {
               §7!B§ = 16776960;
               if(_loc1_)
               {
                  §"H§ = 8421376;
                  §62§ = 65280;
                  if(_loc1_)
                  {
                     §0#§ = 32768;
                     if(_loc1_ || _loc2_)
                     {
                        §7+§ = 65535;
                        if(!(_loc2_ && _loc1_))
                        {
                           §7!A§ = 32896;
                           if(_loc1_ || _loc2_)
                           {
                              addr108:
                              §>U§ = 255;
                           }
                           §§goto(addr122);
                        }
                        §[8§ = 128;
                        if(!_loc2_)
                        {
                           addr116:
                           §,h§ = 16711935;
                           §'!+§ = 8388736;
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
      
      public function §<A§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §^!"§();
      }
      
      public static function §=1§(param1:uint) : int
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
      
      public static function §2t§(param1:uint) : int
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
      
      public static function §;c§(param1:uint) : int
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
      
      public static function §^q§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §?e§(param1:int, param2:int, param3:int) : uint
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
      
      public static function §2`§(param1:int, param2:int, param3:int, param4:int) : uint
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
               if(!(_loc6_ && §<A§))
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(16);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || §<A§)
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
