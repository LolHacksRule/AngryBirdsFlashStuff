package §=]§
{
   import §;8§.§["T§;
   
   public class §4"I§
   {
      
      public static const §4X§:uint = 16777215;
      
      public static const §!"k§:uint = 12632256;
      
      public static const §5!x§:uint = 8421504;
      
      public static const §'E§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §3!+§:uint = 8388608;
      
      public static const §3#'§:uint = 16776960;
      
      public static const §9!;§:uint = 8421376;
      
      public static const §+"R§:uint = 65280;
      
      public static const GREEN:uint = 32768;
      
      public static const §>#@§:uint = 65535;
      
      public static const §-#M§:uint = 32896;
      
      public static const BLUE:uint = 255;
      
      public static const §@X§:uint = 128;
      
      public static const §##%§:uint = 16711935;
      
      public static const §;!B§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4X§ = 16777215;
            while(true)
            {
               §!"k§ = 12632256;
               loop1:
               while(true)
               {
                  §5!x§ = 8421504;
                  addr183:
                  while(true)
                  {
                     §'E§ = 0;
                     addr168:
                     while(true)
                     {
                        RED = 16711680;
                     }
                     addr63:
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public function §4"I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §["T§();
      }
      
      public static function §="-§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(!(_loc3_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §7!0§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §=#Z§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(_loc2_ || _loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §@H§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §8#"§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || §4"I§)
         {
            §§push(16);
            if(!(_loc5_ && §4"I§))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && §4"I§))
               {
                  §§goto(addr50);
               }
               §§goto(addr81);
            }
            §§goto(addr58);
         }
         addr50:
         §§push(param2);
         if(!(_loc5_ && param1))
         {
            addr58:
            §§push(§§pop() << 8);
            if(_loc4_)
            {
               §§goto(addr62);
            }
            §§goto(addr81);
         }
         addr62:
         §§push(§§pop() | §§pop());
         if(_loc4_ || param2)
         {
            addr81:
            return §§pop() | param3;
         }
      }
      
      public static function §6#8§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param3)
         {
            §§push(24);
            if(!_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc6_ || §4"I§)
               {
                  addr36:
                  §§push(param2);
                  if(_loc6_)
                  {
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
                              if(_loc6_)
                              {
                                 addr67:
                                 addr66:
                                 §§push(§§pop() << 8);
                                 if(_loc5_ && param2)
                                 {
                                 }
                                 addr95:
                                 return §§pop() | §§pop();
                                 addr94:
                              }
                              §§goto(addr94);
                           }
                           addr93:
                           §§goto(addr94);
                           §§push(param4);
                        }
                        §§push(§§pop() | §§pop());
                        if(!(_loc5_ && §4"I§))
                        {
                           §§goto(addr93);
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr93);
            }
            §§goto(addr66);
         }
         §§goto(addr36);
      }
   }
}
