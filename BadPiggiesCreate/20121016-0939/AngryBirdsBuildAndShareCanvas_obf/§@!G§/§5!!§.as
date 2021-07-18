package §@!G§
{
   import § "'§.§&K§;
   import § "'§.§3@§;
   import § "'§.§4!z§;
   import §"K§.§8!T§;
   import §"K§.§@Y§;
   import §%!;§.§,!L§;
   import §%!;§.§4!`§;
   import §%!m§.§2!T§;
   import §%!m§.§4!c§;
   import §%!m§.§9Y§;
   import §'&§.§"!7§;
   import §'&§.§-"&§;
   import §1!k§.§ T§;
   import §1!k§.§"U§;
   import §1!k§.§#!9§;
   import §1!k§.§?H§;
   import §2p§.§1>§;
   import §2p§.§`2§;
   import §4"6§.§=!h§;
   import §6"2§.§ "6§;
   import §6"2§.§3!4§;
   import §6"2§.§7!m§;
   import §6"2§.§@!`§;
   import §6"2§.§`!u§;
   import §8!&§.§]!^§;
   import §8=§.§+!p§;
   import §8=§.§[!H§;
   import §<!3§.§"`§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §5!!§
   {
      
      private static var §<!8§:§"`§;
      
      private static var §'2§:§[!H§;
      
      private static var §1!I§:§%"2§;
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "0.2 (Alpha)";
            while(true)
            {
               §1!I§ = new §]!^§();
               loop1:
               for(; !(_loc2_ && _loc1_); loop3:
               for(; !(_loc2_ && _loc2_); loop5:
               for(; !(_loc2_ && §5!!§); if(_loc2_ && §5!!§)
               {
                  continue;
               },if(_loc1_)
               {
                  §§goto(addr55);
               },§§goto(addr91))
               {
                  if(_loc1_)
                  {
                     §@Y§.§>!X§(§<!8§);
                     loop6:
                     while(true)
                     {
                        §8!T§.§>!X§(§<!8§);
                        while(true)
                        {
                           if(_loc1_ || §5!!§)
                           {
                              continue loop5;
                           }
                           continue loop6;
                           addr55:
                           §=!h§.§>!X§(§<!8§);
                           if(!(_loc2_ && §5!!§))
                           {
                              return;
                           }
                        }
                        continue loop5;
                     }
                  }
                  else
                  {
                     §§goto(addr108);
                  }
               })
               {
                  §'2§ = new §[!H§(§<!8§);
                  while(true)
                  {
                     §+!p§.§>!X§(§<!8§);
                     continue loop3;
                  }
               })
               {
                  §1!I§.start();
                  while(true)
                  {
                     §<!8§ = new §"`§();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §5!!§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §3@§
      {
         return new §4!c§(§1!I§,param1,param2);
      }
      
      public static function §[!p§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §3@§
      {
         return new §2!T§(§1!I§,param1,param2,param3,param4,param5);
      }
      
      public static function §3">§(... rest) : §&K§
      {
         return §-`§(rest);
      }
      
      public static function scale(param1:§3@§, param2:Number) : §3@§
      {
         return new § "6§(param1 as §?H§,param2);
      }
      
      public static function §-`§(param1:Array) : §&K§
      {
         return new §,!L§(param1,§1!I§,0);
      }
      
      public static function § !§(param1:Object, param2:Object, param3:Object = null, param4:§1>§ = null) : §4!z§
      {
         var _loc5_:§ T§;
         (_loc5_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,param3,param4 || §"!7§.§ >§());
         return _loc5_;
      }
      
      public static function §<!>§(param1:DisplayObject) : §3@§
      {
         return new §9Y§(§1!I§,param1);
      }
      
      public static function slice(param1:§3@§, param2:Number, param3:Number, param4:Boolean = false) : §3@§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            if(param4)
            {
               loop0:
               while(true)
               {
                  §§push(param1.duration);
                  if(_loc6_)
                  {
                     §§push(param2);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr140:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr139:
                  }
                  loop3:
                  while(true)
                  {
                     param2 = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(param1.duration);
                        if(_loc6_ || param2)
                        {
                           if(!_loc6_)
                           {
                              continue loop3;
                           }
                           §§push(param3);
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr47:
                              §§push(param3);
                              if(!(_loc6_ || §5!!§))
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    addr25:
                                 }
                                 if(_loc5_ && §5!!§)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    addr121:
                                    loop9:
                                    while(true)
                                    {
                                       addr36:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                §§goto(addr47);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr118:
                                                   while(_loc6_)
                                                   {
                                                      param3 = §§pop();
                                                      continue loop9;
                                                   }
                                                }
                                                addr117:
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr118);
                                          continue loop9;
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                                 if(!(_loc5_ && §5!!§))
                                 {
                                    return new §@!`§(new §3!4§(param1 as §?H§,param3,param2),0);
                                 }
                                 continue loop4;
                                 return new §3!4§(param1 as §?H§,param2,param3);
                              }
                              §§goto(addr139);
                           }
                        }
                        §§goto(addr117);
                     }
                  }
               }
            }
            §§goto(addr36);
         }
         §§goto(addr121);
      }
      
      public static function repeat(param1:§3@§, param2:uint) : §3@§
      {
         return new §7!m§(param1 as §?H§,param2);
      }
      
      public static function §>j§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§1>§ = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§ T§;
         (_loc6_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,param3,param5 || §"!7§.§ >§());
         if(!(_loc7_ && param2))
         {
            _loc6_.update(param4);
         }
      }
      
      public static function §4O§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§`2§ = null) : §4!z§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§#!9§;
         (_loc7_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,param2,param3,param4);
         if(_loc9_ || param3)
         {
            _loc7_.time = param5;
         }
         do
         {
            §§push(_loc7_);
            if(!(_loc8_ && param3))
            {
               §§push(param6);
            }
            §§pop().§!!T§ = §-"&§.§?!6§;
         }
         while(!_loc9_);
         
         return _loc7_;
      }
      
      public static function § 9§(param1:Object, param2:Object, param3:§1>§ = null) : §4!z§
      {
         var _loc4_:§ T§;
         (_loc4_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,null,param2,param3 || §"!7§.§ >§());
         return _loc4_;
      }
      
      public static function delay(param1:§3@§, param2:Number, param3:Number = 0.0) : §3@§
      {
         return new §`!u§(param1 as §?H§,param2,param3);
      }
      
      public static function reverse(param1:§3@§, param2:Boolean = true) : §3@§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param2)
            {
               addr26:
               §§push(param1.duration);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() - param1.position);
                  if(_loc5_ || param1)
                  {
                     addr45:
                     §§push(Number(§§pop()));
                     if(_loc5_ || param1)
                     {
                        addr70:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     addr67:
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr70);
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     if(param1 is §@!`§)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr85);
                        }
                     }
                     if((param1 as Object).constructor == §"U§)
                     {
                        param1 = (param1 as §"U§).§2O§;
                     }
                     return new §@!`§(param1 as §?H§,_loc3_);
                  }
                  addr85:
                  return new §"U§((param1 as §@!`§).§2O§,_loc3_);
               }
               §§goto(addr45);
            }
            else
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§goto(addr67);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr26);
      }
      
      public static function §,Q§(param1:Object, param2:Object, param3:Number = 1.0, param4:§`2§ = null) : §4!z§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§#!9§;
         (_loc5_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,null,param2);
         if(!(_loc6_ && param1))
         {
            _loc5_.time = param3;
         }
         do
         {
            §§push(_loc5_);
            if(!_loc6_)
            {
               §§push(param4);
            }
            §§pop().§!!T§ = §-"&§.§?!6§;
         }
         while(_loc6_);
         
         return _loc5_;
      }
      
      public static function §3!b§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,param3);
         if(_loc8_ || param2)
         {
            _loc6_.time = param4;
            do
            {
               §§push(_loc6_);
               if(!_loc7_)
               {
                  §§push(param5);
               }
               §§pop().§!!T§ = §-"&§.§?!6§;
            }
            while(_loc7_ && param1);
            
         }
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§`2§ = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§#!9§;
         (_loc7_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,param3);
         if(!(_loc9_ && param3))
         {
            _loc7_.time = param4;
            while(true)
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  §§pop().§!!T§ = param6 || §-"&§.§?!6§;
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr87);
      }
      
      public static function §>!N§(param1:Object, param2:Object, param3:§1>§ = null) : §4!z§
      {
         var _loc4_:§ T§;
         (_loc4_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,null,param3 || §"!7§.§ >§());
         return _loc4_;
      }
      
      public static function §&!f§(... rest) : §&K§
      {
         return §23§(rest);
      }
      
      public static function §,!8§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,null,param2,param3);
         if(_loc7_)
         {
            _loc6_.time = param4;
         }
         do
         {
            §§push(_loc6_);
            if(!(_loc8_ && §5!!§))
            {
               §§push(param5);
            }
            §§pop().§!!T§ = §-"&§.§?!6§;
         }
         while(_loc8_);
         
         return _loc6_;
      }
      
      public static function §`6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,param2,null,param3);
         if(!_loc7_)
         {
            _loc6_.time = param4;
         }
         do
         {
            §§push(_loc6_);
            if(_loc8_)
            {
               §§push(param5);
            }
            §§pop().§!!T§ = §-"&§.§?!6§;
         }
         while(_loc7_ && param2);
         
         return _loc6_;
      }
      
      public static function §^!Z§(param1:Object, param2:Object, param3:Number = 1.0, param4:§`2§ = null) : §4!z§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§#!9§;
         (_loc5_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,null);
         if(!_loc6_)
         {
            _loc5_.time = param3;
         }
         do
         {
            §§push(_loc5_);
            if(_loc7_ || param1)
            {
               §§push(param4);
            }
            §§pop().§!!T§ = §-"&§.§?!6§;
         }
         while(_loc6_);
         
         return _loc5_;
      }
      
      public static function §23§(param1:Array) : §&K§
      {
         return new §4!`§(param1,§1!I§,0);
      }
   }
}
