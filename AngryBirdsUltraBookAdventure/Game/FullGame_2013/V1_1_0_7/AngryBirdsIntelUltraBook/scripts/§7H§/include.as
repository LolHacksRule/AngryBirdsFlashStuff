package §7H§
{
   import §[z§.§@F§;
   
   public class include
   {
      
      public static const §<!d§:uint = 16777215;
      
      public static const §^>§:uint = 12632256;
      
      public static const §-"$§:uint = 8421504;
      
      public static const §#!1§:uint = 0;
      
      public static const §;!c§:uint = 16711680;
      
      public static const §?3§:uint = 8388608;
      
      public static const §%4§:uint = 16776960;
      
      public static const §'!V§:uint = 8421376;
      
      public static const §;!§:uint = 65280;
      
      public static const §"!8§:uint = 32768;
      
      public static const §&!4§:uint = 65535;
      
      public static const §4X§:uint = 32896;
      
      public static const §'&§:uint = 255;
      
      public static const §0!^§:uint = 128;
      
      public static const §@!F§:uint = 16711935;
      
      public static const §4e§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!d§ = 16777215;
            loop0:
            while(true)
            {
               §^>§ = 12632256;
               addr173:
               while(true)
               {
                  §-"$§ = 8421504;
                  addr168:
                  while(true)
                  {
                     §#!1§ = 0;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §%4§ = 16776960;
            §§goto(addr129);
         }
      }
      
      public function include()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §@F§();
      }
      
      public static function §5!&§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || include)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §`#§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!(_loc2_ && include))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §^9§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(!_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §]7§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §5i§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(16);
            if(!_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc4_ || include)
               {
                  addr55:
                  §§push(param2);
                  if(!_loc5_)
                  {
                     addr58:
                     §§push(§§pop() << 8);
                     if(!(_loc5_ && include))
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc5_)
                        {
                           addr71:
                           return §§pop() | param3;
                        }
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr58);
         }
         §§goto(addr55);
      }
      
      public static function § !h§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || include)
         {
            §§push(24);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param3))
               {
                  §§push(param2);
                  if(!(_loc5_ && include))
                  {
                     addr59:
                     §§push(16);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(!_loc5_)
                           {
                              §§push(param3);
                              if(!(_loc5_ && param3))
                              {
                                 addr91:
                                 §§push(§§pop() << 8);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr100);
                                 }
                              }
                              addr100:
                              §§push(§§pop() | §§pop());
                              if(_loc6_)
                              {
                                 addr98:
                                 §§push(param4);
                              }
                              return §§pop();
                              §§push(§§pop() | §§pop());
                           }
                           §§goto(addr98);
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr100);
            }
            §§goto(addr59);
         }
         §§goto(addr98);
      }
   }
}
