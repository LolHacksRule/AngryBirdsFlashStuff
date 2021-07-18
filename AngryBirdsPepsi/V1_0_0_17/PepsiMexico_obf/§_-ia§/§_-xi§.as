package §_-ia§
{
   import §_-HT§.§_-rU§;
   
   public class §_-xi§
   {
      
      public static const §_-5e§:uint = 16777215;
      
      public static const §_-l0§:uint = 12632256;
      
      public static const §_-sG§:uint = 8421504;
      
      public static const §_-KW§:uint = 0;
      
      public static const §_-Oj§:uint = 16711680;
      
      public static const §_-3c§:uint = 8388608;
      
      public static const §_-lu§:uint = 16776960;
      
      public static const §_-8i§:uint = 8421376;
      
      public static const §_-FY§:uint = 65280;
      
      public static const §_-Ku§:uint = 32768;
      
      public static const §_-Z-§:uint = 65535;
      
      public static const §_-Xr§:uint = 32896;
      
      public static const §_-Yb§:uint = 255;
      
      public static const §_-EI§:uint = 128;
      
      public static const §_-Qd§:uint = 16711935;
      
      public static const §_-31§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-l0§ = 12632256;
            if(_loc1_ || _loc1_)
            {
               §_-sG§ = 8421504;
               if(!_loc2_)
               {
                  §_-KW§ = 0;
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr96);
               }
               §_-Oj§ = 16711680;
               if(_loc1_)
               {
                  §_-3c§ = 8388608;
                  if(!(_loc2_ && _loc2_))
                  {
                     §_-lu§ = 16776960;
                     §_-8i§ = 8421376;
                     if(_loc1_)
                     {
                        §_-FY§ = 65280;
                        if(!_loc2_)
                        {
                           §_-Ku§ = 32768;
                           §§goto(addr76);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr96);
            }
            addr76:
            §_-Z-§ = 65535;
            if(!(_loc2_ && _loc1_))
            {
               §_-Xr§ = 32896;
               if(!(_loc2_ && _loc1_))
               {
                  addr96:
                  §_-Yb§ = 255;
                  §§goto(addr99);
               }
               addr99:
               §_-EI§ = 128;
               §§goto(addr102);
            }
            addr102:
            §_-Qd§ = 16711935;
            if(!(_loc2_ && _loc2_))
            {
               §_-31§ = 8388736;
            }
            return;
         }
         §§goto(addr96);
      }
      
      public function §_-xi§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         throw new §_-rU§();
      }
      
      public static function §_-Hy§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || param1)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §_-UI§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §_-KU§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §_-gf§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-6F§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(16);
            if(_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(_loc4_ || param3)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     addr49:
                     §§push(§§pop() << 8);
                     if(!_loc5_)
                     {
                        §§goto(addr58);
                     }
                  }
                  addr58:
                  §§push(§§pop() | §§pop());
                  if(!_loc5_)
                  {
                     addr56:
                     §§push(param3);
                  }
                  return §§pop();
                  §§push(§§pop() | §§pop());
               }
               §§goto(addr56);
            }
            §§goto(addr49);
         }
         §§goto(addr58);
      }
      
      public static function §_-Gc§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(24);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() << §§pop());
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(16);
                     if(_loc6_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_ || §_-xi§)
                        {
                           addr49:
                           §§push(§§pop() | §§pop());
                           if(!_loc5_)
                           {
                              addr52:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr63:
                                 addr62:
                                 §§push(§§pop() << 8);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr71);
                              }
                              §§push(§§pop() | §§pop());
                              if(!_loc5_)
                              {
                                 §§push(param4);
                              }
                           }
                           §§goto(addr71);
                        }
                        addr71:
                        return §§pop() | §§pop();
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr62);
               }
               §§goto(addr63);
            }
            §§goto(addr49);
         }
         §§goto(addr52);
      }
   }
}
