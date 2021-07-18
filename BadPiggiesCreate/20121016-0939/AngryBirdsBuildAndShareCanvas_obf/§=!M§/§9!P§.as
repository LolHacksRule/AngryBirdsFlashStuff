package §=!M§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §9!P§
   {
      
      public static const §!!%§:Boolean = true;
      
      public static const §2!o§:Boolean = true;
      
      public static const §4!9§:int = 0;
      
      public static const §-!B§:int = 1;
      
      public static const §9!f§:int = 500;
      
      private static var §!U§:Array = null;
      
      private static var §`;§:Number = 0;
      
      public static var §^!_§:int = 112;
      
      public static var §8">§:int = 114;
      
      public static var § !H§:int = 113;
      
      public static var §5q§:int = 115;
      
      public static var §for§:Boolean = false;
      
      public static var §4!?§:Sprite = null;
      
      private static var §&S§:TextField = null;
      
      private static var §>s§:TextField = null;
      
      private static var §@!o§:TextField = null;
      
      private static var §-";§:TextField = null;
      
      public static var §20§:int = -1;
      
      public static var §-"-§:String = "version: Unknown";
      
      public static var §]!o§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!%§ = true;
            loop0:
            while(true)
            {
               §2!o§ = true;
               loop1:
               while(true)
               {
                  §4!9§ = 0;
                  loop2:
                  while(true)
                  {
                     §-!B§ = 1;
                     loop3:
                     while(true)
                     {
                        §9!f§ = 500;
                        addr196:
                        while(true)
                        {
                           §!U§ = null;
                           while(true)
                           {
                              §`;§ = 0;
                              loop6:
                              for(; !(_loc1_ && _loc1_); while(!(_loc1_ && _loc2_))
                              {
                                 §8">§ = Keyboard.F3;
                                 loop9:
                                 while(true)
                                 {
                                    § !H§ = Keyboard.F2;
                                    loop10:
                                    while(true)
                                    {
                                       §5q§ = Keyboard.F4;
                                       loop11:
                                       while(true)
                                       {
                                          §for§ = false;
                                          do
                                          {
                                             §4!?§ = null;
                                             while(true)
                                             {
                                                §&S§ = null;
                                                while(!_loc1_)
                                                {
                                                   §>s§ = null;
                                                   while(_loc2_ || §9!P§)
                                                   {
                                                      §@!o§ = null;
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop11;
                                             }
                                          }
                                          while(!_loc2_);
                                          
                                          if(_loc2_)
                                          {
                                             continue loop9;
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                              })
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §^!_§ = Keyboard.F1;
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        loop16:
                        while(!(_loc1_ && §9!P§))
                        {
                           §-";§ = null;
                           loop17:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §20§ = -1;
                                 loop18:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop17;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop16;
                                    }
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §-"-§ = "version: Unknown";
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §]!o§ = "";
                                          continue loop0;
                                       }
                                       continue loop18;
                                       addr29:
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr36);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr196);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      public function §9!P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9!P§))
         {
            if(!§!!%§)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr61);
         }
         addr61:
         while(true)
         {
            §!U§ = new Array(§9!f§);
            if(_loc1_ || _loc1_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || param1)
         {
            §§push(§!!%§);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§`;§)).§`;§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param2))
                        {
                           addr46:
                           §§push(§§pop());
                           if(_loc7_ || §9!P§)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              _loc4_.§`;§ = _loc5_;
                           }
                        }
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() % §9!f§);
                           if(!(_loc6_ && §9!P§))
                           {
                              addr89:
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(!(_loc6_ && param2))
                           {
                              §!U§[_loc3_] = [param1,param2];
                              loop0:
                              while(true)
                              {
                                 §§push(param2);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§20§);
                                    addr160:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr161:
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                addr151:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr152:
                                                      while(true)
                                                      {
                                                         §do§();
                                                         addr154:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr152:
                                                   }
                                                   while(true)
                                                   {
                                                      addr100:
                                                      while(true)
                                                      {
                                                         §§push(§2!o§);
                                                         if(!_loc7_)
                                                         {
                                                            while(!_loc6_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop3;
                                                            addr148:
                                                         }
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!param1)
                                                                     {
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                            }
                                                            addr132:
                                                            return;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop1;
                                             §§goto(addr103);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr156);
               }
               §§goto(addr100);
            }
            §§goto(addr151);
         }
         §§goto(addr152);
      }
      
      public static function §8u§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(_loc6_)
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() + "]: ");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §do§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || _loc2_)
         {
            §§push(§!!%§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§4!?§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr386:
                              while(true)
                              {
                                 §§push(Boolean(§4!?§.visible));
                              }
                           }
                           addr385:
                        }
                        while(true)
                        {
                           loop5:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§20§);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §@!o§.text = "Current channel: " + §20§;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§-"-§ != null)
                                             {
                                                while(true)
                                                {
                                                   §-";§.text = §-"-§;
                                                   addr331:
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(!(_loc6_ || _loc1_))
                                                            {
                                                               §§goto(addr389);
                                                            }
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §@!o§.text = "Current channel: ALL";
                                                            break loop11;
                                                         }
                                                         addr366:
                                                      }
                                                   }
                                                   addr369:
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                addr328:
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                                while(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         continue loop8;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr385);
                                                   addr286:
                                                   §§push(false);
                                                   if(!(_loc5_ && §9!P§))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         loop16:
                                                         for(; _loc6_; while(true)
                                                         {
                                                            if(_loc6_ || §9!P§)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               break;
                                                            }
                                                            continue loop16;
                                                         },§§goto(addr331))
                                                         {
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc2_ = "";
                                                                  continue loop16;
                                                               }
                                                               addr65:
                                                               §§push(_loc3_);
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§9!f§);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §&S§.text = _loc2_;
                                                                                 addr87:
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(_loc6_ || §9!P§)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §&S§.scrollV = §&S§.numLines;
                                                                                                         addr55:
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr201:
                                                                                                               §§push(§20§ < 0);
                                                                                                               if(!(§20§ < 0))
                                                                                                               {
                                                                                                                  addr206:
                                                                                                                  §§pop();
                                                                                                                  §§push(§!U§);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr169:
                                                                                                                        addr170:
                                                                                                                        if(§§pop()[§§pop()][1] == §20§)
                                                                                                                        {
                                                                                                                           addr171:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + (§!U§[_loc4_][0] + "\n"));
                                                                                                                           }
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr194:
                                                                                                                        }
                                                                                                                        addr102:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr136:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc5_ && §9!P§))
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          addr144:
                                                                                                                                          if(_loc6_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr65);
                                                                                                                                          }
                                                                                                                                          addr198:
                                                                                                                                          if(§!U§[_loc4_] != null)
                                                                                                                                          {
                                                                                                                                             §§goto(addr201);
                                                                                                                                          }
                                                                                                                                          §§goto(addr102);
                                                                                                                                          addr222:
                                                                                                                                       }
                                                                                                                                       addr221:
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       §§goto(addr222);
                                                                                                                                    }
                                                                                                                                    addr214:
                                                                                                                                    §§push(1);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr219:
                                                                                                                                       §§push((§§pop() + §§pop()) % 500);
                                                                                                                                    }
                                                                                                                                    §§goto(addr219);
                                                                                                                                 }
                                                                                                                                 §§goto(addr221);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr136);
                                                                                                                           }
                                                                                                                           addr212:
                                                                                                                           §§goto(addr214);
                                                                                                                           §§push(§§pop() + _loc3_);
                                                                                                                        }
                                                                                                                        §§goto(addr136);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr198);
                                                                                                                  addr207:
                                                                                                               }
                                                                                                               §§goto(addr169);
                                                                                                            }
                                                                                                            break loop5;
                                                                                                         }
                                                                                                         §§goto(addr87);
                                                                                                      }
                                                                                                      §§goto(addr144);
                                                                                                   }
                                                                                                   §§goto(addr55);
                                                                                                }
                                                                                                break loop5;
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                          }
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr194);
                                                                              }
                                                                              §§goto(addr171);
                                                                           }
                                                                           §§goto(addr87);
                                                                        }
                                                                        §§goto(addr212);
                                                                        §§push(§`;§);
                                                                     }
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               §§goto(addr136);
                                                               addr238:
                                                               addr239:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr369);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr366);
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
               }
               addr389:
               return;
            }
         }
         §§goto(addr386);
      }
      
      public static function §4!"§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            if(§!!%§)
            {
               while(true)
               {
                  §4!?§ = new Sprite();
                  loop1:
                  while(_loc8_ || param2)
                  {
                     loop2:
                     while(true)
                     {
                        §4!?§.visible = false;
                        while(!(_loc9_ && param2))
                        {
                           param1.addChild(§4!?§);
                           if(!_loc9_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public static function §;"3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §9!P§)
         {
            if(§!!%§)
            {
               while(true)
               {
                  §for§ = param1;
                  loop1:
                  while(_loc2_)
                  {
                     §4!?§.mouseChildren = §for§;
                     while(_loc2_)
                     {
                        §4!?§.mouseEnabled = §for§;
                        while(true)
                        {
                           §@!o§.mouseEnabled = §for§;
                           loop4:
                           while(!(_loc3_ && §9!P§))
                           {
                              §-";§.mouseEnabled = §for§;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §&S§.mouseEnabled = §for§;
                                    continue;
                                 }
                                 continue loop4;
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
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§!!%§)
            {
               return;
            }
         }
      }
      
      public static function §;z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §^!_§ = param1;
            while(true)
            {
               § !H§ = param2;
               while(_loc5_)
               {
                  §8">§ = param3;
                  if(_loc5_ || param2)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §#!?§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §-"-§ = param1;
         }
      }
   }
}
