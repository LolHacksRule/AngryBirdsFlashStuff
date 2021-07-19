package §+§
{
   import §7!O§.§^!§;
   
   public class §?g§
   {
      
      public static const §5!-§:uint = 16777215;
      
      public static const §=H§:uint = 12632256;
      
      public static const §2M§:uint = 8421504;
      
      public static const §8!9§:uint = 0;
      
      public static const §'!R§:uint = 16711680;
      
      public static const §+!!§:uint = 8388608;
      
      public static const §8[§:uint = 16776960;
      
      public static const §+!$§:uint = 8421376;
      
      public static const §5E§:uint = 65280;
      
      public static const §1! §:uint = 32768;
      
      public static const §[0§:uint = 65535;
      
      public static const §9!9§:uint = 32896;
      
      public static const §1,§:uint = 255;
      
      public static const §-&§:uint = 128;
      
      public static const §1w§:uint = 16711935;
      
      public static const §]v§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?g§))
         {
            §5!-§ = 16777215;
            §=H§ = 12632256;
            loop0:
            while(true)
            {
               §2M§ = 8421504;
               loop1:
               while(true)
               {
                  §8!9§ = 0;
                  §'!R§ = 16711680;
                  loop2:
                  while(true)
                  {
                     §+!!§ = 8388608;
                     loop3:
                     while(true)
                     {
                        §8[§ = 16776960;
                        while(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §+!$§ = 8421376;
                           while(true)
                           {
                              §5E§ = 65280;
                              addr116:
                              while(true)
                              {
                                 §1! § = 32768;
                              }
                           }
                           addr106:
                           §9!9§ = 32896;
                           if(_loc1_ && §?g§)
                           {
                              continue;
                           }
                           §1,§ = 255;
                           loop9:
                           while(true)
                           {
                              §-&§ = 128;
                              loop10:
                              while(!_loc1_)
                              {
                                 §1w§ = 16711935;
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop9;
                                    }
                                    continue loop10;
                                    addr63:
                                    §]v§ = 8388736;
                                    if(_loc2_ || §?g§)
                                    {
                                       return;
                                    }
                                 }
                                 while(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr106);
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr63);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr121);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §[0§ = 65535;
            §§goto(addr102);
         }
      }
      
      public function §?g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §^!§();
      }
      
      public static function §^S§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §"!2§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §2t§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(!_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §7p§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §;?§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(16);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param2))
               {
                  §§goto(addr55);
               }
               §§goto(addr71);
            }
            §§goto(addr58);
         }
         addr55:
         §§push(param2);
         if(!_loc5_)
         {
            addr58:
            §§push(§§pop() << 8);
            if(_loc4_)
            {
               §§goto(addr62);
            }
            §§goto(addr71);
         }
         addr62:
         §§push(§§pop() | §§pop());
         if(!(_loc5_ && param2))
         {
            addr71:
            return §§pop() | param3;
         }
      }
      
      public static function §0=§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            §§push(24);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || §?g§)
               {
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(16);
                     if(_loc5_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || §?g§)
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc5_ || param2)
                           {
                              addr77:
                              §§push(param3);
                              if(_loc5_)
                              {
                                 addr80:
                                 §§push(§§pop() << 8);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              addr89:
                              §§push(§§pop() | §§pop());
                              if(_loc5_)
                              {
                                 §§push(param4);
                              }
                              return §§pop();
                              §§push(§§pop() | §§pop());
                           }
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr89);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr89);
      }
   }
}
