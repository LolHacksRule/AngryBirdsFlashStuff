package §8g§
{
   import §"v§.§2!;§;
   
   public class §2!E§
   {
      
      public static const §?!+§:uint = 16777215;
      
      public static const § B§:uint = 12632256;
      
      public static const §`^§:uint = 8421504;
      
      public static const §?T§:uint = 0;
      
      public static const §?2§:uint = 16711680;
      
      public static const §`!G§:uint = 8388608;
      
      public static const §5!J§:uint = 16776960;
      
      public static const §^!C§:uint = 8421376;
      
      public static const §,-§:uint = 65280;
      
      public static const §#5§:uint = 32768;
      
      public static const §64§:uint = 65535;
      
      public static const § 3§:uint = 32896;
      
      public static const §=K§:uint = 255;
      
      public static const §^A§:uint = 128;
      
      public static const §!<§:uint = 16711935;
      
      public static const §8x§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!+§ = 16777215;
            while(true)
            {
               § B§ = 12632256;
               loop1:
               while(true)
               {
                  §`^§ = 8421504;
                  addr198:
                  while(true)
                  {
                     §?T§ = 0;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §2!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §2!;§();
      }
      
      public static function §9Z§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §6,§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §3i§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!(_loc2_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §7!@§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §@C§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param2))
         {
            §§push(16);
            if(!_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc5_)
                     {
                        §§goto(addr48);
                     }
                  }
               }
               §§goto(addr57);
            }
            addr48:
            §§push(§§pop() | §§pop());
            if(_loc5_ || §2!E§)
            {
               addr57:
               return §§pop() | param3;
            }
         }
         §§goto(addr57);
      }
      
      public static function §1!d§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(24);
            if(!_loc6_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param3)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(16);
                     if(!(_loc6_ && §2!E§))
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || §2!E§)
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(!(_loc6_ && §2!E§))
                              {
                                 addr81:
                                 addr80:
                                 §§push(§§pop() << 8);
                                 if(!_loc5_)
                                 {
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr94);
                        }
                        §§push(§§pop() | §§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr94:
                           return §§pop() | §§pop();
                           §§push(param4);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
   }
}
