package §;! §
{
   import §=!S§.§3[§;
   
   public class §[!'§
   {
      
      public static const §>!@§:uint = 16777215;
      
      public static const §`!%§:uint = 12632256;
      
      public static const §&F§:uint = 8421504;
      
      public static const §5G§:uint = 0;
      
      public static const §?j§:uint = 16711680;
      
      public static const §,!+§:uint = 8388608;
      
      public static const §2!N§:uint = 16776960;
      
      public static const §9E§:uint = 8421376;
      
      public static const §;U§:uint = 65280;
      
      public static const §#!!§:uint = 32768;
      
      public static const §8!=§:uint = 65535;
      
      public static const §@`§:uint = 32896;
      
      public static const §-d§:uint = 255;
      
      public static const § !!§:uint = 128;
      
      public static const §%5§:uint = 16711935;
      
      public static const §&!V§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §>!@§ = 16777215;
            loop0:
            while(true)
            {
               §`!%§ = 12632256;
               while(true)
               {
                  §&F§ = 8421504;
                  while(true)
                  {
                     §5G§ = 0;
                     while(true)
                     {
                        §?j§ = 16711680;
                        loop4:
                        while(true)
                        {
                           §,!+§ = 8388608;
                           addr163:
                           while(true)
                           {
                              §2!N§ = 16776960;
                              while(true)
                              {
                                 §9E§ = 8421376;
                                 continue loop4;
                                 addr63:
                                 if(!(_loc1_ && §[!'§))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §-d§ = 255;
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §[!'§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §3[§();
      }
      
      public static function §>W§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §,!6§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!(_loc2_ && §[!'§))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §`^§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §5R§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §,!_§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(16);
            if(!(_loc4_ && §[!'§))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc4_ && §[!'§))
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     addr49:
                     §§push(§§pop() << 8);
                     if(!(_loc4_ && §[!'§))
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr72);
                  }
                  addr68:
                  §§push(§§pop() | §§pop());
                  if(!_loc4_)
                  {
                     addr72:
                     return §§pop() | param3;
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr49);
         }
         §§goto(addr72);
      }
      
      public static function §5!+§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(24);
            if(_loc6_ || param3)
            {
               §§push(§§pop() << §§pop());
               if(_loc6_)
               {
                  addr46:
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(16);
                     if(_loc6_)
                     {
                        §§push(§§pop() << §§pop());
                        if(!_loc5_)
                        {
                           addr55:
                           §§push(§§pop() | §§pop());
                           if(!(_loc5_ && param2))
                           {
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr67:
                                 §§push(§§pop() << 8);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr90);
                                 }
                              }
                           }
                           §§goto(addr90);
                        }
                        addr90:
                        §§push(§§pop() | §§pop());
                        if(!_loc5_)
                        {
                           §§push(param4);
                        }
                        return §§pop();
                        §§push(§§pop() | §§pop());
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr90);
            }
            §§goto(addr55);
         }
         §§goto(addr46);
      }
   }
}
