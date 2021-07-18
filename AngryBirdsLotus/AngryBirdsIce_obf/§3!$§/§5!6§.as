package §3!$§
{
   import §5d§.§`!=§;
   
   public class §5!6§
   {
      
      public static const §8D§:uint = 16777215;
      
      public static const §]y§:uint = 12632256;
      
      public static const §@s§:uint = 8421504;
      
      public static const §4!+§:uint = 0;
      
      public static const §^$§:uint = 16711680;
      
      public static const §@!6§:uint = 8388608;
      
      public static const § 0§:uint = 16776960;
      
      public static const §70§:uint = 8421376;
      
      public static const §+3§:uint = 65280;
      
      public static const §`9§:uint = 32768;
      
      public static const §3G§:uint = 65535;
      
      public static const §@!F§:uint = 32896;
      
      public static const §4!-§:uint = 255;
      
      public static const §<`§:uint = 128;
      
      public static const §6A§:uint = 16711935;
      
      public static const §=$§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8D§ = 16777215;
            §]y§ = 12632256;
            loop0:
            while(true)
            {
               §@s§ = 8421504;
               loop1:
               while(true)
               {
                  §4!+§ = 0;
                  while(true)
                  {
                     §^$§ = 16711680;
                     continue loop0;
                     addr135:
                     while(true)
                     {
                        § 0§ = 16776960;
                        §70§ = 8421376;
                        §+3§ = 65280;
                        if(!_loc1_)
                        {
                           break;
                        }
                        §`9§ = 32768;
                        if(_loc2_ && §5!6§)
                        {
                           continue;
                        }
                        if(!(_loc1_ || §5!6§))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §3G§ = 65535;
                           loop6:
                           while(true)
                           {
                              §@!F§ = 32896;
                              loop7:
                              while(_loc1_)
                              {
                                 §4!-§ = 255;
                                 loop8:
                                 do
                                 {
                                    §<`§ = 128;
                                    while(!_loc2_)
                                    {
                                       continue loop6;
                                       §6A§ = 16711935;
                                       do
                                       {
                                          §=$§ = 8388736;
                                       }
                                       while(_loc2_ && _loc2_);
                                       
                                       if(_loc1_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 while(!_loc1_);
                                 
                                 return;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §5!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §`!=§();
      }
      
      public static function §+P§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || §5!6§)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §get §(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §>c§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!(_loc2_ && §5!6§))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §;!D§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §<!E§(param1:int, param2:int, param3:int) : uint
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
                     if(_loc5_)
                     {
                     }
                     addr57:
                     return §§pop() | §§pop();
                     addr56:
                  }
                  §§push(§§pop() | §§pop());
                  if(_loc4_ || param3)
                  {
                     addr55:
                     §§goto(addr56);
                     §§push(param3);
                  }
                  §§goto(addr57);
               }
               §§goto(addr55);
            }
            §§goto(addr57);
         }
         §§goto(addr55);
      }
      
      public static function §,v§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(24);
            if(_loc6_)
            {
               §§push(§§pop() << §§pop());
               if(_loc6_ || param1)
               {
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(16);
                     if(!_loc5_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc6_ || §5!6§)
                           {
                              §§push(param3);
                              if(!(_loc5_ && param3))
                              {
                                 addr82:
                                 §§push(§§pop() << 8);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr95);
                                 }
                              }
                              §§push(§§pop() | §§pop());
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr93);
            }
            addr95:
            §§push(§§pop() | §§pop());
            if(_loc6_)
            {
               addr93:
               return param4;
            }
         }
         §§goto(addr93);
      }
   }
}
