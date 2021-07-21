package §6]§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §,"0§
   {
      
      public static const §>X§:Boolean = true;
      
      public static const §!!M§:Boolean = true;
      
      public static const §'!E§:int = 0;
      
      public static const §1"-§:int = 1;
      
      public static const §;!P§:int = 500;
      
      private static var §-P§:Array = null;
      
      private static var §#!H§:Number = 0;
      
      public static var §!"=§:int = 112;
      
      public static var §>P§:int = 114;
      
      public static var § !M§:int = 113;
      
      public static var §^^§:int = 115;
      
      public static var §;"2§:Boolean = false;
      
      public static var §6!#§:Sprite = null;
      
      private static var §4!f§:TextField = null;
      
      private static var §[O§:TextField = null;
      
      private static var §=!>§:TextField = null;
      
      private static var §2R§:TextField = null;
      
      public static var §!!_§:int = -1;
      
      public static var §+9§:String = "version: Unknown";
      
      public static var §5i§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §,"0§)
         {
            §>X§ = true;
            loop0:
            while(true)
            {
               §!!M§ = true;
               loop1:
               while(true)
               {
                  §'!E§ = 0;
                  loop2:
                  while(true)
                  {
                     §1"-§ = 1;
                     loop3:
                     while(true)
                     {
                        §;!P§ = 500;
                        loop4:
                        while(true)
                        {
                           §-P§ = null;
                           loop5:
                           while(_loc1_)
                           {
                              §#!H§ = 0;
                              loop6:
                              for(; !_loc2_; if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              },§!!_§ = -1,§§goto(addr66))
                              {
                                 §!"=§ = Keyboard.F1;
                                 loop7:
                                 while(true)
                                 {
                                    §>P§ = Keyboard.F3;
                                    loop8:
                                    while(true)
                                    {
                                       § !M§ = Keyboard.F2;
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          §^^§ = Keyboard.F4;
                                          while(true)
                                          {
                                             §;"2§ = false;
                                             addr148:
                                             if(_loc1_ || _loc1_)
                                             {
                                                §4!f§ = null;
                                                loop13:
                                                while(_loc1_)
                                                {
                                                   §[O§ = null;
                                                   loop14:
                                                   while(_loc1_)
                                                   {
                                                      §=!>§ = null;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc1_ || _loc1_))
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §2R§ = null;
                                                            §§goto(addr80);
                                                            continue loop13;
                                                         }
                                                         continue loop14;
                                                         addr80:
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop15;
                                                            addr66:
                                                            while(true)
                                                            {
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                     addr59:
                                                                  }
                                                                  §+9§ = "version: Unknown";
                                                                  while(!_loc2_)
                                                                  {
                                                                     §5i§ = "";
                                                                     continue loop4;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop5;
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && §,"0§))
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §6!#§ = null;
                                                         continue loop12;
                                                      }
                                                      addr160:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      public function §,"0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§>X§)
            {
               do
               {
                  §-P§ = new Array(§;!P§);
               }
               while(_loc1_);
               
               if(_loc2_)
               {
                  return;
                  addr54:
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc6_)
         {
            §§push(§>X§);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§#!H§)).§#!H§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || _loc3_)
                        {
                           addr41:
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              _loc4_.§#!H§ = _loc5_;
                           }
                        }
                        if(_loc7_)
                        {
                           §§push(§§pop() % §;!P§);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                           §-P§[_loc3_] = [param1,param2];
                           loop11:
                           while(true)
                           {
                              §§push(param2);
                              loop8:
                              while(true)
                              {
                                 §§push(§!!_§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr168:
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(§!!_§);
                                             if(_loc6_ && §,"0§)
                                             {
                                                continue loop8;
                                             }
                                             §§push(0);
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() < §§pop());
                                             while(_loc7_ || §,"0§)
                                             {
                                             }
                                             §§goto(addr168);
                                          }
                                          addr169:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                addr142:
                                                if(_loc7_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §2]§();
                                                      §§goto(addr142);
                                                   }
                                                   addr149:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                             }
                                             addr151:
                                          }
                                          while(true)
                                          {
                                             addr65:
                                             while(true)
                                             {
                                                §§push(§!!M§);
                                                if(!_loc6_)
                                                {
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!param1)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         if(!(_loc6_ && §,"0§))
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      return;
                                                      addr75:
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                 }
                              }
                           }
                           addr176:
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr168);
               }
               §§goto(addr65);
            }
            §§goto(addr75);
         }
         §§goto(addr176);
      }
      
      public static function § p§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(!(_loc7_ && param1))
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
      
      private static function §2]§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            §§push(§>X§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Boolean(§6!#§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(Boolean(§6!#§.visible));
                                 while(_loc6_)
                                 {
                                    addr304:
                                    if(_loc5_ && §,"0§)
                                    {
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    _loc1_ = §§pop();
                                    loop16:
                                    while(true)
                                    {
                                       addr254:
                                       while(true)
                                       {
                                          _loc2_ = "";
                                          continue loop16;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(§§pop())
                        {
                           §§goto(addr359);
                        }
                        §§goto(addr34);
                     }
                  }
               }
               §§goto(addr399);
            }
         }
         §§goto(addr268);
      }
      
      public static function §-§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            if(§>X§)
            {
               loop0:
               while(true)
               {
                  §6!#§ = new Sprite();
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §6!#§.visible = false;
                        loop3:
                        while(!(_loc8_ && param3))
                        {
                           if(_loc9_)
                           {
                              while(true)
                              {
                                 param1.addChild(§6!#§);
                                 if(!(_loc8_ && §,"0§))
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              var _loc7_:Graphics;
                              (_loc7_ = §6!#§.graphics).beginFill(16777215,0);
                              if(_loc9_)
                              {
                                 _loc7_.drawRect(0,0,1000,1000);
                                 while(true)
                                 {
                                    _loc7_.endFill();
                                    loop6:
                                    while(true)
                                    {
                                       _loc7_.beginFill(16777215,0.4);
                                       while(true)
                                       {
                                          _loc7_.drawRect(param2,param3,param4,param5);
                                          addr444:
                                          addr383:
                                          while(true)
                                          {
                                             _loc7_.endFill();
                                          }
                                          if(!(_loc9_ || param1))
                                          {
                                             continue;
                                          }
                                          §[O§ = new TextField();
                                          loop17:
                                          for(; _loc9_; if(!(_loc9_ || param2))
                                          {
                                             continue;
                                          },§2R§.height = 20,§§goto(addr191))
                                          {
                                             §[O§.x = param2 + param4 / 2;
                                             loop18:
                                             while(true)
                                             {
                                                §[O§.y = param3;
                                                loop19:
                                                while(true)
                                                {
                                                   §[O§.width = param4 / 2;
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §[O§.height = 20;
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §[O§.text = "LOGGER CAPTURING INPUT, F4";
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §[O§.border = true;
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  addr323:
                                                                  if(!(_loc9_ || §,"0§))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §[O§.borderColor = 16711680;
                                                                  loop24:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §6!#§.addChild(§[O§);
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §=!>§ = new TextField();
                                                                        addr299:
                                                                        addr191:
                                                                        while(true)
                                                                        {
                                                                           §=!>§.width = param4;
                                                                           continue loop18;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §2R§.x = param2;
                                                                                 continue loop20;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               addr395:
                                                               while(true)
                                                               {
                                                                  §6!#§.addChild(§4!f§);
                                                                  break loop17;
                                                               }
                                                            }
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §4!f§.height = param5 - 40;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §4!f§.x = param2;
                                                                  addr414:
                                                                  while(true)
                                                                  {
                                                                     §4!f§.y = param3 + 40;
                                                                     addr402:
                                                                     addr436:
                                                                     while(!(_loc8_ && param1))
                                                                     {
                                                                        §4!f§.wordWrap = true;
                                                                        §§goto(addr395);
                                                                        if(!(_loc9_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §6!#§.addChild(§2R§);
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           §;!;§(§;"2§);
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(param6 >= 0)
                                                                                       {
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop37;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 loop31:
                                                                                 while(_loc9_ || param1)
                                                                                 {
                                                                                    §2R§ = new TextField();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §2R§.width = param4;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                             continue loop17;
                                                                                             addr207:
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr281:
                                                                                       while(true)
                                                                                       {
                                                                                          §=!>§.x = param2;
                                                                                          addr267:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §=!>§.y = param3;
                                                                                                   break loop31;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr151:
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr444);
                                                                                 }
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    §6!#§.addChild(§=!>§);
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 addr248:
                                                                                 §§goto(addr267);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr191);
                                                                              }
                                                                           }
                                                                           addr124:
                                                                           §§goto(addr80);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §4!f§ = new TextField();
                                                                        addr432:
                                                                        while(true)
                                                                        {
                                                                           §4!f§.width = param4;
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     break loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(_loc9_ || param2)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr383);
                                             }
                                             §§goto(addr432);
                                          }
                                          §§goto(addr414);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr436);
                              addr58:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public static function §;!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§>X§)
            {
               if(!(_loc3_ && §,"0§))
               {
                  return;
               }
               while(true)
               {
                  addr36:
                  if(!(_loc2_ || §,"0§))
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
               addr117:
            }
            while(true)
            {
               §;"2§ = param1;
               while(true)
               {
                  §6!#§.mouseChildren = §;"2§;
                  while(!_loc3_)
                  {
                     §6!#§.mouseEnabled = §;"2§;
                     loop4:
                     for(; _loc2_; if(_loc3_ && §,"0§)
                     {
                        continue;
                     })
                     {
                        §=!>§.mouseEnabled = §;"2§;
                        loop5:
                        while(true)
                        {
                           §2R§.mouseEnabled = §;"2§;
                           while(true)
                           {
                              §4!f§.mouseEnabled = §;"2§;
                              loop7:
                              while(_loc2_)
                              {
                                 continue loop4;
                                 while(true)
                                 {
                                    §[O§.visible = §;"2§;
                                    if(!_loc3_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr43);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr117);
            }
         }
         §§goto(addr67);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§>X§)
            {
               return;
            }
         }
      }
      
      public static function §10§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §!"=§ = param1;
            while(true)
            {
               § !M§ = param2;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §>P§ = param3;
            if(_loc6_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §&!u§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §+9§ = param1;
         }
      }
   }
}
