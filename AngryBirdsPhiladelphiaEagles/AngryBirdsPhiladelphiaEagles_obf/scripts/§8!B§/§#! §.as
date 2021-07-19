package §8!B§
{
   import §2G§.§>U§;
   import §5Z§.§[Z§;
   import §9P§.§[!4§;
   import §9T§.§1r§;
   import §=I§.§2i§;
   import §?#§.§,H§;
   import §^]§.§[z§;
   import §`K§.§!f§;
   import flash.geom.Rectangle;
   
   public class §#! §
   {
      
      public static var §-p§:int = 0;
      
      public static var §5!9§:int = 0;
      
      public static var §`'§:§1r§;
      
      public static var §92§:§!f§;
      
      public static var §^!E§:Boolean = false;
      
      public static var §?V§:§#! § = null;
      
      public static var § A§:§[!4§;
      
      public static var §>Y§:Boolean = true;
      
      public static var §+!&§:Number = 1;
      
      public static var §3M§:Number = 1;
      
      public static var §+!E§:Number = 1;
      
      private static var §<L§:§,H§ = null;
      
      private static var §+A§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public function §#! §()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §,!F§() : Number
      {
         return §-p§ * §3M§;
      }
      
      public static function § v§() : Number
      {
         return §5!9§ * §+!E§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!§+A§)
         {
            §+A§ = true;
            do
            {
               §§push(§[Z§.§[A§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr82:
                        §[Z§.§[A§.isPaused = true;
                     }
                  }
                  §§push(§[Z§.§%m§);
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr18);
                     }
                     if(!(_loc2_ || §#! §))
                     {
                        continue;
                     }
                     §§push(§[Z§.§%m§);
                  }
                  §§pop().§=!P§(false);
                  continue;
               }
               §§goto(addr82);
            }
            while(_loc1_);
            
         }
         addr18:
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§+A§)
            {
               loop0:
               while(true)
               {
                  §+A§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§[Z§.§[A§);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§[Z§.§[A§);
                              addr86:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr88:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr90:
                                 }
                              }
                              addr49:
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§[Z§.§%m§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr20:
                                 return;
                                 addr72:
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr49);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr20);
                           §§goto(addr90);
                        }
                        addr70:
                        §§pop().§=!P§(true);
                        §§goto(addr72);
                     }
                     §§goto(addr86);
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr68);
      }
      
      public static function get isPaused() : Boolean
      {
         return §+A§;
      }
      
      public static function init(param1:§[!4§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            § A§ = param1;
            loop0:
            while(true)
            {
               §-p§ = param2;
               while(true)
               {
                  §5!9§ = param3;
                  loop2:
                  while(_loc4_ || param1)
                  {
                     while(true)
                     {
                        §92§ = new §!f§(true,param1.canvas);
                        if(!(_loc5_ && param3))
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function §+Q§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §>U§.§+Q§(param1,param2);
         }
      }
      
      public static function §0!8§(param1:§2i§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §`'§.§0!8§(param1,param2,param3);
         }
      }
      
      public static function §!e§(param1:§[z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §`'§.init(param1);
         }
      }
      
      public static function §;]§(param1:§,H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<L§ = param1;
         }
         do
         {
            §`'§.§;]§(param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function get controller() : §,H§
      {
         return §<L§;
      }
      
      public static function §!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §>Y§ = param1;
            do
            {
               §`'§.background.§!Y§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public static function §#!-§() : Boolean
      {
         return §>Y§;
      }
      
      public static function §%U§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param4);
         if(!_loc5_)
         {
            §§push(32);
            loop0:
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  §§push(32);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr162:
                     while(true)
                     {
                        param4 = §§pop();
                        addr163:
                        while(true)
                        {
                        }
                     }
                  }
                  addr161:
               }
               while(true)
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     §§goto(addr162);
                  }
                  else
                  {
                     addr153:
                     param3 = §§pop();
                     loop6:
                     while(true)
                     {
                        addr103:
                        while(true)
                        {
                           §§push(§[Z§.§%m§);
                           while(§§pop())
                           {
                              §§push(§[Z§.§%m§);
                              while(true)
                              {
                                 §§pop().§&!L§ = new Rectangle(param1,param2,param3,param4);
                                 if(_loc6_ || param3)
                                 {
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                           }
                           §+!&§ = Math.min(param3 / §-p§,param4 / §5!9§);
                           §§push(§§findproperty(§3M§));
                           §§push(param3);
                           if(!_loc5_)
                           {
                              §§push(§§pop() / §-p§);
                           }
                           §§pop().§3M§ = §§pop();
                           addr57:
                           §§push(§§findproperty(§+!E§));
                           §§push(param4);
                           if(!(_loc5_ && param3))
                           {
                              §§push(§§pop() / §5!9§);
                           }
                           §§pop().§+!E§ = §§pop();
                           if(_loc5_ && param1)
                           {
                              §§goto(addr57);
                           }
                           §`'§.§=,§(param3,param4);
                           return;
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr163);
               }
            }
         }
         §§goto(addr162);
      }
   }
}
