package §<u§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class Log
   {
      
      public static const §[!J§:Boolean = true;
      
      public static const §[1§:Boolean = true;
      
      public static const §5!d§:int = 0;
      
      public static const §[!A§:int = 1;
      
      public static const §=v§:int = 500;
      
      private static var §@&§:Array = null;
      
      private static var §?G§:Number = 0;
      
      public static var §6! §:int = 112;
      
      public static var §6!0§:int = 114;
      
      public static var §8!+§:int = 113;
      
      public static var §>9§:int = 115;
      
      public static var §8-§:Boolean = false;
      
      public static var §'+§:Sprite = null;
      
      private static var §;t§:TextField = null;
      
      private static var § !P§:TextField = null;
      
      private static var §8k§:TextField = null;
      
      private static var §?u§:TextField = null;
      
      public static var §^l§:int = -1;
      
      public static var §@!C§:String = "version: Unknown";
      
      public static var §[Q§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §[!J§ = true;
            while(true)
            {
               §[1§ = true;
               loop1:
               while(true)
               {
                  §5!d§ = 0;
                  loop2:
                  while(true)
                  {
                     §[!A§ = 1;
                     loop3:
                     while(true)
                     {
                        §=v§ = 500;
                        while(true)
                        {
                           §@&§ = null;
                           loop7:
                           for(; _loc1_ || _loc2_; while(!(_loc2_ && Log))
                           {
                              §?u§ = null;
                              §§goto(addr100);
                              §§goto(addr41);
                           })
                           {
                              §6!0§ = Keyboard.F3;
                              loop8:
                              while(true)
                              {
                                 §8!+§ = Keyboard.F2;
                                 while(true)
                                 {
                                    §>9§ = Keyboard.F4;
                                    loop10:
                                    for(; !_loc2_; while(!(_loc2_ && _loc2_))
                                    {
                                       §;t§ = null;
                                       §§goto(addr148);
                                    })
                                    {
                                       §8-§ = false;
                                       loop11:
                                       while(_loc1_)
                                       {
                                          §'+§ = null;
                                          continue loop10;
                                          loop16:
                                          while(true)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop11;
                                             addr71:
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             init();
                                             addr78:
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr88:
                                                   while(_loc1_ || Log)
                                                   {
                                                      §@!C§ = "version: Unknown";
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §[Q§ = "";
                                                         addr64:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            §§goto(addr71);
                                                            §§goto(addr78);
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §6! § = Keyboard.F1;
                                                         continue loop7;
                                                      }
                                                      addr235:
                                                      while(true)
                                                      {
                                                         §?G§ = 0;
                                                         continue loop6;
                                                      }
                                                   }
                                                   addr88:
                                                   continue loop2;
                                                }
                                                addr41:
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr148:
                                                   while(!(_loc2_ && _loc2_))
                                                   {
                                                      § !P§ = null;
                                                   }
                                                   continue loop10;
                                                }
                                                while(true)
                                                {
                                                   §8k§ = null;
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr64);
                                          }
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr235);
      }
      
      public function Log()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Log))
         {
            §§push(§[!J§);
            if(!_loc1_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               do
               {
                  §@&§ = new Array(§=v§);
               }
               while(_loc1_ && _loc2_);
               
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_ || param2)
         {
            §§push(§[!J§);
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§?G§)).§?G§);
                     if(!(_loc7_ && Log))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              _loc4_.§?G§ = _loc5_;
                           }
                        }
                     }
                     if(_loc6_)
                     {
                        §§push(§§pop() % §=v§);
                        if(_loc6_ || _loc3_)
                        {
                           addr80:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(!(_loc7_ && param1))
                        {
                           §@&§[_loc3_] = [param1,param2];
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§^l§);
                                 addr186:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc7_)
                                    {
                                       addr190:
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr161:
                                                      while(true)
                                                      {
                                                         §,!?§();
                                                         addr164:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr101);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       addr190:
                                    }
                                    §§goto(addr190);
                                 }
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr201);
               }
               addr101:
               while(true)
               {
                  §§push(§[1§);
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && param2))
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    addr123:
                                    §§push(Boolean(param1));
                                    if(!_loc6_)
                                    {
                                       continue loop8;
                                    }
                                    addr125:
                                    if(_loc6_ || Log)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             addr135:
                                             break;
                                          }
                                          break;
                                       }
                                       addr200:
                                       addr200:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop7;
                                          §§goto(addr125);
                                       }
                                       addr158:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr135);
                        }
                        break;
                     }
                     continue loop12;
                  }
                  §§goto(addr123);
               }
               return;
            }
            §§goto(addr190);
         }
         §§goto(addr181);
      }
      
      public static function §3!f§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(_loc7_)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(_loc7_ || param1)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(!_loc6_)
            {
               §§push(§§pop() + _loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() + "]: ");
                  if(!_loc6_)
                  {
                     addr83:
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
               continue;
            }
            §§goto(addr83);
         }
      }
      
      private static function §,!?§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(§[!J§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§'+§));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 §§goto(addr393);
                              }
                              addr29:
                           }
                           loop4:
                           for(; !_loc5_; while(true)
                           {
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue loop4;
                              }
                              _loc1_ = §§pop();
                              §§goto(addr348);
                              §§goto(addr308);
                           })
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(Boolean(§'+§.visible));
                                 while(_loc6_)
                                 {
                                    while(_loc6_ || Log)
                                    {
                                       if(_loc6_ || Log)
                                       {
                                          §§push(Boolean(§§pop()));
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                                 addr352:
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(§;t§.scrollV != §;t§.numLines - int(§;t§.height / (§;t§.textHeight / §;t§.numLines)))
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr308:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc5_)
                                                {
                                                   _loc1_ = §§pop();
                                                   loop25:
                                                   while(true)
                                                   {
                                                      addr251:
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push("");
                                                         if(_loc5_ && Log)
                                                         {
                                                            break;
                                                         }
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop19;
                                                            }
                                                            addr266:
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr434);
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        _loc3_ = Number(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr67:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§=v§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_ || Log)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §;t§.text = _loc2_;
                                                                                             addr98:
                                                                                             §§push(_loc1_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §;t§.scrollV = §;t§.numLines;
                                                                                                         }
                                                                                                         if(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr161:
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + (§@&§[_loc4_][0] + "\n"));
                                                                                                                     }
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr99:
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr111:
                                                                                                                           §§push(Number(§§pop() + 1));
                                                                                                                           if(_loc6_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 addr235:
                                                                                                                                 addr228:
                                                                                                                                 addr229:
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    addr129:
                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr67);
                                                                                                                                    }
                                                                                                                                    addr220:
                                                                                                                                    §§push(§@&§);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr151:
                                                                                                                                          §§push(§§pop()[§§pop()][1] == §^l§);
                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr159:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr161);
                                                                                                                                             }
                                                                                                                                             §§goto(addr99);
                                                                                                                                          }
                                                                                                                                          addr219:
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr220);
                                                                                                                                       }
                                                                                                                                       addr187:
                                                                                                                                       if(§§pop()[§§pop()] != null)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(§^l§ < 0);
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr199:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr219);
                                                                                                                                                }
                                                                                                                                                §§goto(addr159);
                                                                                                                                             }
                                                                                                                                             §§goto(addr199);
                                                                                                                                          }
                                                                                                                                          §§goto(addr220);
                                                                                                                                       }
                                                                                                                                       §§goto(addr99);
                                                                                                                                    }
                                                                                                                                    addr186:
                                                                                                                                    §§goto(addr187);
                                                                                                                                    §§push(_loc4_);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr233:
                                                                                                                                    §§push(§§pop() % 500);
                                                                                                                                 }
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 §§goto(addr186);
                                                                                                                                 §§push(§@&§);
                                                                                                                                 addr236:
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr235);
                                                                                                                        }
                                                                                                                        addr226:
                                                                                                                        §§goto(addr228);
                                                                                                                        §§push(§§pop() + _loc3_);
                                                                                                                     }
                                                                                                                     §§goto(addr111);
                                                                                                                     addr182:
                                                                                                                  }
                                                                                                                  §§goto(addr236);
                                                                                                               }
                                                                                                               §§goto(addr29);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                         §§goto(addr98);
                                                                                                      }
                                                                                                      §§goto(addr29);
                                                                                                   }
                                                                                                   §§goto(addr199);
                                                                                                }
                                                                                                §§goto(addr151);
                                                                                             }
                                                                                             §§goto(addr159);
                                                                                          }
                                                                                          §§goto(addr129);
                                                                                       }
                                                                                       §§goto(addr98);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                    §§push(§?G§);
                                                                                 }
                                                                                 §§goto(addr229);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                        }
                                                                        §§goto(addr111);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= 0)
                                                                           {
                                                                              §8k§.text = "Current channel: " + §^l§;
                                                                              while(!_loc5_)
                                                                              {
                                                                              }
                                                                              continue loop2;
                                                                              addr381:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §8k§.text = "Current channel: ALL";
                                                                              addr411:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§@!C§);
                                                                              break loop20;
                                                                              §§goto(addr411);
                                                                           }
                                                                        }
                                                                        addr395:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §?u§.text = §@!C§;
                                                                  }
                                                                  addr365:
                                                               }
                                                               while(true)
                                                               {
                                                                  addr323:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr352);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr407);
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr266);
                                                               }
                                                               §§goto(addr411);
                                                               addr348:
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         continue loop25;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                   }
                                                }
                                                §§goto(addr325);
                                             }
                                             addr308:
                                          }
                                          break;
                                       }
                                       §§goto(addr381);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr395);
                                    }
                                    addr393:
                                 }
                                 §§goto(addr251);
                              }
                           }
                           continue loop1;
                           return;
                        }
                     }
                  }
                  addr434:
                  return;
               }
            }
         }
         §§goto(addr308);
      }
      
      public static function §>h§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(§[!J§);
            if(_loc8_ || param2)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               while(true)
               {
                  §'+§ = new Sprite();
                  loop1:
                  while(_loc8_ || Log)
                  {
                     loop2:
                     while(true)
                     {
                        §'+§.visible = false;
                        loop3:
                        while(_loc8_)
                        {
                           while(true)
                           {
                              param1.addChild(§'+§);
                              if(_loc9_)
                              {
                                 continue loop3;
                              }
                              if(_loc9_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue loop2;
                              }
                              var _loc7_:Graphics = §'+§.graphics;
                              if(_loc8_ || Log)
                              {
                                 _loc7_.beginFill(16777215,0);
                                 while(true)
                                 {
                                    _loc7_.drawRect(0,0,1000,1000);
                                    loop6:
                                    while(true)
                                    {
                                       _loc7_.endFill();
                                       loop7:
                                       while(true)
                                       {
                                          _loc7_.beginFill(16777215,0.4);
                                          loop8:
                                          while(true)
                                          {
                                             _loc7_.drawRect(param2,param3,param4,param5);
                                             loop9:
                                             while(true)
                                             {
                                                _loc7_.endFill();
                                                loop10:
                                                while(true)
                                                {
                                                   §;t§ = new TextField();
                                                   while(true)
                                                   {
                                                      §;t§.width = param4;
                                                      loop12:
                                                      while(_loc8_)
                                                      {
                                                         §;t§.height = param5 - 40;
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §;t§.x = param2;
                                                            while(true)
                                                            {
                                                               §;t§.y = param3 + 40;
                                                               while(!_loc9_)
                                                               {
                                                                  §;t§.wordWrap = true;
                                                                  while(true)
                                                                  {
                                                                     §'+§.addChild(§;t§);
                                                                     continue loop9;
                                                                     addr113:
                                                                     if(_loc8_ || Log)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  loop31:
                                                                  for(; _loc8_ || Log; while(true)
                                                                  {
                                                                     if(_loc9_ && param3)
                                                                     {
                                                                        continue loop31;
                                                                     }
                                                                     §§goto(addr281);
                                                                  },§§goto(addr383))
                                                                  {
                                                                     §8k§.y = param3;
                                                                     loop32:
                                                                     while(_loc8_ || param2)
                                                                     {
                                                                        §'+§.addChild(§8k§);
                                                                        loop33:
                                                                        while(_loc8_ || param1)
                                                                        {
                                                                           §?u§ = new TextField();
                                                                           continue loop31;
                                                                           loop39:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ && Log)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              if(!(_loc8_ || param1))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §@!?§(§8-§);
                                                                              loop40:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr215:
                                                                                          if(_loc9_ && param3)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §'+§.addChild(§?u§);
                                                                                          continue loop39;
                                                                                       }
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          §8k§.height = 20;
                                                                                          addr335:
                                                                                          addr377:
                                                                                          while(_loc8_ || param2)
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §8k§.x = param2;
                                                                                                continue loop31;
                                                                                             }
                                                                                             continue loop8;
                                                                                             if(!(_loc8_ || param3))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr156:
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   break loop39;
                                                                                                }
                                                                                                addr405:
                                                                                                while(true)
                                                                                                {
                                                                                                   § !P§.height = 20;
                                                                                                   break loop40;
                                                                                                   §§goto(addr156);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §8k§.width = param4;
                                                                                                continue loop29;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §'+§.addChild(§ !P§);
                                                                                             break loop32;
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                       }
                                                                                       continue loop40;
                                                                                    }
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       § !P§.width = param4 / 2;
                                                                                       §§goto(addr405);
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    continue loop12;
                                                                                    addr211:
                                                                                    addr411:
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(param6 < 0)
                                                                                 {
                                                                                    param1.addChild(§'+§);
                                                                                    if(!(_loc8_ || param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc8_ || Log)
                                                                                    {
                                                                                       break loop39;
                                                                                    }
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop39;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop7;
                                                                                    addr247:
                                                                                 }
                                                                                 §§goto(addr113);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 § !P§.text = "LOGGER CAPTURING INPUT, F4";
                                                                                 break loop33;
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        while(_loc8_)
                                                                        {
                                                                           § !P§.border = true;
                                                                           while(true)
                                                                           {
                                                                              § !P§.borderColor = 16711680;
                                                                              §§goto(addr377);
                                                                              addr281:
                                                                              if(!(_loc8_ || param3))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §?u§.width = param4;
                                                                              §§goto(addr247);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        addr296:
                                                                        continue loop10;
                                                                     }
                                                                     while(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §8k§ = new TextField();
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     addr309:
                                                                     while(true)
                                                                     {
                                                                        § !P§.y = param3;
                                                                        §§goto(addr411);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr371);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §@!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§[!J§);
            if(!(_loc3_ && Log))
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               loop0:
               while(true)
               {
                  §8-§ = param1;
                  loop1:
                  while(true)
                  {
                     §'+§.mouseChildren = §8-§;
                     loop2:
                     while(!(_loc3_ && param1))
                     {
                        §'+§.mouseEnabled = §8-§;
                        loop3:
                        while(_loc2_ || param1)
                        {
                           while(true)
                           {
                              §8k§.mouseEnabled = §8-§;
                              while(_loc2_)
                              {
                                 §?u§.mouseEnabled = §8-§;
                                 while(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §;t§.mouseEnabled = §8-§;
                                       while(!_loc3_)
                                       {
                                          § !P§.visible = §8-§;
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(!(_loc2_ || Log))
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr48);
                                             continue loop2;
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§[!J§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               return;
            }
         }
      }
      
      public static function §=!"§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §6! § = param1;
            while(true)
            {
               §8!+§ = param2;
               loop1:
               while(_loc5_ || param3)
               {
                  while(true)
                  {
                     §6!0§ = param3;
                     if(!(_loc6_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §<Y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@!C§ = param1;
         }
      }
   }
}
