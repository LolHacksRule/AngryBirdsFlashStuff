package §0N§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §2!@§
   {
      
      public static const §'!b§:Boolean = true;
      
      public static const §`2§:Boolean = true;
      
      public static const §]!G§:int = 0;
      
      public static const §;"=§:int = 1;
      
      public static const §0u§:int = 500;
      
      private static var §^!H§:Array = null;
      
      private static var §6"E§:Number = 0;
      
      public static var §[!+§:int = 112;
      
      public static var §'!>§:int = 114;
      
      public static var §]!7§:int = 113;
      
      public static var §7!"§:int = 115;
      
      public static var §^!w§:Boolean = false;
      
      public static var §["$§:Sprite = null;
      
      private static var §,W§:TextField = null;
      
      private static var §+?§:TextField = null;
      
      private static var §>"1§:TextField = null;
      
      private static var §%!§:TextField = null;
      
      public static var §#H§:int = -1;
      
      public static var §'!S§:String = "version: Unknown";
      
      public static var §>C§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!b§ = true;
            loop0:
            while(true)
            {
               §`2§ = true;
               loop1:
               while(true)
               {
                  §]!G§ = 0;
                  loop2:
                  while(true)
                  {
                     §;"=§ = 1;
                     while(true)
                     {
                        §0u§ = 500;
                        addr219:
                        while(!_loc1_)
                        {
                           §^!H§ = null;
                           continue loop2;
                        }
                        continue loop1;
                        addr133:
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        §+?§ = null;
                        loop14:
                        for(; _loc2_; if(!(_loc2_ || §2!@§))
                        {
                           continue;
                        },§§goto(addr48))
                        {
                           §>"1§ = null;
                           loop15:
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §%!§ = null;
                                    loop17:
                                    while(_loc2_)
                                    {
                                       §#H§ = -1;
                                       loop18:
                                       while(_loc2_ || §2!@§)
                                       {
                                          §'!S§ = "version: Unknown";
                                          loop19:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop18;
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             §>C§ = "";
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr55:
                                                   if(_loc1_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop17;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr163:
                                                   if(!(_loc2_ || _loc1_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §^!w§ = false;
                                                   while(true)
                                                   {
                                                      §["$§ = null;
                                                      break loop18;
                                                   }
                                                }
                                                break;
                                                §§goto(addr55);
                                             }
                                             while(true)
                                             {
                                                §]!7§ = Keyboard.F2;
                                                break loop19;
                                                §§goto(addr156);
                                             }
                                             addr156:
                                             if(!(_loc1_ && §2!@§))
                                             {
                                                continue loop14;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §,W§ = null;
                                          break loop15;
                                          §§goto(addr81);
                                       }
                                       addr81:
                                    }
                                    continue loop15;
                                 }
                                 return;
                                 addr48:
                                 addr104:
                              }
                              §§goto(addr150);
                           }
                           while(_loc2_ || _loc1_)
                           {
                              §§goto(addr133);
                           }
                           while(_loc2_)
                           {
                              §'!>§ = Keyboard.F3;
                              §§goto(addr189);
                              §§goto(addr126);
                           }
                           addr126:
                           while(true)
                           {
                              §[!+§ = Keyboard.F1;
                              §§goto(addr195);
                           }
                           addr195:
                        }
                        §§goto(addr219);
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §2!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§'!b§)
            {
               if(!_loc1_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            §§goto(addr57);
         }
         addr57:
         while(true)
         {
            §^!H§ = new Array(§0u§);
            if(_loc2_)
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
         if(!(_loc6_ && param1))
         {
            §§push(§'!b§);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§6"E§)).§6"E§);
                     if(!(_loc6_ && §2!@§))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr46:
                           §§push(§§pop());
                           if(_loc7_ || param2)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_ || _loc3_)
                           {
                              _loc4_.§6"E§ = _loc5_;
                           }
                        }
                        if(_loc7_)
                        {
                           §§push(§§pop() % §0u§);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(_loc7_ || §2!@§)
                        {
                           §^!H§[_loc3_] = [param1,param2];
                           loop9:
                           while(true)
                           {
                              §§push(param2);
                              loop10:
                              while(true)
                              {
                                 §§push(§#H§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr166:
                                          §§pop();
                                          loop3:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop9;
                                             }
                                             §§push(§#H§);
                                             if(_loc6_)
                                             {
                                                continue loop10;
                                             }
                                             §§push(0);
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop11;
                                             }
                                             §§push(§§pop() < §§pop());
                                             while(true)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr166);
                                                }
                                             }
                                             addr148:
                                             if(!(_loc6_ && §2!@§))
                                             {
                                                while(true)
                                                {
                                                   §#!p§();
                                                   §§goto(addr148);
                                                }
                                                addr155:
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §§push(§`2§);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(param1)
                                                                  {
                                                                     addr115:
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr115);
                                                         }
                                                         return;
                                                         addr103:
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                }
                                             }
                                             addr132:
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr148);
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                 }
                              }
                           }
                           addr93:
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr155);
               }
               §§goto(addr95);
            }
            §§goto(addr103);
         }
         §§goto(addr93);
      }
      
      public static function §-!h§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(_loc7_ || param1)
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(_loc7_)
               {
                  §§push(§§pop() + "]: ");
                  if(_loc7_ || §2!@§)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §#!p§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            §§push(§'!b§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§["$§));
                     if(!(_loc6_ && §2!@§))
                     {
                        if(§§pop())
                        {
                           addr404:
                           while(true)
                           {
                              §§pop();
                              addr405:
                              while(true)
                              {
                                 §§push(Boolean(§["$§.visible));
                              }
                           }
                           addr404:
                        }
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(§§pop())
                           {
                              loop4:
                              while(_loc5_ || §2!@§)
                              {
                                 §§push(§#H§);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §>"1§.text = "Current channel: " + §#H§;
                                       loop6:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(§'!S§ != null)
                                             {
                                                continue loop6;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(true);
                                                loop11:
                                                while(!(_loc6_ && _loc1_))
                                                {
                                                   _loc1_ = §§pop();
                                                   loop12:
                                                   for(; _loc5_; while(!(_loc6_ && §2!@§))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr260);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr381:
                                                      }
                                                      §§goto(addr263);
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         if(§,W§.scrollV != §,W§.numLines - int(§,W§.height / (§,W§.textHeight / §,W§.numLines)))
                                                         {
                                                            while(_loc5_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               if(_loc6_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue loop1;
                                                                  addr350:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§0u§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              loop24:
                                                                              while(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §,W§.text = _loc2_;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §,W§.scrollV = §,W§.numLines;
                                                                                                continue;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       addr211:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop24;
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + (§^!H§[_loc4_][0] + "\n"));
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                       }
                                                                                       §§goto(addr180);
                                                                                    }
                                                                                    §§goto(addr100);
                                                                                    §§goto(addr153);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§^!H§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc5_ || §2!@§)
                                                                                       {
                                                                                          §§goto(addr153);
                                                                                          §§push(§§pop()[§§pop()][1] == §#H§);
                                                                                       }
                                                                                       §§goto(addr184);
                                                                                    }
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§6"E§);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr228);
                                                                                 §§push(§§pop() + _loc3_);
                                                                              }
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr260:
                                                         while(true)
                                                         {
                                                            _loc2_ = "";
                                                            addr263:
                                                            while(!(_loc6_ && _loc2_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §>"1§.text = "Current channel: ALL";
                                       §§goto(addr381);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                     §§goto(addr404);
                  }
               }
               §§goto(addr408);
            }
         }
         §§goto(addr333);
      }
      
      public static function §0!t§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(§'!b§)
            {
               loop0:
               while(true)
               {
                  §["$§ = new Sprite();
                  while(true)
                  {
                     while(true)
                     {
                        §["$§.visible = false;
                        do
                        {
                           param1.addChild(§["$§);
                        }
                        while(!(_loc8_ || §2!@§));
                        
                        if(_loc9_ && param3)
                        {
                           break;
                        }
                        if(_loc9_ && param1)
                        {
                           continue loop0;
                        }
                        if(_loc8_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           var _loc7_:Graphics;
                           (_loc7_ = §["$§.graphics).beginFill(16777215,0);
                           if(_loc8_)
                           {
                              _loc7_.drawRect(0,0,1000,1000);
                              _loc7_.endFill();
                              _loc7_.beginFill(16777215,0.4);
                              _loc7_.drawRect(param2,param3,param4,param5);
                              _loc7_.endFill();
                              addr455:
                              addr428:
                              addr434:
                              if(_loc8_)
                              {
                                 §,W§ = new TextField();
                                 §,W§.width = param4;
                                 §,W§.height = param5 - 40;
                                 §,W§.x = param2;
                                 §,W§.y = param3 + 40;
                                 §,W§.wordWrap = true;
                                 addr396:
                                 addr408:
                                 addr414:
                                 addr391:
                                 if(!(_loc9_ && §2!@§))
                                 {
                                    if(_loc8_ || §2!@§)
                                    {
                                       §["$§.addChild(§,W§);
                                       §+?§ = new TextField();
                                       §+?§.x = param2 + param4 / 2;
                                       addr360:
                                       if(_loc8_)
                                       {
                                          §+?§.y = param3;
                                          §+?§.width = param4 / 2;
                                          addr331:
                                          addr343:
                                          if(_loc8_ || §2!@§)
                                          {
                                             §+?§.height = 20;
                                             addr313:
                                             if(!_loc9_)
                                             {
                                                if(!(_loc9_ && param3))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §+?§.text = "LOGGER CAPTURING INPUT, F4";
                                                      addr299:
                                                      if(_loc8_ || §2!@§)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §+?§.border = true;
                                                            §+?§.borderColor = 16711680;
                                                            §["$§.addChild(§+?§);
                                                            §>"1§ = new TextField();
                                                            addr294:
                                                            addr284:
                                                            addr289:
                                                            if(!_loc9_)
                                                            {
                                                               §>"1§.width = param4;
                                                               addr269:
                                                               if(!_loc9_)
                                                               {
                                                                  §>"1§.height = 20;
                                                                  addr262:
                                                                  if(_loc8_)
                                                                  {
                                                                     §>"1§.x = param2;
                                                                     addr255:
                                                                     if(!_loc9_)
                                                                     {
                                                                        §>"1§.y = param3;
                                                                        addr243:
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §["$§.addChild(§>"1§);
                                                                           §%!§ = new TextField();
                                                                           addr238:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §%!§.width = param4;
                                                                              addr196:
                                                                              if(_loc8_ || param3)
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    §%!§.height = 20;
                                                                                    addr180:
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §%!§.x = param2;
                                                                                             §%!§.y = param3 + 20;
                                                                                             addr154:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §["$§.addChild(§%!§);
                                                                                                      addr131:
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_ || §2!@§)
                                                                                                            {
                                                                                                               §]W§(§^!w§);
                                                                                                               addr119:
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  if(param6 >= 0)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        param1.addChildAt(§["$§,param6);
                                                                                                                     }
                                                                                                                     addr108:
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§goto(addr262);
                                                                                                                           }
                                                                                                                           §§goto(addr74);
                                                                                                                        }
                                                                                                                        §§goto(addr255);
                                                                                                                     }
                                                                                                                     §§goto(addr119);
                                                                                                                  }
                                                                                                                  param1.addChild(§["$§);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc8_ || param2)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§goto(addr238);
                                                                                                                           }
                                                                                                                           addr74:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr180);
                                                                                                                     }
                                                                                                                     §§goto(addr131);
                                                                                                                  }
                                                                                                                  §§goto(addr108);
                                                                                                               }
                                                                                                               §§goto(addr196);
                                                                                                            }
                                                                                                            §§goto(addr294);
                                                                                                         }
                                                                                                         §§goto(addr238);
                                                                                                      }
                                                                                                      §§goto(addr154);
                                                                                                   }
                                                                                                   §§goto(addr396);
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             addr175:
                                                                                             §§goto(addr175);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                           §§goto(addr455);
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr414);
                                             }
                                             §§goto(addr391);
                                          }
                                          §§goto(addr428);
                                       }
                                       addr365:
                                       §§goto(addr365);
                                    }
                                    §§goto(addr434);
                                 }
                                 addr403:
                                 §§goto(addr403);
                                 addr420:
                              }
                              addr448:
                              §§goto(addr448);
                           }
                           §§goto(addr420);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public static function §]W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§'!b§)
            {
               loop0:
               while(true)
               {
                  §^!w§ = param1;
                  loop1:
                  while(true)
                  {
                     §["$§.mouseChildren = §^!w§;
                     while(true)
                     {
                        §["$§.mouseEnabled = §^!w§;
                        while(!(_loc2_ && §2!@§))
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §>"1§.mouseEnabled = §^!w§;
                           loop4:
                           while(true)
                           {
                              §%!§.mouseEnabled = §^!w§;
                              do
                              {
                                 §,W§.mouseEnabled = §^!w§;
                                 continue loop4;
                              }
                              while(!_loc3_);
                              
                              if(_loc3_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr117);
         }
         §§goto(addr118);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§'!b§)
            {
               return;
            }
         }
      }
      
      public static function §3!-§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §[!+§ = param1;
         }
         while(true)
         {
            §]!7§ = param2;
            while(!(_loc6_ && §2!@§))
            {
               §'!>§ = param3;
               if(!_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      public static function § G§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §'!S§ = param1;
         }
      }
   }
}
