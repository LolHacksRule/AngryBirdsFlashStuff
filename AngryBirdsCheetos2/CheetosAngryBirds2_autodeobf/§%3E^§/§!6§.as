package §>^§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!6§
   {
      
      public static const §0I§:Boolean = true;
      
      public static const §%!B§:Boolean = true;
      
      public static const § G§:int = 0;
      
      public static const §#!V§:int = 1;
      
      public static const §'J§:int = 500;
      
      private static var §8!i§:Array = null;
      
      private static var §2H§:Number = 0;
      
      public static var §;v§:int = 112;
      
      public static var §,E§:int = 114;
      
      public static var §=!<§:int = 113;
      
      public static var §6!$§:int = 115;
      
      public static var §7!Z§:Boolean = false;
      
      public static var §8I§:Sprite = null;
      
      private static var §^e§:TextField = null;
      
      private static var §"!V§:TextField = null;
      
      private static var §3!P§:TextField = null;
      
      private static var §1p§:TextField = null;
      
      public static var §'[§:int = -1;
      
      public static var §[J§:String = "version: Unknown";
      
      public static var §+>§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0I§ = true;
            while(true)
            {
               §%!B§ = true;
               addr225:
               while(true)
               {
                  § G§ = 0;
               }
               addr100:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §1p§ = null;
               loop16:
               while(!(_loc2_ && _loc2_))
               {
                  §'[§ = -1;
                  loop17:
                  while(_loc1_)
                  {
                     §[J§ = "version: Unknown";
                     loop18:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop16;
                        }
                        if(!_loc2_)
                        {
                           addr51:
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §+>§ = "";
                                 while(_loc1_)
                                 {
                                    init();
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          return;
                                       }
                                       continue loop17;
                                    }
                                 }
                                 continue;
                              }
                              loop13:
                              while(_loc1_ || _loc1_)
                              {
                                 §"!V§ = null;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §3!P§ = null;
                                       while(true)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr93:
                                             if(_loc2_ && _loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr100);
                                          }
                                          addr141:
                                          while(true)
                                          {
                                             §^e§ = null;
                                             continue loop13;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §7!Z§ = false;
                                             break loop16;
                                          }
                                          break;
                                          §§goto(addr93);
                                       }
                                       §§goto(addr225);
                                       addr154:
                                       addr86:
                                    }
                                    break;
                                    §§goto(addr51);
                                 }
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    §,E§ = Keyboard.F3;
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       §=!<§ = Keyboard.F2;
                                       break loop13;
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §2H§ = 0;
                                          break loop18;
                                       }
                                       break;
                                       §§goto(addr168);
                                    }
                                    addr168:
                                    while(true)
                                    {
                                       §#!V§ = 1;
                                       break loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    §'J§ = 500;
                                    break loop17;
                                 }
                              }
                              while(true)
                              {
                                 §6!$§ = Keyboard.F4;
                                 §§goto(addr154);
                                 §§goto(addr129);
                              }
                              addr129:
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr86);
                     }
                     while(true)
                     {
                        §;v§ = Keyboard.F1;
                        §§goto(addr181);
                     }
                  }
                  while(true)
                  {
                     §8!i§ = null;
                     §§goto(addr193);
                  }
               }
               while(true)
               {
                  if(_loc1_)
                  {
                     §8I§ = null;
                     §§goto(addr141);
                  }
                  break;
                  §§goto(addr74);
               }
               addr74:
               §§goto(addr168);
            }
         }
         §§goto(addr220);
      }
      
      public function §!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§0I§)
            {
               do
               {
                  §8!i§ = new Array(§'J§);
               }
               while(_loc1_ && §!6§);
               
               if(_loc2_)
               {
                  return;
                  addr59:
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(§0I§);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§2H§)).§2H§);
                     if(!(_loc7_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop());
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc7_ && param2))
                           {
                              _loc4_.§2H§ = _loc5_;
                           }
                        }
                     }
                     if(_loc6_)
                     {
                        §§push(§§pop() % §'J§);
                        if(_loc6_ || param1)
                        {
                           addr78:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                           §8!i§[_loc3_] = [param1,param2];
                           loop9:
                           while(true)
                           {
                              §§push(param2);
                              loop6:
                              while(true)
                              {
                                 §§push(§'[§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr172:
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(§'[§);
                                             if(!_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() < §§pop());
                                             loop1:
                                             while(!(_loc7_ && param2))
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§%!B§);
                                                   if(_loc6_ || param2)
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!param1)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         addr107:
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            break;
                                                         }
                                                         addr153:
                                                         while(true)
                                                         {
                                                            addr93:
                                                            while(true)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                      }
                                                      return;
                                                      addr102:
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr172);
                                          }
                                          addr173:
                                       }
                                       while(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop9;
                                                }
                                                §]!6§();
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                           }
                           addr92:
                           addr180:
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr92);
               }
               §§goto(addr94);
            }
            §§goto(addr102);
         }
         §§goto(addr180);
      }
      
      public static function §=,§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(!(_loc7_ && param2))
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(!_loc7_)
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
      
      private static function §]!6§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(§0I§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§8I§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              §§goto(addr369);
                           }
                           addr368:
                        }
                        while(true)
                        {
                           loop6:
                           while(§§pop())
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§'[§);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §3!P§.text = "Current channel: " + §'[§;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§[J§ != null)
                                             {
                                                while(true)
                                                {
                                                   §1p§.text = §[J§;
                                                   addr333:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr330:
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                                loop13:
                                                for(; _loc6_; §§push(false),if(!(_loc6_ || _loc3_))
                                                {
                                                   continue;
                                                },if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                },§§goto(addr368))
                                                {
                                                   _loc1_ = §§pop();
                                                   loop14:
                                                   do
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         if(§^e§.scrollV != §^e§.numLines - int(§^e§.height / (§^e§.textHeight / §^e§.numLines)))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            else
                                                            {
                                                               addr362:
                                                               loop15:
                                                               for(; !(_loc5_ && _loc1_); while(_loc6_ || _loc2_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(_loc6_ || _loc1_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = "";
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr362:
                                                               addr308:
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   while(_loc5_ && _loc2_);
                                                   
                                                   if(!(_loc5_ && §!6§))
                                                   {
                                                      addr58:
                                                      §§push(_loc3_);
                                                      if(_loc6_ || §!6§)
                                                      {
                                                         if(!(_loc5_ && §!6§))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && §!6§))
                                                               {
                                                                  §§push(§'J§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        addr87:
                                                                        if(_loc6_)
                                                                        {
                                                                           §^e§.text = _loc2_;
                                                                           addr92:
                                                                           §§push(_loc1_);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §^e§.scrollV = §^e§.numLines;
                                                                                       addr46:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc1_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr154:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr93:
                                                                                                   §§push(_loc3_ + 1);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         addr106:
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr107:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr58);
                                                                                                         }
                                                                                                         addr141:
                                                                                                         §§push(_loc2_);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() + (§8!i§[_loc4_][0] + "\n"));
                                                                                                         }
                                                                                                         _loc2_ = §§pop();
                                                                                                         §§goto(addr154);
                                                                                                      }
                                                                                                      addr211:
                                                                                                      _loc4_ = §§pop();
                                                                                                      addr160:
                                                                                                      addr212:
                                                                                                      if(§8!i§[_loc4_] != null)
                                                                                                      {
                                                                                                         addr163:
                                                                                                         §§push(§'[§ < 0);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr170:
                                                                                                               §§pop();
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§8!i§);
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!(_loc5_ && §!6§))
                                                                                                                     {
                                                                                                                        addr132:
                                                                                                                        §§push(§§pop()[§§pop()][1] == §'[§);
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           addr139:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr141);
                                                                                                                           }
                                                                                                                           §§goto(addr93);
                                                                                                                        }
                                                                                                                        §§goto(addr170);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr160);
                                                                                                               }
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                            §§goto(addr139);
                                                                                                         }
                                                                                                         §§goto(addr170);
                                                                                                      }
                                                                                                      §§goto(addr93);
                                                                                                   }
                                                                                                   §§goto(addr106);
                                                                                                }
                                                                                                §§goto(addr163);
                                                                                             }
                                                                                             break loop6;
                                                                                          }
                                                                                          §§goto(addr107);
                                                                                       }
                                                                                       §§goto(addr92);
                                                                                    }
                                                                                    §§goto(addr87);
                                                                                 }
                                                                                 §§goto(addr46);
                                                                              }
                                                                              break loop6;
                                                                           }
                                                                           §§goto(addr132);
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§push(§2H§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr182:
                                                                        §§push(§§pop() + _loc3_);
                                                                        §§push(1);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           addr202:
                                                                           §§push((§§pop() + §§pop()) % 500);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr210:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   else
                                                   {
                                                      addr369:
                                                      §§goto(addr389);
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §3!P§.text = "Current channel: ALL";
                                    }
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr362);
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
               _loc1_ = §§pop();
               §§goto(addr308);
            }
         }
         addr389:
         while(!(_loc5_ && _loc2_))
         {
            §§push(Boolean(§8I§.visible));
         }
      }
      
      public static function §7K§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(§0I§)
            {
               loop0:
               while(true)
               {
                  §8I§ = new Sprite();
                  while(_loc9_ || §!6§)
                  {
                     loop2:
                     while(true)
                     {
                        §8I§.visible = false;
                        while(!_loc8_)
                        {
                           param1.addChild(§8I§);
                           if(_loc8_)
                           {
                              continue;
                           }
                           if(!(_loc9_ || param3))
                           {
                              break loop2;
                           }
                           while(false)
                           {
                              continue loop2;
                           }
                           var _loc7_:Graphics;
                           (_loc7_ = §8I§.graphics).beginFill(16777215,0);
                           if(_loc9_)
                           {
                              _loc7_.drawRect(0,0,1000,1000);
                              loop5:
                              while(true)
                              {
                                 _loc7_.endFill();
                                 loop6:
                                 while(true)
                                 {
                                    _loc7_.beginFill(16777215,0.4);
                                    loop7:
                                    while(true)
                                    {
                                       _loc7_.drawRect(param2,param3,param4,param5);
                                       loop8:
                                       while(true)
                                       {
                                          _loc7_.endFill();
                                          loop9:
                                          while(true)
                                          {
                                             §^e§ = new TextField();
                                             while(true)
                                             {
                                                §^e§.width = param4;
                                                while(!_loc8_)
                                                {
                                                   §^e§.height = param5 - 40;
                                                   continue loop6;
                                                   loop14:
                                                   while(_loc9_ || §!6§)
                                                   {
                                                      continue loop5;
                                                      addr209:
                                                      if(_loc9_ || param2)
                                                      {
                                                         §1p§.height = 20;
                                                         loop34:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               addr181:
                                                               if(!(_loc9_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               §1p§.x = param2;
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               §1p§.width = param4;
                                                               loop33:
                                                               do
                                                               {
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     addr200:
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr209);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §"!V§.x = param2 + param4 / 2;
                                                                              addr361:
                                                                              while(true)
                                                                              {
                                                                                 §"!V§.y = param3;
                                                                                 addr352:
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §"!V§.width = param4 / 2;
                                                                                    addr347:
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §"!V§.height = 20;
                                                                                       while(true)
                                                                                       {
                                                                                          §"!V§.text = "LOGGER CAPTURING INPUT, F4";
                                                                                          addr328:
                                                                                          addr372:
                                                                                          while(_loc9_ || param3)
                                                                                          {
                                                                                             §"!V§.border = true;
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §"!V§.borderColor = 16711680;
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §8I§.addChild(§"!V§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §3!P§ = new TextField();
                                                                                                      addr304:
                                                                                                      while(!_loc8_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §3!P§.width = param4;
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr109:
                                                                                                      continue loop24;
                                                                                                      if(!(_loc8_ && param3))
                                                                                                      {
                                                                                                         param1.addChildAt(§8I§,param6);
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr150:
                                                                                          while(true)
                                                                                          {
                                                                                             §"!V§ = new TextField();
                                                                                             continue loop17;
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                          while(!(_loc8_ && param1))
                                                                                          {
                                                                                             §8I§.addChild(§1p§);
                                                                                             for(; _loc9_; if(_loc8_ && §!6§)
                                                                                             {
                                                                                                continue;
                                                                                             },if(!_loc9_)
                                                                                             {
                                                                                                continue loop34;
                                                                                             },§§goto(addr109))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §+F§(§7!Z§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(param6 >= 0)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         param1.addChild(§8I§);
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                addr405:
                                                                                                while(true)
                                                                                                {
                                                                                                   §^e§.y = param3 + 40;
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                §8I§.addChild(§^e§);
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr260:
                                                                                 loop29:
                                                                                 while(_loc9_ || param3)
                                                                                 {
                                                                                    §3!P§.y = param3;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || param2)
                                                                        {
                                                                           addr291:
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              §3!P§.height = 20;
                                                                              break loop34;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr347);
                                                                        §§goto(addr200);
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr244);
                                                                  §§goto(addr361);
                                                               }
                                                               while(_loc8_ && param1);
                                                               
                                                               §§goto(addr70);
                                                               continue loop34;
                                                            }
                                                         }
                                                         continue loop8;
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
                           §§goto(addr352);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public static function §+F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!§0I§)
            {
               if(!(_loc2_ && param1))
               {
                  return;
               }
               while(true)
               {
               }
               addr123:
            }
            while(true)
            {
               §7!Z§ = param1;
               loop2:
               while(true)
               {
                  §8I§.mouseChildren = §7!Z§;
                  while(true)
                  {
                     §8I§.mouseEnabled = §7!Z§;
                     continue loop2;
                     loop8:
                     while(!(_loc2_ && §!6§))
                     {
                        §"!V§.visible = §7!Z§;
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              return;
                              addr76:
                           }
                           while(!(_loc2_ && _loc3_))
                           {
                              while(true)
                              {
                                 §^e§.mouseEnabled = §7!Z§;
                                 continue loop8;
                              }
                           }
                           while(!_loc2_)
                           {
                              §1p§.mouseEnabled = §7!Z§;
                              §§goto(addr64);
                           }
                           addr64:
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr123);
            }
         }
         §§goto(addr71);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§0I§)
            {
               return;
            }
         }
      }
      
      public static function §[z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §;v§ = param1;
            while(true)
            {
               §=!<§ = param2;
               while(_loc6_ || §!6§)
               {
                  §,E§ = param3;
                  if(_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public static function §,!;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §[J§ = param1;
         }
      }
   }
}
