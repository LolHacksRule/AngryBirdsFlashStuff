package §@2§
{
   import §@%§.§"m§;
   
   public class §3§
   {
      
      public static const §#4§:uint = 16777215;
      
      public static const §]!F§:uint = 12632256;
      
      public static const §'!Z§:uint = 8421504;
      
      public static const §[j§:uint = 0;
      
      public static const §%5§:uint = 16711680;
      
      public static const §3!7§:uint = 8388608;
      
      public static const §'j§:uint = 16776960;
      
      public static const §4<§:uint = 8421376;
      
      public static const §1!b§:uint = 65280;
      
      public static const §=c§:uint = 32768;
      
      public static const §<S§:uint = 65535;
      
      public static const §5!<§:uint = 32896;
      
      public static const §[,§:uint = 255;
      
      public static const §2M§:uint = 128;
      
      public static const §0!F§:uint = 16711935;
      
      public static const §#%§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#4§ = 16777215;
            while(true)
            {
               §]!F§ = 12632256;
               loop1:
               while(true)
               {
                  §'!Z§ = 8421504;
                  addr198:
                  while(true)
                  {
                     §[j§ = 0;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §"m§();
      }
      
      public static function §3!>§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §0!k§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §0!T§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!(_loc2_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §2&§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §-5§(param1:int, param2:int, param3:int) : uint
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
            if(_loc5_ || §3§)
            {
               addr57:
               return §§pop() | param3;
            }
         }
         §§goto(addr57);
      }
      
      public static function §!!H§(param1:int, param2:int, param3:int, param4:int) : uint
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
                     if(!(_loc6_ && §3§))
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || §3§)
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(!(_loc6_ && §3§))
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
